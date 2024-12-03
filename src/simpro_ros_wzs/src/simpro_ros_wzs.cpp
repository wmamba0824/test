#include <iostream>
#include"ros/ros.h"
#include "MsgReceiver.h"
#include "SimProType.h"

#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <cstring>
#include <unistd.h>
#include <thread>
#include <math.h>
#include <mutex>
#include <vector>
#include <semaphore.h>
#include <list>

using namespace std;

#define adCtrlEgo      true                                                           // AD是否控制主车, true:AD控制主车 false:AD不控制主车
char              *msgBuffer;                                                         //一帧数据的buffer
int                msgBufferAllocSize  = 1024 * 40;                                   //对应的已申请空间
int                msgBufferUsedSize   = 0;                                           //对应的已使用空间

bool              bScenarioFinished    = true;                                        //当前测试场景是否结束场景
static const unsigned int scOwnId      = 1;                                           // ID of own vehicle

#define MAX_OBJECT_CNT     20                                                     //最大接收物体个数

// globally store nearest object
typedef struct{
    int                   g_mil_object_num;                                           //当前物体数量
    S_SP_MIL_OBJECT_STATE mNearestObject[MAX_OBJECT_CNT];
    S_SP_MIL_EGO_STATE    mOwnObject;
    std::mutex            mMutex;                                                     //互斥量
    double                velo;                                                       //主车速度
    bool                  isVeloInit;                                                 //主车初速度是否已更新
    std::list<bool>       isNewMsgList;                                               //是否收到新消息
}ObjData;
ObjData objData;

//用户自定义信号
#define CUSTOMSIGNAL                    0

//用信号量实现帧同步
sem_t sem;                                                                           //用于线程同步的信号量


void generatePkgCsvData()
{
    //生成D_SP_PKG_ID_CSV_DATA
    S_SP_MSG_ENTRY_HDR *pkghead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkghead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkghead->u4DataSize         = sizeof(S_SP_CSV_DATA);
    pkghead->u4ElementSize      = sizeof(S_SP_CSV_DATA);
    pkghead->u2PkgId            = D_SP_PKG_ID_CSV_DATA;

    //填充PKG的body
    S_SP_CSV_DATA *pkgBody      = (S_SP_CSV_DATA *)(pkghead + 1);

    //测试数据
    static double testData = 0.0;
    static int ad_status = 0;
    testData += 0.1;
    ad_status++;

    pkgBody->u4AccelTgt         = testData;                                                    //期望加速度(m/s²)
    pkgBody->u4SteeringWheel    = testData;                                                    //期望方向盘转角(rad)
    pkgBody->u4ADStatus         = ad_status;                                                   //AD算法状态

    msgBufferUsedSize           += pkghead->u4HeaderSize + pkghead->u4DataSize;                //更新msgBuffer的已使用空间
}

void generatePkgEgoData1()
{
    bool bLeftLightStatus                = false;                                             //左转向灯状态
    bool bRinghtLightStatus              = false;                                             //右转向灯状态

    //生成S_SP_MIL_EGO_STATE
    S_SP_MSG_ENTRY_HDR *pkghead          = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkghead->u4HeaderSize                = sizeof(S_SP_MSG_ENTRY_HDR);
    pkghead->u4DataSize                  = sizeof(S_SP_MIL_EGO_STATE);
    pkghead->u4ElementSize               = sizeof(S_SP_MIL_EGO_STATE);
    pkghead->u2PkgId                     = D_SP_MIL_PKG_ID_EGO_DATA;

    //填充PKG body
    S_SP_MIL_EGO_STATE *pkgBody          = (S_SP_MIL_EGO_STATE *)(pkghead + 1);

    //线速度与角速度
    pkgBody->sObjectState.sSpeed.u8X     = 0.0;                                               //Ego->getDu();
    pkgBody->sObjectState.sSpeed.u8Y     = 0.0;                                               //Ego->getDv();
    pkgBody->sObjectState.sSpeed.u8Z     = 0.0;
    pkgBody->sObjectState.sSpeed.u4H     = 0.0;                                               //Ego->getDYaw();//航向角的角速度
    pkgBody->sObjectState.sSpeed.u4P     = 0.0;
    pkgBody->sObjectState.sSpeed.u4R     = 0.0;
    pkgBody->sObjectState.sSpeed.u1Type  = D_SP_COORDINATE_TYPE_TRACK;

    //线加速度与角加速度
    pkgBody->sObjectState.sAccel.u8X     = 0.0;
    pkgBody->sObjectState.sAccel.u8Y     = 0.0;
    pkgBody->sObjectState.sAccel.u8Z     = 0.0;
    pkgBody->sObjectState.sAccel.u4H     = 0.0;
    pkgBody->sObjectState.sAccel.u4P     = 0.0;
    pkgBody->sObjectState.sAccel.u4R     = 0.0;
    pkgBody->sObjectState.sAccel.u1Type  = D_SP_COORDINATE_TYPE_TRACK;

    pkgBody->sObjectState.sGeo.u4DimX    = 0.0;
    pkgBody->sObjectState.sGeo.u4DimY    = 0.0;
    pkgBody->sObjectState.sGeo.u4DimZ    = 0.0;
    pkgBody->sObjectState.sGeo.u4OffX    = 0.0;
    pkgBody->sObjectState.sGeo.u4OffY    = 0.0;
    pkgBody->sObjectState.sGeo.u4OffZ    = 0.0;

    // 世界坐标
    pkgBody->sObjectState.sPos.u8X       = -2110;
    pkgBody->sObjectState.sPos.u8Y       = -5296;
    pkgBody->sObjectState.sPos.u8Z       = 12;
    pkgBody->sObjectState.sPos.u4H       = 1.6;
    pkgBody->sObjectState.sPos.u4P       = 0.0;
    pkgBody->sObjectState.sPos.u4R       = 0.0;
    pkgBody->sObjectState.sPos.u1Type    = D_SP_COORDINATE_TYPE_GEO;

    pkgBody->u4LightMask                 = 0;

    //如果左转向灯亮
    if (bLeftLightStatus)
    {
        pkgBody->u4LightMask             = pkgBody->u4LightMask | D_SP_VEHICLE_LIGHT_INDICATOR_L;
    }

    //如果右转向灯亮
    if (bRinghtLightStatus)
    {
        pkgBody->u4LightMask             = pkgBody->u4LightMask | D_SP_VEHICLE_LIGHT_INDICATOR_R;
    }

    // pkgBody->u4WheelSpeedFL           = ;
    // pkgBody->u4WheelSpeedFR           = ;
    // pkgBody->u4WheelSpeedRL           = ;
    // pkgBody->u4WheelSpeedRR           = ;
    // pkgBody->u4MasterCylinderPressure = ;

    msgBufferUsedSize                   += pkghead->u4HeaderSize + pkghead->u4DataSize;     //更新msgBuffer的已使用空间
}

void generateMsg()
{
    //帧号计数
    static int frameCount = 0;
    frameCount++;

    //清空msgBuffer
    memset(msgBuffer, 0, msgBufferAllocSize);
    msgBufferUsedSize     = 0;                                                                 //更新msgBuffer的已使用空间

    //生成Msg头部
    S_SP_MSG_HDR *msgHead = (S_SP_MSG_HDR *) msgBuffer;

    //填充Msg头部
    // 此处缺msg 数据部分大小，待全部所需要的 MSG生成完毕之后，再更新一帧MSG的大小，见函数最后一行
    msgHead->u8SimTime          = 1.2;                                                               //仿真时间
    msgHead->u4HeaderSize       = sizeof(S_SP_MSG_HDR);                                              //Msg头部大小
    msgHead->u4FrameNo          = frameCount;                                                        //帧号
    // msgHead->u1MajorVersion     = D_SP_COSIMU_MAJOR_VERSION;                                         //联仿接口主版本号
    // msgHead->u1MinorVersion     = D_SP_COSIMU_MINOR_VERSION;                                         //联仿接口次版本号
    // msgHead->u1Sender           = D_SP_SENDER_ADS;                                                   //发送方
    msgBufferUsedSize           += sizeof(S_SP_MSG_HDR);                                             //更新msgBuffer的已使用空间

    //生成D_SP_PKG_ID_START_FRAME
    S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkgHead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkgHead->u4DataSize         = 0;
    pkgHead->u4ElementSize      = 0;
    pkgHead->u2PkgId            = D_SP_PKG_ID_START_FRAME;

    msgBufferUsedSize          += pkgHead->u4HeaderSize + pkgHead->u4DataSize;                 //更新msgBuffer的已使用空间

    if (bScenarioFinished)                                                                     //如果当前测试场景结束，发送trigger
    {
        //生成D_SP_PKG_ID_SYNC
        S_SP_MSG_ENTRY_HDR *pkgTrigger = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        //填充PKG头部
        pkgTrigger->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgTrigger->u4DataSize         = sizeof(S_SP_SYNC);
        pkgTrigger->u4ElementSize      = sizeof(S_SP_SYNC);
        pkgTrigger->u2PkgId            = D_SP_PKG_ID_SYNC;

        //填充PKG的body
        S_SP_SYNC *syncTrigger         = (S_SP_SYNC *)(pkgTrigger + 1);
        syncTrigger->u4CmdMask         = D_SP_SYNC_CMD_TRIGGER;

        msgBufferUsedSize              += pkgTrigger->u4HeaderSize + pkgTrigger->u4DataSize;     //更新msgBuffer的已使用空间

        bScenarioFinished              = false; // false
        // std::cout << "D_SP_SYNC_CMD_TRIGGER frameNo = " << frameCount << std::endl;
    }
    else //发送其他pkg
    {
        // 非控制在环
        generatePkgEgoData1();

        // // //生成csv数据
        // generatePkgCsvData();
    }

    //生成D_SP_PKG_ID_END_FRAME
    S_SP_MSG_ENTRY_HDR* pkgEnd = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkgEnd->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkgEnd->u4DataSize         = 0;
    pkgEnd->u4ElementSize      = 0;
    pkgEnd->u2PkgId            = D_SP_PKG_ID_END_FRAME;

    msgBufferUsedSize         += pkgEnd->u4HeaderSize + pkgEnd->u4DataSize;                      //更新msgBuffer的已使用空间

    msgHead->u4DataSize        = msgBufferUsedSize - msgHead->u4HeaderSize;                      //Msg数据部分大小
}


/**
 * 解析数据包
 */
void parsePackage(char *pkgBuff, unsigned long int size)
{
    if (nullptr == pkgBuff)
    {
        return;
    }

    //解析数据
    S_SP_MSG_HDR *msgHead    = (S_SP_MSG_HDR *)pkgBuff;                                                     //Msg的头部指针

    static uint32_t lastRecvFrameNo = 0;                                                                    //上一次接收到的帧号
    bool isNewMsg = ((lastRecvFrameNo == msgHead->u4FrameNo) && (msgHead->u4FrameNo != 1)) ? false : true;  //是否收到新消息
    lastRecvFrameNo = msgHead->u4FrameNo;

    char *currentPkg = pkgBuff + msgHead->u4HeaderSize;                                                     //当前Pkg的头部指针

    //第一帧为D_SP_PKG_ID_START_FRAME
    S_SP_MSG_ENTRY_HDR *startPkgHead = (S_SP_MSG_ENTRY_HDR *)currentPkg;
    if (startPkgHead->u2PkgId != D_SP_PKG_ID_START_FRAME)
    {
        return;
    }

    currentPkg += startPkgHead->u4HeaderSize + startPkgHead->u4DataSize;                                    //指向下一个pkg，下一个pkg就是正式的包含数据的pkg

    //AD端内部自定义数据结构

    S_SP_MIL_OBJECT_STATE mNearestObject[MAX_OBJECT_CNT] = {0};
    S_SP_MIL_EGO_STATE    mOwnObject{0};
    S_SP_PARKINGSPACE     ParkingSpace{0};

    int _g_mil_object_num = 0;

    while (1)
    {
        S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)currentPkg;                                      //Pkg的头部指针
        if (pkgHead->u2PkgId == D_SP_MIL_PKG_ID_EGO_DATA)                                                    //S_SP_MIL_EGO_STATE
        {
            S_SP_MIL_EGO_STATE *pkgData = (S_SP_MIL_EGO_STATE *)(currentPkg + pkgHead->u4HeaderSize);        //数据部分指针

            //1.解析数据
            int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize;                                   //元素数量
            for (int i = 0; i < elementNum; i++)                                                             //解析每个元素
            {
                memcpy( &mOwnObject, pkgData, sizeof( S_SP_MIL_EGO_STATE ) );
                pkgData = (S_SP_MIL_EGO_STATE *)((char *)pkgData + pkgHead->u4ElementSize);
            }

            //更新主车初速度
            if (objData.isVeloInit == false)
            {
                objData.velo = sqrt(mOwnObject.sObjectState.sSpeed.u8X * mOwnObject.sObjectState.sSpeed.u8X + mOwnObject.sObjectState.sSpeed.u8Y * mOwnObject.sObjectState.sSpeed.u8Y);
                objData.isVeloInit = true;
            }

            //2.AD端内部处理
            //AD TODO
        }
        else if (pkgHead->u2PkgId == D_SP_MIL_PKG_ID_OBJECT_DATA)                                            //S_SP_MIL_OBJECT_STATE
        {
            S_SP_MIL_OBJECT_STATE *pkgData = (S_SP_MIL_OBJECT_STATE *)(currentPkg + pkgHead->u4HeaderSize);  //数据部分指针

            //1.解析数据
            int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize;                                   //元素数量

            //扩大接收个数，至多20个
            int count = 0;

            for (count = 0; count < elementNum && count < MAX_OBJECT_CNT; count++)                                           //解析每个元素
            {
                // mNearestObject 是一个数组，+count实际上是在处理这个数组中的第count个元素
                memcpy( mNearestObject + count, pkgData, sizeof( S_SP_MIL_OBJECT_STATE ) );

                pkgData = (S_SP_MIL_OBJECT_STATE *)((char *)pkgData + pkgHead->u4ElementSize);
            }

            _g_mil_object_num = count;

            //2.AD端内部处理
            //AD TODO
        }
        else if (pkgHead->u2PkgId == D_SP_PKG_ID_SYNC)
        {
            S_SP_SYNC *pkgData = (S_SP_SYNC *)(currentPkg + pkgHead->u4HeaderSize);                          //数据部分指针
            //1.解析数据
            if (pkgData->u4CmdMask & D_SP_SYNC_CMD_FINISH_CURRENT)                                           //最低位为1代表当前测试场景结束
            {
                bScenarioFinished  = true;                                                                   //收到仿真器发的结束信号
                objData.isVeloInit = false;                                                                  //置为false后下一个场景才可以更新初速度
            }

            //2.AD端内部处理
            //AD TODO
        }
        else if (pkgHead->u2PkgId == D_SP_PKG_ID_END_FRAME)                                                  //如果是最后一个Pkg
        {
            break;
        }
        currentPkg += pkgHead->u4HeaderSize + pkgHead->u4DataSize;                                           //指向下一个pkg
    }

    //更新数据到objData
    objData.mMutex.lock();
    objData.mOwnObject     = mOwnObject;
    objData.g_mil_object_num = _g_mil_object_num;
    memcpy(objData.mNearestObject, mNearestObject, objData.g_mil_object_num * sizeof(S_SP_MIL_OBJECT_STATE));
    objData.isNewMsgList.push_back(isNewMsg);
    objData.mMutex.unlock();

    //把指定的信号量 sem 的值加 1，通知主线程
    sem_post(&sem);

    return;
}



int main(int argc, char **argv)
{
    cout << "simpro simulation starting" << endl;
    ros::init(argc, argv, "simpro_ros_wzs");
    ros::NodeHandle n;
    
    // 信号量初始化
    int ret = sem_init(&sem, 0, 0);
    if (ret == -1)
    {
        perror("sem_init failed \n");
        return 1;
    }

    MsgReceiver msgReceiver;
    msgReceiver.setCallback(parsePackage); //注册解析消息的回调函数

    bool initSocketRet = msgReceiver.initSocket(8000); //socket初始化，返回是否成功

    if (!initSocketRet)
    {
        return 1;
    }

    // reset the information about the nearest and own object
    memset( &(objData.mNearestObject), 0, sizeof( S_SP_MIL_OBJECT_STATE ) );
    memset( &(objData.mOwnObject), 0, sizeof( S_SP_MIL_EGO_STATE ) );
    objData.velo = 0.0;
    objData.isVeloInit = false;
    objData.isNewMsgList.push_back(true);

    msgBuffer = (char *)malloc(msgBufferAllocSize);                                                                                               //一帧数据的buffer
    if (!msgBuffer)                                                                                                                               //失败
    {
        //std::cout << "Error: msgBuffer malloc fail" << std::endl;
        msgBufferAllocSize = 0;
        return 1;
    }

    ros::Rate loop_rate(100);

    while (ros::ok())
    {
        if (adCtrlEgo || bScenarioFinished)                                                                                                       //AD控制主车时发送数据,AD不控制主车时只发送trigger
        {
            bool isNewMsg = true;                                                                                                                 //是否收到新消息
            objData.mMutex.lock();
            if (objData.isNewMsgList.size() > 0)  // 此处并不是一个循环，所以会逐步处理每个Msg
            {
                isNewMsg = objData.isNewMsgList.front();
                objData.isNewMsgList.pop_front();
            }
            objData.mMutex.unlock();

            if (isNewMsg)
            {
                //生成仿真应答数据
                generateMsg();
            }

            //发送消息
            bool result = msgReceiver.sendMsg(msgBuffer, msgBufferUsedSize);
            if (!result)
            {
                return 1;
            }
        }

        //等待接收解析完下一帧数据
        int semRet = sem_wait(&sem);
        if (semRet == -1) //失败
        {
            perror("sem_wait failed!");
        }
        loop_rate.sleep();
    }

    free(msgBuffer);
    msgBuffer = NULL;
    return 0;
}