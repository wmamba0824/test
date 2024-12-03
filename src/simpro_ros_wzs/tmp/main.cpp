#include <iostream>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <cstring>
#include <unistd.h>
#include <thread>
#include "SimProType.h"
#include <math.h>
#include <mutex>
#include <vector>
#include <semaphore.h>
#include <list>
#include "MsgReceiver.h"
        
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

std::vector<S_SP_PARKINGSPACE> allParkingSpace;

//用户自定义信号
#define CUSTOMSIGNAL                    0

//用信号量实现帧同步
sem_t sem;                                                                           //用于线程同步的信号量

/* 函数申明 */
double get_acc(const double speed);
double etd(const double vel, const double dvel);
double getMaxSpeed();
void get_before_veh(bool & has_veh, double & u4RelativeDist, double & u4RelativeSpeed);

/**
 * @brief Get the before veh object
 *
 * @param has_veh 是否有前车
 * @param u4RelativeDist 与前车的距离
 * @param u4RelativeSpeed 与前车的相对速度  (主车的速度 - 前车的速度)
 */
void get_before_veh(bool & has_veh, double & u4RelativeDist, double & u4RelativeSpeed)
{
    S_SP_MIL_EGO_STATE      mOwnObject = {0};
    S_SP_MIL_OBJECT_STATE   mNearestObject[MAX_OBJECT_CNT] = {0};

    double min_dis = 100;
    int min_index = -1;
    int _g_mil_object_num = 0;

    objData.mMutex.lock();
    _g_mil_object_num = objData.g_mil_object_num;
    objData.mMutex.unlock();

    if (_g_mil_object_num == 0)
    {
        has_veh = false;
        return;
    }

    if (_g_mil_object_num > MAX_OBJECT_CNT)
    {
        _g_mil_object_num = MAX_OBJECT_CNT;
    }

    objData.mMutex.lock();
    mOwnObject            = objData.mOwnObject;
    memcpy(mNearestObject, objData.mNearestObject, _g_mil_object_num * sizeof(S_SP_MIL_OBJECT_STATE));
    objData.mMutex.unlock();

    /* 主车信息: 速度 */
    double ownSpeed = sqrt(pow(mOwnObject.sObjectState.sSpeed.u8X, 2) + pow(mOwnObject.sObjectState.sSpeed.u8Y, 2));

    /* 主车信息: 坐标 */
    double own_x = mOwnObject.sObjectState.sPos.u8X;
    double own_y = mOwnObject.sObjectState.sPos.u8Y;
    double own_z = mOwnObject.sObjectState.sPos.u8Z;

    /* 主车信息: 航向角 */
    double own_h = mOwnObject.sObjectState.sPos.u4H;

    /* 环境车信息: 速度 坐标 航向角 */
    double obj_speed = 0;
    double obj_x = 0;
    double obj_y = 0;
    double obj_z = 0;
    double obj_h = 0;

    /**
     * @brief 查找主车前面的车
     *        a. 两车的航向角相同
     *        b. 主车到前车的方向与航向角相同
     *        以上条件同时满足
     */
    for (size_t i = 0; i < _g_mil_object_num; i++)
    {
        /* 更新环境车信息 */
        obj_x = mNearestObject[i].sObjectState.sPos.u8X;
        obj_y = mNearestObject[i].sObjectState.sPos.u8Y;
        obj_z = mNearestObject[i].sObjectState.sPos.u8Z;

        obj_h = mNearestObject[i].sObjectState.sPos.u4H;

        /* a. 航向角相差大于45度，标识不在前面 */
        //求从own_h到obj_h的最小角度变化量
        //值域调整到(-2PI, 2PI)
        double output_own = fmod(own_h, 2 * M_PI);
        double output_obj = fmod(obj_h, 2 * M_PI);
        //值域调整到[0, 2PI)
        if (output_own < 0)
        {
            output_own += 2 * M_PI;
        }
        if (output_obj < 0)
        {
            output_obj += 2 * M_PI;
        }
        //角度变化量
        double deltaAngle = output_own - output_obj;
        //最小角度变化量
        if (deltaAngle > M_PI)
        {
            deltaAngle -= 2 * M_PI;
        }
        else if (deltaAngle < -M_PI)
        {
            deltaAngle += 2 * M_PI;
        }

        if (fabs(deltaAngle) > M_PI_4)
        {
            continue;
        }

        /* 不同车道不处理 */
        if (mOwnObject.sObjectState.u1LaneId != mNearestObject[i].sObjectState.u1LaneId)
        {
            continue;
        }


        /* 主车到前车的方向与航向角相同 */
        double dx = obj_x - own_x;
        double dy = obj_y - own_y;
        double dtmp = atan(dy / dx);

        if (dx > 0)                 // 第一、四象限
        {
            if (dy < 0)             // 第四象限
            {
                dtmp += M_PI * 2;
            }
        }
        else                        // 第二、三象限
        {
            dtmp += M_PI;
        }

        /* 如果连线角度与航向角差 45 度以上，不在同一条线上 */
        double dtemp_h = fabs(dtmp - own_h);
        dtemp_h = (dtemp_h > M_PI) ? (M_PI * 2 - dtemp_h) : dtemp_h;
        if (dtemp_h > M_PI_4)
        {
            continue;
        }

        /* 主车前面的车辆 */
        // s 坐标获取错误
        double dis_bef = sqrt(pow(dx, 2) + pow(dy, 2) + pow(own_z - obj_z, 2));

        if (min_dis > dis_bef)
        {
            min_dis = dis_bef;
            min_index = i;
        }
    }

    /* 前面无车 */
    if (min_index < 0)
    {
        return;
    }

    /* 前面有车 */
    has_veh = true;

    /* 前方车辆速度 */
    obj_speed = sqrt(pow(mNearestObject[min_index].sObjectState.sSpeed.u8X, 2) + pow(mNearestObject[min_index].sObjectState.sSpeed.u8Y, 2));

    u4RelativeSpeed = ownSpeed - obj_speed;
    u4RelativeDist = min_dis;

    return;
}

/**
 * @brief 获取最大速度
 *        默认车辆行驶速度为120KM/H
 * @return double
 */
double getMaxSpeed()
{
    return 33.333333;
}

/**
 * @brief                           Get the acc object
 *                                  此处须替换成用户的算法
 *
 *                                  默认的ACC算法对测试场景的限制：
 *                                  场景中只能有主车和20个交通车
 *                                  两车必须在同一条路上
 *                                  沿s轴正方向行驶
 *                                  主车在交通车后面
 *                                  不能进行转向 (缺乏转向功能)
 * @param speed                     当前车速
 * @return double                   加速度
 */
double get_acc(const double speed)
{
    const double min_dis_safery = 2;    // 安全距离
    const double accMax = 3.0;          // 加速度最大值
    const double approachFactor = 4.0;
    const double vehicLength = 4.3;     // 车身长度默认4.3米
    double acc_temp1 = 0;
    double acc_temp2 = 0;

    double acc = 0;                     /* 默认返回0 */

    bool has_vel = false;
    double u4RelativeDist = 100.0;
    double u4RelativeSpeed = 0.0;

    get_before_veh(has_vel, u4RelativeDist, u4RelativeSpeed);

    /**
     * @brief 不需要变速的条件:
     *      a. 距离前车较远;
     *      b. 当前速度与初始值差不多
     *      两个条件都满足才不变速
     */
    if ((fabs(speed - getMaxSpeed()) < 0.005) && (u4RelativeDist > 200))
    {
        return 0.0;
    }

    // 减去实体长度
    u4RelativeDist -= vehicLength;

    /* 减去安全距离 */
    u4RelativeDist -= min_dis_safery;

    // 取作为除数的最小值
    if (u4RelativeDist < std::numeric_limits<double>::epsilon())
    {
        u4RelativeDist = std::numeric_limits<double>::epsilon() * 2;   // dis 最小值做限制
    }

    // Step2: 计算acc
    acc_temp1 = accMax * (1 - pow((speed / getMaxSpeed()), approachFactor));
    acc_temp2 = acc_temp1 - accMax * (pow(etd(speed, u4RelativeSpeed) / u4RelativeDist, 2.0));
    acc = (acc_temp1 < acc_temp2) ? acc_temp1 : acc_temp2;
    acc = (acc < -8) ? -8 : acc;
    acc = (acc > 6) ? 6 : acc;
    acc = (acc > accMax) ? accMax : acc;

    return acc;
}

/**
 * @brief 输入本实体当前速度和与前方实体的相对速度获取有效停车距离
 *
 * @param vel 当前速度
 * @param dvel 与前方实体的相对速度
 * @return dis_effect 输出安全距离
 */
double etd(double vel, double dvel)
{
    const float deltaSmin = 2.0;  // 来自驾驶员模型默认值
    const float decComf = 1.5;    // 舒适的制动减速度，默认值为1.5
    const float accMax = 3;       // 车辆驾驶员最大可能的加速度，默认值为3.0
    const float respTime = 1.4;   // 期望时间间隔
    const double distanceBetweenCenter2Head = 1.0;  // 实体模型一半的长度 默认为车辆，1米

    double dis_effect = 0;

    if (0 > vel)
    {
        return 0;
    }

    double minDist = deltaSmin + distanceBetweenCenter2Head;

    dis_effect = minDist + respTime * vel + (vel * dvel) / (2 * sqrt(accMax * decComf));
    dis_effect = (dis_effect > minDist) ? dis_effect : minDist;

    return dis_effect;
}

/**
 * 非控制在环，世界坐标系，需要提供准确数值的数据项：
 * pkgBody->sObjectState.sPos.u8X
 * pkgBody->sObjectState.sPos.u8Y
 * pkgBody->sObjectState.sPos.u8Z
 * pkgBody->sObjectState.sPos.u4H
 * pkgBody->sObjectState.sSpeed.u8X
 * pkgBody->sObjectState.sSpeed.u8Y
 * pkgBody->sObjectState.sSpeed.u4H
 * pkgBody->sObjectState.sAccel.u8X
 * pkgBody->sObjectState.sAccel.u8Y
 * pkgBody->sObjectState.sAccel.u4H
 * pkgBody->sObjectState.u4TraveledDist
 * pkgBody->sObjectState.u8RoadId
 * pkgBody->sObjectState.sPos.u1Type = D_SP_COORDINATE_TYPE_GEO;
 *
 * 非控制在环，道路坐标系，需要提供准确数值的数据项：
 * pkgBody->sObjectState.u8RoadId
 * pkgBody->sObjectState.u1LaneId
 * pkgBody->sObjectState.u4RoadS
 * pkgBody->sObjectState.u4RoadT
 * pkgBody->sObjectState.u4HdgRel
 * pkgBody->sObjectState.u1Dir
 * pkgBody->sObjectState.sSpeed.u8X
 * pkgBody->sObjectState.sSpeed.u8Y
 * pkgBody->sObjectState.sSpeed.u4H
 * pkgBody->sObjectState.sAccel.u8X
 * pkgBody->sObjectState.sAccel.u8Y
 * pkgBody->sObjectState.sAccel.u4H
 * pkgBody->sObjectState.u4TraveledDist
 * pkgBody->sObjectState.sPos.u1Type = D_SP_COORDINATE_TYPE_TRACK;
 */
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


/**
 * 控制在环(动力学模型挂载外部)，需要提供准确数值的数据项：
 * pkgBody->sObjectState.sPos.u4H
 * pkgBody->sObjectState.sSpeed.u4H
 * pkgBody->sObjectState.sSpeed.u8X
 * pkgBody->sObjectState.sAccel.u8X
 * pkgBody->sObjectState.sAccel.u8Y
 */
void generatePkgEgoData2()
{
    S_SP_MIL_EGO_STATE mOwnObject{0};

    objData.mMutex.lock();
    mOwnObject = objData.mOwnObject;
    objData.mMutex.unlock();

    double dt                           = 1.0 / 60.0;                                        //根据设置的帧率多少来计算dt
    bool bLeftLightStatus               = false;                                             //左转向灯状态
    bool bRinghtLightStatus             = false;                                             //右转向灯状态
    double accelTgt                     = get_acc(sqrt(pow(mOwnObject.sObjectState.sSpeed.u8X, 2) + pow(mOwnObject.sObjectState.sSpeed.u8Y, 2))); //此处须替换成用户的算法
    objData.velo                        = objData.velo + (accelTgt * dt);                    //更新主车速度

    //生成D_SP_MIL_PKG_ID_EGO_DATA
    S_SP_MSG_ENTRY_HDR *pkghead         = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkghead->u4HeaderSize               = sizeof(S_SP_MSG_ENTRY_HDR);
    pkghead->u4DataSize                 = sizeof(S_SP_MIL_EGO_STATE);
    pkghead->u4ElementSize              = sizeof(S_SP_MIL_EGO_STATE);
    pkghead->u2PkgId                    = D_SP_MIL_PKG_ID_EGO_DATA;

    //填充PKG body
    S_SP_MIL_EGO_STATE *pkgBody         = (S_SP_MIL_EGO_STATE *)(pkghead + 1);

    pkgBody->sObjectState.u4Id          = 1;                                                 //主车Id为1
    strcpy(pkgBody->sObjectState.au1Name, "Ego");

    //航向角
    pkgBody->sObjectState.sPos.u4H       = 0.0;
    pkgBody->sObjectState.sPos.u1Type    = D_SP_COORDINATE_TYPE_GEO;                         //坐标系类型,世界坐标系

    //线速度与角速度
    pkgBody->sObjectState.sSpeed.u8X     = objData.velo;
    pkgBody->sObjectState.sSpeed.u4H     = 0.0;
    pkgBody->sObjectState.sSpeed.u1Type  = D_SP_COORDINATE_TYPE_TRACK;                       //坐标系类型,道路坐标系(x=s, y=t )

    //线加速度与角加速度
    pkgBody->sObjectState.sAccel.u8X     = accelTgt;
    pkgBody->sObjectState.sAccel.u8Y     = 0.0;
    pkgBody->sObjectState.sAccel.u1Type  = D_SP_COORDINATE_TYPE_TRACK;                       //坐标系类型，道路坐标系(x=s, y=t )

    //转向灯
    pkgBody->u4LightMask                 = 0;

    //如果左转向灯亮
    if (bLeftLightStatus)
    {
        pkgBody->u4LightMask = pkgBody->u4LightMask | D_SP_VEHICLE_LIGHT_INDICATOR_L;
    }

    //如果右转向灯亮
    if (bRinghtLightStatus)
    {
        pkgBody->u4LightMask             = pkgBody->u4LightMask | D_SP_VEHICLE_LIGHT_INDICATOR_R;
    }

    msgBufferUsedSize                   += pkghead->u4HeaderSize + pkghead->u4DataSize;      //更新msgBuffer的已使用空间
}

/**
 * 控制在环(动力学模型挂载内部)，需要提供准确数值的数据项：
 * 使用第一套纵向控制方式:
 * pkgBody->u8AccelTgt
 *
 * 使用第二套纵向控制方式:
 * pkgBody->u8ThrottlePedal
 * pkgBody->u8MasterCylinderPressure
 *
 * 使用第三套纵向控制方式:
 * pkgBody->u4MtWheel
 * pkgBody->u8AccelTgt
 *
 * 使用第四套纵向控制方式:
 * pkgBody->u8TargetSpeed
 * pkgBody->u8StopDistance
 * pkgBody->u1Gear
 * pkgBody->u1BrkType
 *
 * 使用第一套横向控制方式:
 * pkgBody->u8SteeringWheel
 *
 * 使用第二套横向控制方式:
 * pkgBody->u8SteeringTorque
 */
void generatePkgDriverCtrl()
{

    //此处须替换成用户的算法
    double             accelTgt = get_acc(sqrt(pow(objData.mOwnObject.sObjectState.sSpeed.u8X, 2) + pow(objData.mOwnObject.sObjectState.sSpeed.u8Y, 2)));
    S_SP_MSG_ENTRY_HDR *pkghead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkghead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkghead->u4DataSize         = sizeof(S_SP_DRIVER_CTRL);
    pkghead->u4ElementSize      = sizeof(S_SP_DRIVER_CTRL);
    pkghead->u2PkgId            = D_SP_PKG_ID_DRIVER_CTRL;

    //填充PKG body
    S_SP_DRIVER_CTRL *pkgBody   = (S_SP_DRIVER_CTRL *)(pkghead + 1);

#if 1                                                                                          //使用第一套纵向控制方式
    pkgBody->u8AccelTgt         = accelTgt;                                                    //预期目标加速度(m/s2)

    std::cout << " acc=" << pkgBody->u8AccelTgt;
#elif 0                                                                                        //使用第二套纵向控制方式
    pkgBody->u8ThrottlePedal          = 0.5;                                                   //油门踏板(0~1)
    pkgBody->u8MasterCylinderPressure = 6;                                                     //制动主缸压力(mpa)

    std::cout << " u8ThrottlePedal=" << pkgBody->u8ThrottlePedal << " u8MasterCylinderPressure=" << pkgBody->u8MasterCylinderPressure;
#elif 0                                                                                        //使用第三套纵向控制方式
    pkgBody->u4MtWheel                = 0.0;                                                   //轮端扭矩(N*m)
    pkgBody->u8AccelTgt               = 0.0;                                                   //期望制动减速度(m/s2),应设置负值
#else                                                                                          //使用第四套纵向控制方式
    pkgBody->u8TargetSpeed            = 0.0;                                                   //最大允许车速(km/h)
    pkgBody->u8StopDistance           = 0.0;                                                   //剩余停车距离(cm)
    pkgBody->u1Gear                   = D_SP_GEAR_BOX_POS_N;                                   //挡位
    pkgBody->u1BrkType                = 0;                                                     //制动类型(0=None 1=Comfort 2=Emergence)
#endif

#if 1                                                                                          //使用第一套横向控制方式
    pkgBody->u8SteeringWheel          = 0.0;                                                   //方向盘转角(弧度)

    std::cout << " u8SteeringWheel=" << pkgBody->u8SteeringWheel << std::endl;
#else                                                                                          //使用第二套横向控制方式
    pkgBody->u8SteeringTorque         = 0.0;                                                   //方向盘扭矩(N*m)

    std::cout << " u8SteeringTorque=" << pkgBody->u8SteeringTorque << std::endl;
#endif

    msgBufferUsedSize += pkghead->u4HeaderSize + pkghead->u4DataSize;                          //更新msgBuffer的已使用空间
}

void generatePkgEgoData()
{
    bool bLeftLightStatus       = false;                                                       //左转向灯状态
    bool bRinghtLightStatus     = false;                                                       //右转向灯状态
    S_SP_MSG_ENTRY_HDR *pkghead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkghead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkghead->u4DataSize         = sizeof(S_SP_MIL_EGO_STATE);
    pkghead->u4ElementSize      = sizeof(S_SP_MIL_EGO_STATE);
    pkghead->u2PkgId            = D_SP_MIL_PKG_ID_EGO_DATA;

    //填充PKG body
    S_SP_MIL_EGO_STATE *pkgBody = (S_SP_MIL_EGO_STATE *)(pkghead + 1);

    pkgBody->sObjectState.u4Id  = 1;                                                           //主车Id为1
    strcpy(pkgBody->sObjectState.au1Name, "Ego");

    pkgBody->u4LightMask        = 0;

    //如果左转向灯亮
    if (bLeftLightStatus)
    {
        pkgBody->u4LightMask    = pkgBody->u4LightMask | D_SP_VEHICLE_LIGHT_INDICATOR_L;
    }

    //如果右转向灯亮
    if (bRinghtLightStatus)
    {
        pkgBody->u4LightMask    = pkgBody->u4LightMask | D_SP_VEHICLE_LIGHT_INDICATOR_R;
    }

    msgBufferUsedSize           += pkghead->u4HeaderSize + pkghead->u4DataSize;                //更新msgBuffer的已使用空间
}

/**
 * 生成csv数据，需要提供准确数值的数据项：
 *
 * pkgBody->u4AccelTgt
 * pkgBody->u4SteeringWheel
 * pkgBody->u4ADStatus
 */
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

void generatePkgV2xWaringInformation()
{
    S_SP_MSG_ENTRY_HDR *pkghead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkghead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkghead->u4DataSize         = sizeof(S_SP_V2X_WARNINGINFORMATION);
    pkghead->u4ElementSize      = sizeof(S_SP_V2X_WARNINGINFORMATION);
    pkghead->u2PkgId            = D_SP_PKG_ID_V2X_WARNINGINFORMATION;

    //填充PKG body
    S_SP_V2X_WARNINGINFORMATION *pkgBody = (S_SP_V2X_WARNINGINFORMATION *)(pkghead + 1);
    /*
     0：渲染端不显示
     1：前向碰撞预警（FCW）           2：交叉路口碰撞预警（ICW）
     3：左转辅助（LTA）               4：盲区预警（BSW）
     5：变道预警（LCW）               6：逆向超车预警
     7：紧急制动预警                  8：异常车辆提醒
     9：车辆失控预警                  10：道路危险状况提示
     11：限速预警                     12：闯红灯预警
     13：弱势交通参与者碰撞预警        14：绿波车速引导
     15：车内标牌                     16：前方拥堵提醒
     17：紧急车辆提醒                 18：汽车近场支付
    */
    pkgBody->u4Type = 1;    //告警信息类型
    msgBufferUsedSize           += pkghead->u4HeaderSize + pkghead->u4DataSize;                //更新msgBuffer的已使用空间
}

/**
 * 生成算法信号数据
 */
void generatePkgADSignalData()
{
    S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkgHead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkgHead->u4DataSize         = sizeof(S_SP_AD_SIGNAL_DATA) * 1;
    pkgHead->u4ElementSize      = sizeof(S_SP_AD_SIGNAL_DATA);
    pkgHead->u2PkgId            = D_SP_PKG_ID_AD_SIGNAL_DATA;

    //填充PKG body
    S_SP_AD_SIGNAL_DATA *pkgBody = (S_SP_AD_SIGNAL_DATA *)(pkgHead + 1);
    strncpy(pkgBody->au1SignalName, "Takeover", D_SP_SIZE_AD_SIGNAL_NAME - 1);                  //算法信号名称; 其中接管信号名称固定为"Takeover"
    pkgBody->u8SignalValue = 1.0;                                                               //算法信号值; 接管信号在发生接管时值为1.0,且发生接管时才需要发送
    msgBufferUsedSize           += pkgHead->u4HeaderSize + pkgHead->u4DataSize;                 //更新msgBuffer的已使用空间
}

/**
 * 生成控制TTC数据输出数据
 */
void generatePkgOutputTTCControl(bool whetherOutputTTC)
{
    S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

    //填充PKG头部
    pkgHead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
    pkgHead->u4DataSize         = sizeof(S_SP_TTC_CONTROL);
    pkgHead->u4ElementSize      = sizeof(S_SP_TTC_CONTROL);
    pkgHead->u2PkgId            = D_SP_PKG_ID_TTC_CONTROL;

    //填充PKG body
    S_SP_TTC_CONTROL *pkgBody = (S_SP_TTC_CONTROL *)(pkgHead + 1);
    if (whetherOutputTTC)
    {
        pkgBody->u4Status           = 1;                                                       //打开输出TTC数据开关
    }
    else
    {
        pkgBody->u4Status           = 0;                                                       //关闭输出TTC数据开关
    }
    msgBufferUsedSize           += pkgHead->u4HeaderSize + pkgHead->u4DataSize;                //更新msgBuffer的已使用空间
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

        bScenarioFinished              = false;
        // std::cout << "D_SP_SYNC_CMD_TRIGGER frameNo = " << frameCount << std::endl;
    }
    else //发送其他pkg
    {
#if 1
        //非控制在环
        generatePkgEgoData1();
#elif 0
        //控制在环(动力学模型挂载外部)
        generatePkgEgoData2();
#else
        //控制在环(动力学模型挂载内部)
        generatePkgDriverCtrl();
        generatePkgEgoData();
#endif
        //生成csv数据
        generatePkgCsvData();

        //生成V2X告警信息
        generatePkgV2xWaringInformation();

        //生成算法信号数据
        //generatePkgADSignalData();

        //生成控制TTC数据输出,每帧需要发送,不发送视为不需要输出TTC至评估报告
        //generatePkgOutputTTCControl(true);
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
    //std::cout << "headerSize=" << msgHead->headerSize << " dataSize=" << msgHead->dataSize << std::endl;

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

    //std::cout << "parsePackage  " << std::dec << __LINE__ << std::endl;

    //printf("receiveD_SP_PKG_ID_START_FRAME\n");
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
            //printf("receive D_SP_MIL_PKG_ID_EGO_DATA\n");
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
            //printf("receive D_SP_MIL_PKG_ID_OBJECT_DATA\n");
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
        else if (pkgHead->u2PkgId == D_SP_PKG_ID_PARKINGSPACE)
        {
            int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize;                                   //元素数量
            S_SP_PARKINGSPACE * pkgdData = (S_SP_PARKINGSPACE*)(currentPkg + pkgHead->u4HeaderSize);        //数据部分指针
            allParkingSpace.clear();                                                                        //清空停车位信息

            for ( int i = 0; i < elementNum; i++)
            {
                ParkingSpace = {0};
                memcpy(&ParkingSpace,pkgdData,sizeof(S_SP_PARKINGSPACE));
                allParkingSpace.push_back(ParkingSpace);
                pkgdData = (S_SP_PARKINGSPACE *)((char *)pkgdData + pkgHead->u4ElementSize);
            }
        }
        else if (pkgHead->u2PkgId == D_SP_PKG_ID_SYNC)
        {
            S_SP_SYNC *pkgData = (S_SP_SYNC *)(currentPkg + pkgHead->u4HeaderSize);                          //数据部分指针
            //1.解析数据
            if (pkgData->u4CmdMask & D_SP_SYNC_CMD_FINISH_CURRENT)                                           //最低位为1代表当前测试场景结束
            {
                // std::cout << "parsePackage D_SP_SYNC_CMD_FINISH_CURRENT " << std::endl;
                bScenarioFinished  = true;                                                                   //收到仿真器发的结束信号
                objData.isVeloInit = false;                                                                  //置为false后下一个场景才可以更新初速度
            }

            /*  预留- 用户自定义信号 此处 CUSTOMSIGANL和对应的功能需实装  */
            if (pkgData->u4UserData == CUSTOMSIGNAL)
            {
                //do nothing
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

int main() {、；
    // 信号量初始化
    int ret = sem_init(&sem, 0, 0);
    if (ret == -1)
    {
        perror("sem_init failed \n");
        return 1;
    }

    MsgReceiver msgReceiver;
    msgReceiver.setCallback(parsePackage); //注册解析消息的回调函数

#if USE_CM       //是否使用CM传感器配置的端口
    bool initSocketRet = msgReceiver.initSocket(8000, 8010); //socket初始化，返回是否成功
#else
    bool initSocketRet = msgReceiver.initSocket(8000); //socket初始化，返回是否成功
#endif

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

    while (true)
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
    }

    free(msgBuffer);
    msgBuffer = NULL;
    return 0;
}

