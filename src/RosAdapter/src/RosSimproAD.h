#include <iostream>
#include <ros/ros.h>
#include <string>
#include <vector>
#include <arpa/inet.h>
#include "SimProType.h"


// message文件
#include <RosAdapter/header.h>
#include <RosAdapter/activate_controller.h>
#include <RosAdapter/assign_controller.h>
#include <RosAdapter/assign_controller_property.h>
#include <RosAdapter/rosSimproToAD.h>
#include <RosAdapter/driver_ctrl.h>
#include <RosAdapter/dynamic_object.h>
#include <RosAdapter/lane_info.h>
#include <RosAdapter/sensor_detection_info.h>
#include <RosAdapter/sensor_info.h>
#include <RosAdapter/sign_object.h>
#include <RosAdapter/sync.h>
#include <RosAdapter/traffic_light.h>
#include <RosAdapter/traffic_light_phase.h>
#include <RosAdapter/traffic_sign.h>
#include <RosAdapter/environment.h>
#include <RosAdapter/coord.h>
#include <RosAdapter/custom_command.h>
#include <RosAdapter/geometry.h>
#include <RosAdapter/mil_ego_state.h>
#include <RosAdapter/mil_object_state.h>
#include <RosAdapter/mil_roadmark.h>
#include <RosAdapter/mil_object_state_base.h>
#include <RosAdapter/mark_object.h>
#include <RosAdapter/mil_amesim_signal.h>
#include <RosAdapter/rosADToSimproDriverCtrl.h>
#include <RosAdapter/rosADToSimproEgoState.h>
#include <RosAdapter/rosADToSimproTrigger.h>
#include <RosAdapter/init_param.h>
#include <RosAdapter/contact_point.h>
#include <RosAdapter/road_query.h>
#include <RosAdapter/road_state.h>
#include <RosAdapter/parkingSpace.h>
#include <RosAdapter/object_state.h>
#include <RosAdapter/object_uion.h>
#include <RosAdapter/override_controller.h>
#include <RosAdapter/v2x_warninginformation.h>
#include <RosAdapter/imu_data.h>
#include <RosAdapter/gnss_gga.h>
#include <RosAdapter/uwb_data.h>
#include <RosAdapter/ad_signal_data.h>
#include <RosAdapter/model_outline.h>
#include <RosAdapter/double_array.h>




#include <sys/time.h>

//srv文件
//#include <RosAdapter/ADToSimproDriverCtrl.h>
//#include <RosAdapter/ADToSimproObjState.h>
//#include <RosAdapter/ADToSimproTrigger.h>

// 2021.08.31 粘包拆包问题的处理
#define PARSE_PACKAGE_SUCESS 0
#define PARSE_PACKAGE_ERROR -1

#define PARSE_SOCKET_SUCESS 0
#define PARSE_SOCKET_NODATA 1           // need receiving the next sockets
#define PARSE_SOCKET_CURBUFFER_NODATA 2 // need receiving the next sockets
#define PARSE_SOCKET_ERROR -1
#define RECV_BUF_SIZE 1024 * 1024 * 2

namespace RosAdapter
{
    class RosSimproAD
    {
    public:
        RosSimproAD();
        ~RosSimproAD();

        void connectSimpro();
        //void sendTriggerToSimpro();
        void recvMessage();
        void recvDataFromAD();

        //void sendTriggerToSimpro(const rosADToSimproTrigger::ConstPtr &triggerMsg);
        //void sendObjToSimpro(const rosADToSimproObjState::ConstPtr &objMessage);
        //void sendDriverCtrlToSimpro(const rosADToSimproDriverCtrl::ConstPtr &driverCtrlMessage);
     
    private:

        struct timeval timeStart, timeEnd, timeSub, timeSend, socketStart, socketEnd, parseStart, parseEnd,timeEnd1;
        bool isInitial;
        std::string ip;
        int port;
        int connType;
        ros::NodeHandle nh_;
        ros::ServiceClient client_;
        ros::ServiceClient clientAD_;

        ros::Publisher SimproToAD_;
        ros::Subscriber objState_;
        ros::Subscriber driverCtrl_;
        ros::Subscriber trigger_;
        unsigned int sin_size;

        int client_sockfd;
        struct sockaddr_in remote_addr;
        char *msgBuffer;        //一帧数据的buffer
        int msgBufferAllocSize; //对应的已申请空间
        int msgBufferUsedSize;  //对应的已使用空间
        char recvBuf[RECV_BUF_SIZE];
        char recvMsgBuf[RECV_BUF_SIZE];  //接收数据的缓冲区
        int recvMsgBufUsedSize; //recvMsgBuf已使用空间
        char swapBuf[RECV_BUF_SIZE]; //交换空间

        // 2021.08.31 粘包拆包问题的处理
        unsigned int mTotalLen; // PKG总长
        char *mCurrPBuffer;     //当前拼接PKG的buff
        unsigned int mCurrPkgLen;
        char mTempBuff[sizeof(S_SP_MSG_HDR) * 2]; //存放PKG的head的一部分
        unsigned int mTempLen;
        bool mIsMerge; // flag
        bool bScenarioFinished;  //当前测试场景是否结束场景

        S_SP_MSG_HDR mHead;
        S_SP_LANE_INFO  mLaneInfo;
        S_SP_SENSOR_INFO mSensorInfo;
        S_SP_SENSOR_DETECTION_INFO mSensorDetectionInfo;
        S_SP_CONTACT_POINT mContactPoint;
        S_SP_TRAFFIC_SIGN mTrafficSign;
        S_SP_ENVIRONMENT mEnvironment;
        S_SP_DRIVER_CTRL mDriverCtrl;
        S_SP_TRAFFIC_LIGHT mTrafficLight;
        S_SP_MIL_ROADMARK mMilRoadMark;
        S_SP_MIL_EGO_STATE mEgoState;
        S_SP_MIL_OBJECT_STATE mMilObjState;
        S_SP_MIL_AMESIM_SIGNAL mMilAmesimSignal;
        S_SP_ACTIVATE_CONTROLLER mActivateController;
        S_SP_ASSIGN_CONTROLLER mAssignController;
        S_SP_OVERRIDE_CONTROLLER mOverrideController;
        S_SP_CUSTOM_COMMAND mCustomCommand;
        S_SP_SYNC mSync;
        S_SP_INIT_PARAM mInitParam;
        S_SP_ROAD_QUERY mRoadQuery;
        S_SP_ROAD_STATE mRoadState;
        S_SP_PARKINGSPACE mParkingSpace;
        S_SP_IMU_DATA mImuData;
        S_SP_UWB_DATA mUwbData;
        S_SP_MODEL_OUTLINE mModelOutline;
        S_SP_RSU_VNFP_INFO mRsuVnfpInfo;
        S_SP_GNSS_GGA mGnssGga;


        rosSimproToAD message;

        S_SP_MSG_HDR *msgHead1;

        void getIp(char *p_ip);
        void addRecvMsg(char *msgBuff, int msgSize); //将接收到的数据添加到recvMsgBuf
        void checkMsgComplete(char *buffer, int bufferSize, bool &isComplete, int &msgSize); //检查buffer中是否包含完整的一帧数据
        int parseSocket(int recvLen);
        int parsePackage(char *pkgBuff);
        void packToRos(uint16_t type = 0, char *pdata = nullptr);
        
        // void generateHeadMsg(const header &head);

        void generateHeadMsg();

        void generateEndMsg();
        void generateEgoState(const mil_ego_state &objMessage);
        void generateDriverCtrl(const driver_ctrl &driverCtrlMessage);
        void generateTrigger();
        void generateCsvData(const csv_data &csvData);
        void generateV2xWarningInformation(const v2x_warninginformation &v2xWarning);
        void sendDataToAD();

        // void sendTriggerToSimpro(const rosADToSimproTrigger::ConstPtr &triggerMsg);

        void sendTriggerToSimpro();

        void sendObjToSimpro(const rosADToSimproEgoState::ConstPtr &objMessage);
        void sendDriverCtrlToSimpro(const rosADToSimproDriverCtrl::ConstPtr &driverCtrlMessage);  
        void clearMessage();      

    };
}
