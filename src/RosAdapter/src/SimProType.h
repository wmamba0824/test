#ifndef SP_COMMUNICATION_TYPE_H
#define SP_COMMUNICATION_TYPE_H
#include <stdint.h>

#pragma pack(4) //指定默认对齐数

#define D_SP_SIZE_OBJECT_NAME             32
#define D_SP_SIZE_USER_DEFINED_STRING     64
#define D_SP_SIZE_PROPERTY_NAME           32
#define D_SP_SIZE_PROPERTY_VALUE          16
#define D_SP_SIZE_AD_SIGNAL_NAME         128
#define D_SP_SIZE_FILE_PATH              200

#define D_SP_PKG_ID_START_FRAME                  1
#define D_SP_PKG_ID_END_FRAME                    2
#define D_SP_PKG_ID_CONTACT_POINT                3
#define D_SP_PKG_ID_ROAD_QUERY                   4
#define D_SP_PKG_ID_LANE_INFO                    5
#define D_SP_PKG_ID_SENSOR_INFO                  6
#define D_SP_PKG_ID_SENSOR_DETECTION_INFO        7
#define D_SP_PKG_ID_ENVIRONMENT                  8
#define D_SP_PKG_ID_ROAD_STATE                   9
#define D_SP_PKG_ID_DRIVER_CTRL                 10
#define D_SP_PKG_ID_TRAFFIC_LIGHT               11
#define D_SP_PKG_ID_TRAFFIC_SIGN                12
#define D_SP_PKG_ID_SYNC                        13
#define D_SP_PKG_ID_REQUEST_AD_DATA             14
#define D_SP_MIL_PKG_ID_EGO_DATA                15
#define D_SP_MIL_PKG_ID_OBJECT_DATA             16
#define D_SP_MIL_PKG_ID_ROADMARK                17
#define D_SP_PKG_ID_INIT_PARAM                  18
#define D_SP_V2X_PKG_ID_BASICSAFETYMESSAGE      19
#define D_SP_V2X_PKG_ID_ROADSIDESAFETYMESSAGE   20
#define D_SP_V2X_PKG_ID_ROADSIDEINFORMATION     21
#define D_SP_V2X_PKG_ID_SPAT                    22
#define D_SP_V2X_PKG_ID_MAP                     23
#define D_SP_PKG_ID_OSI_GROUNDTRUTH             24
#define D_SP_PKG_ID_PARKINGSPACE                25
#define D_SP_PKG_ID_CSV_DATA                    26
#define D_SP_PKG_ID_OSI_HOSTVEHICLEDATA         27
#define D_SP_PKG_ID_OSI_SENSORVIEWCONFIGURATION 28
#define D_SP_PKG_ID_OSI_SENSORDATASERIES        29
#define D_SP_MIL_PKG_ID_AMESIM                  30
#define D_SP_PKG_ID_V2X_WARNINGINFORMATION      31
#define D_SP_PKG_ID_ACTIVATE_CONTROLLER         32
#define D_SP_PKG_ID_ASSIGN_CONTROLLER           33
#define D_SP_PKG_ID_OVERRIDE_CONTROLLER         34
#define D_SP_PKG_ID_CUSTOM_COMMAND              35
#define D_SP_PKG_ID_DYNAMIC_OUTPUT_PARAMETER    36
#define D_SP_PKG_ID_AD_SIGNAL_DATA              37
#define D_SP_PKG_ID_OBU_VNFP_INFO               38
#define D_SP_PKG_ID_RSU_VNFP_INFO               39
#define D_SP_PKG_ID_GNSS_DATA                   40
#define D_SP_PKG_ID_IMU_DATA                    41
#define D_SP_PKG_ID_UWB_DATA                    42
#define D_SP_PKG_ID_MODEL_OUTLINE               43
#define D_SP_PKG_ID_TTC_CONTROL                 44

#define D_SP_OBJECT_TYPE_NONE                   0
#define D_SP_OBJECT_TYPE_CAR                    1
#define D_SP_OBJECT_TYPE_PEDESTRIAN             2
#define D_SP_OBJECT_TYPE_BARRIER                3
#define D_SP_OBJECT_TYPE_STREET_LAMP            4
#define D_SP_OBJECT_TYPE_TRAFFIC_SIGN           5
#define D_SP_OBJECT_TYPE_LANE                   6
#define D_SP_OBJECT_TYPE_ROADMARK               7
#define D_SP_OBJECT_TYPE_ANIMAL                 8
#define D_SP_OBJECT_TYPE_BUILDING               9
#define D_SP_OBJECT_TYPE_TREE                  10
#define D_SP_OBJECT_TYPE_SHRUB                 11
#define D_SP_OBJECT_TYPE_GRASS                 12
#define D_SP_OBJECT_TYPE_GARBAGE_CAN           13
#define D_SP_OBJECT_TYPE_POLE                  14
#define D_SP_OBJECT_TYPE_PARKING_SPACE         15
#define D_SP_OBJECT_TYPE_BRIDGE                16
#define D_SP_OBJECT_TYPE_TUNNEL                17
#define D_SP_OBJECT_TYPE_PATCH                 18
#define D_SP_OBJECT_TYPE_GRATICULE             19
#define D_SP_OBJECT_TYPE_CAMERA                20
#define D_SP_OBJECT_TYPE_MWR                   21
#define D_SP_OBJECT_TYPE_RSU                   22
#define D_SP_OBJECT_TYPE_POTHOLE               23
#define D_SP_OBJECT_TYPE_ASPHAIT_LINE          24
#define D_SP_OBJECT_TYPE_RUT_TRACK             25
#define D_SP_OBJECT_TYPE_STAGNANT_WATER        26
#define D_SP_OBJECT_TYPE_WEll_COVER            27
#define D_SP_OBJECT_TYPE_RRS                   28
#define D_SP_OBJECT_TYPE_CRACK_BARRIER         29
#define D_SP_OBJECT_TYPE_ROADCURB_BARRIER      30
#define D_SP_OBJECT_TYPE_DECELERATION_ZONE_BARRIER  31
#define D_SP_OBJECT_TYPE_MOTORBIKE             32
#define D_SP_OBJECT_TYPE_BICYCLE               33
#define D_SP_OBJECT_TYPE_BUS                   34
#define D_SP_OBJECT_TYPE_TRUCK                 35
#define D_SP_OBJECT_TYPE_TRAFFIC_LIGHT         36
#define D_SP_OBJECT_TYPE_UWB_BASESTATION       37

#define D_SP_GEAR_BOX_POS_INVALID         -5
#define D_SP_GEAR_BOX_POS_NO_REQUEST      -4
#define D_SP_GEAR_BOX_POS_P               -3
#define D_SP_GEAR_BOX_POS_D               -2
#define D_SP_GEAR_BOX_POS_R               -1
#define D_SP_GEAR_BOX_POS_N                0
#define D_SP_GEAR_BOX_POS_1                1
#define D_SP_GEAR_BOX_POS_2                2
#define D_SP_GEAR_BOX_POS_3                3
#define D_SP_GEAR_BOX_POS_4                4
#define D_SP_GEAR_BOX_POS_5                5
#define D_SP_GEAR_BOX_POS_6                6
#define D_SP_GEAR_BOX_POS_7                7
#define D_SP_GEAR_BOX_POS_8                8
#define D_SP_GEAR_BOX_POS_9                9
#define D_SP_GEAR_BOX_POS_10              10
#define D_SP_GEAR_BOX_POS_11              11
#define D_SP_GEAR_BOX_POS_12              12
#define D_SP_GEAR_BOX_POS_13              13
#define D_SP_GEAR_BOX_POS_14              14
#define D_SP_GEAR_BOX_POS_15              15
#define D_SP_GEAR_BOX_POS_16              16
#define D_SP_GEAR_BOX_POS_17              17
#define D_SP_GEAR_BOX_POS_18              18


#define D_SP_SENSOR_TYPE_NONE            0
#define D_SP_SENSOR_TYPE_RADAR           1
#define D_SP_SENSOR_TYPE_CAMERA          2
#define D_SP_SENSOR_TYPE_LIDAR           3
#define D_SP_SENSOR_TYPE_ULTRASONIC      4
#define D_SP_SENSOR_TYPE_GPS             5
#define D_SP_SENSOR_TYPE_IMU             6
#define D_SP_SENSOR_TYPE_V2X_OBU         7
#define D_SP_SENSOR_TYPE_V2X_RSU         8

#define D_SP_SENSOR_MODEL_IDEAL			0x00
#define D_SP_SENSOR_MODEL_PROBABLY		0x01
#define D_SP_SENSOR_MODEL_PHYSIC		0x02

#define D_SP_TRLIGHT_STATUS_OFF           0
#define D_SP_TRLIGHT_STATUS_STOP          1
#define D_SP_TRLIGHT_STATUS_ATTN          2
#define D_SP_TRLIGHT_STATUS_GO            3


#define D_SP_COORDINATE_TYPE_GEO              0
#define D_SP_COORDINATE_TYPE_TRACK            1


#define D_SP_ENV_CLOUD_STATE_OFF         0
#define D_SP_ENV_CLOUD_STATE_RAINY       1
#define D_SP_ENV_CLOUD_STATE_OVERCAST    2
#define D_SP_ENV_CLOUD_STATE_CLOUDY      3
#define D_SP_ENV_CLOUD_STATE_BLUE        4


#define D_SP_ROADMARK_TYPE_UNDECIDED                0      /**< 未定义 */
#define D_SP_ROADMARK_TYPE_SOLID                    1      /**< 实线   */
#define D_SP_ROADMARK_TYPE_BROKEN                   2      /**< 虚线   */
#define D_SP_ROADMARK_TYPE_DLM                      3      /**<       */
#define D_SP_ROADMARK_TYPE_BOTTS                    4      /**<       */
#define D_SP_ROADMARK_TYPE_DECELERATION             5      /**< 减速带 */
#define D_SP_ROADMARK_TYPE_HOV_LANE                 6      /**<       */
#define D_SP_ROADMARK_TYPE_BROKEN_SOLID             7
#define D_SP_ROADMARK_TYPE_SOLID_BROKEN             8
#define D_SP_ROADMARK_TYPE_SOLID_SOLID              9


#define D_SP_ROADMARK_COLOR_UNDECIDED               0      /**< 未定义 */
#define D_SP_ROADMARK_COLOR_WHITE                   1      /**< 白色   */
#define D_SP_ROADMARK_COLOR_YELLOW                  2      /**< 黄色   */
#define D_SP_ROADMARK_COLOR_BLUE                    3      /**< 蓝色   */


#define D_SP_VEHICLE_LIGHT_OFF                    0x00000000
#define D_SP_VEHICLE_LIGHT_INDICATOR_L            0x00000001
#define D_SP_VEHICLE_LIGHT_INDICATOR_R            0x00000002
#define D_SP_VEHICLE_LIGHT_REAR_BRAKE             0x00000004
#define D_SP_VEHICLE_LIGHT_LOW_BEAM               0x00000008
#define D_SP_VEHICLE_LIGHT_HIGH_BEAM              0x00000010
#define D_SP_VEHICLE_LIGHT_REAR_DRIVE             0x00000020
#define D_SP_VEHICLE_LIGHT_FOG                    0x00000040
#define D_SP_VEHICLE_LIGHT_INDICATOR_WARN         0x00000080


#define D_SP_LANE_EXISTS_OWN                      0x01
#define D_SP_LANE_EXISTS_LEFT                     0x02
#define D_SP_LANE_EXISTS_RIGHT                    0x04


#define D_SP_SENSOR_OBJECT_FLAG_NONE               0x0000
#define D_SP_SENSOR_OBJECT_FLAG_CRITICALITY_LOW    0x0001
#define D_SP_SENSOR_OBJECT_FLAG_CRITICALITY_MEDIUM 0x0002
#define D_SP_SENSOR_OBJECT_FLAG_CRITICALITY_HIGH   0x0003
#define D_SP_SENSOR_OBJECT_FLAG_LANE_POS_VALID     0x0008


#define D_SP_ROAD_DIR_FLAG_NONE                    0x00
#define D_SP_ROAD_DIR_FLAG_DIR_FWD                 0x01
#define D_SP_ROAD_DIR_FLAG_DIR_REAR                0x02


#define D_SP_SYNC_CMD_NONE                       0x0000
#define D_SP_SYNC_CMD_FINISH_CURRENT             0x0001
#define D_SP_SYNC_CMD_FINISH_ALL                 0x0002
#define D_SP_SYNC_CMD_TRIGGER                    0x0004

 /**  ------ object types ------ */

#define D_SP_OBJECT_CATEGORY_NONE           0
#define D_SP_OBJECT_CATEGORY_PLAYER         1
#define D_SP_OBJECT_CATEGORY_SENSOR         2
#define D_SP_OBJECT_CATEGORY_CAMERA         3
#define D_SP_OBJECT_CATEGORY_LIGHT_POINT    4
#define D_SP_OBJECT_CATEGORY_COMMON         5
#define D_SP_OBJECT_CATEGORY_OPENDRIVE      6

/*  ------ object visibility flags ------*/
#define D_SP_OBJECT_VIS_FLAG_ALL                      0xffff
#define D_SP_OBJECT_VIS_FLAG_NONE                     0x0000
#define D_SP_OBJECT_VIS_FLAG_GFX                      0x0001
#define D_SP_OBJECT_VIS_FLAG_TRAFFIC                  0x0002
#define D_SP_OBJECT_VIS_FLAG_RECORDER                 0x0004

#define D_SP_SENDER_OTHER                   0
#define D_SP_SENDER_SIMULATOR               1
#define D_SP_SENDER_COMPONENT_MANAGER       2
#define D_SP_SENDER_ADS                     3

/** ------ 坐标 ------ */
typedef struct
{
    double   u8X;
    double   u8Y;
    double   u8Z;
    float    u4H;
    float    u4P;
    float    u4R;
    uint8_t  u1Type;                     /**< @link D_SP_COORDINATE_TYPE  */
    uint8_t  au1Spare[3];
} S_SP_COORDINATE;

/** ------ 初始化参数 ------ */
typedef struct
{
    char             au1OpenScenario[D_SP_SIZE_FILE_PATH];
    char             au1OpenDrive[D_SP_SIZE_FILE_PATH];
    uint64_t         u8StartRoadId;
    uint64_t         u8EndRoadId;
    float            u4StartRoadS;
    float            u4EndRoadS;
    float            u4Speed;
    uint16_t         u2ScenarioId;
    int8_t           u1StartLaneId;
    int8_t           u1EndLaneId;
} S_SP_INIT_PARAM;

/** ------ 车道信息 ------ */
typedef struct
{
    uint64_t    u8RoadId;
    uint32_t    u4ObjectId;
    float       u4Width;
    uint16_t    u2Type;
    int8_t      u1Id;
    uint8_t     u1NeighborMask;            /**< @link D_SP_LANE_EXISTS */
    int8_t      u1LeftLaneId;
    int8_t      u1RightLaneId;
    uint8_t     au1Spare[2];
} S_SP_LANE_INFO;

/** ------ 几何信息 ------ */
typedef struct
{
    float u4DimX;
    float u4DimY;
    float u4DimZ;
    float u4OffX;
    float u4OffY;
    float u4OffZ;
} S_SP_GEOMETRY;

/** ------ 对象信息 ------ */
typedef struct
{
    S_SP_COORDINATE        sSpeed;
    S_SP_COORDINATE        sAccel;
    S_SP_GEOMETRY          sGeo;
    S_SP_COORDINATE        sPos;
    char                   au1Name[D_SP_SIZE_OBJECT_NAME];
    char                   au1ModelFileName[D_SP_SIZE_OBJECT_NAME];
    char                   au1ModelName[D_SP_SIZE_OBJECT_NAME];
    double                 au8ParamScale[3];
    uint64_t               u8RoadId;
    double                 u8SpeedLimit; //限速信息
    uint32_t               u4Id;
    float                  u4RoadS;
    float                  u4RoadT;
    float                  u4HdgRel;
    float                  u4LaneOffset;
    float                  u4TraveledDist;
    uint16_t               u2visMask;
    uint8_t                u1Type;                       /**< @link D_SP_OBJECT_TYPE */
    int8_t                 u1LaneId;
    uint8_t                u1Dir;                        /**< @link D_SP_ROAD_DIR_FLAG */
    bool                   u1IsOnRoad;  //是否分配车道信息
    uint8_t                u1category;
    uint8_t                u1Spare;
} S_SP_OBJECT_STATE;

/** ------ 传感器定义和状态 ------ */
typedef struct
{
    S_SP_COORDINATE     sPos;
    S_SP_COORDINATE     sOriginCoordSys;
    char                au1Name[D_SP_SIZE_OBJECT_NAME];
    uint32_t            u8HostId;
    uint32_t            u8Id;
    float               au4FovHV[2];
    float               au4ClipNF[2];
    float               au4FovOffHV[2];
    uint8_t             u1Type;					/**< @link D_SP_SENSOR_TYPE */
	uint8_t				u1ModelType;			/**< @link D_SP_SENSOR_MODEL*/
	double				u4IdealFreq;
	uint32_t			u4ResL;
	uint32_t			u4ResV;
	double				u4SenSizeL;
	double				u4SenSizeW;
	double				u4LenFd;
	double				u4DistCenL;
	double				u4DistCenW;
	double				u4DistParK1;
	double				u4DistParK2;
	uint8_t             au1Spare[2];
} S_SP_SENSOR_INFO;

typedef struct
{
    double u8x;
    double u8y;
    double u8z;
}S_SP_POINT3D;

/** ------ 传感器探测到的对象信息 ------ */
//行人、车辆、障碍物
typedef struct
{
    double              u8Dist;
    double              u8NearestDist;
    double				u8RelativeVelx;		    // 相对于主车X方向上的速度
	double				u8RelativeVely;		    // 相对于主车Y方向上的速度
	double				u8RelativeAccx;		    // 相对于主车X方向上的加速度
	double				u8RelativeAccy;		    // 相对于主车Y方向上的速度
    double				u8HeadingAngle;		    // 目标航向角，对全部传感器有效
    S_SP_COORDINATE     sSensorPos;
    S_SP_COORDINATE     sNearestSensorPos;	    // 目标距离主车的最近点，仅对于毫米波、激光、超声波有效
	S_SP_COORDINATE		sSenNearestPosXL;		    // 目标X轴左侧最近点，仅对于毫米波、激光、超声波有效
	S_SP_COORDINATE		sSenNearestPosXR;		    // 目标X轴右侧最近点，仅对于毫米波、激光、超声波有效
	S_SP_COORDINATE		sSenNearestPosYL;		    // 目标Y轴左侧最近点，仅对于毫米波、激光、超声波有效
	S_SP_COORDINATE		sSenNearestPosYR;		    // 目标Y轴右侧最近点，仅对于毫米波、激光、超声波有效
    S_SP_POINT3D        sBoundingBox[8];
    uint8_t				u1MovingSt;			    // 移动状态标识
} S_SP_DYNAMIC_OBJECT;

//车道线
typedef struct
{
    double				au8RoadMarkCoeffL[4];	// 左侧车道线参数c0-c3，仅对相机有效
	double				au8RoadMarkCoeffR[4];	// 右侧车道线参数c0-c3，仅对相机有效
} S_SP_MARK_OBJECT;

//交通标志
typedef struct
{
    double              u8Dist;
    double              u8NearestDist;
	double				u8TrafficSignDistX;	    // 交通标志X方向距离，仅对相机有效
	double				u8TrafficSignDistY;	    // 交通标志Y方向距离，仅对相机有效
    S_SP_COORDINATE     sSensorPos;
    S_SP_COORDINATE     sNearestSensorPos;	    // 目标距离主车的最近点，仅对于毫米波、激光、超声波有效
    uint8_t             u1TrafficSignType;		// 交通标志类型，仅对相机有效
} S_SP_SIGN_OBJECT;

typedef union
{
    S_SP_DYNAMIC_OBJECT sDynamicObj;            // 马路上的动态障碍物
    S_SP_MARK_OBJECT    sMarkObj;               // 车道线
    S_SP_SIGN_OBJECT    sSignObj;               // 交通标志
} S_SP_OBJECT_UNION;

//传感器监测物体所有信息
typedef struct
{
    uint32_t            u4Id;
    uint32_t            u4SensorId;
    uint16_t            u2Flags;        /**< @link D_SP_SENSOR_OBJECT_FLAG */
    uint8_t             u1Type;         /**< @link D_SP_OBJECT_TYPE */
    int8_t              u1Occlusion;
    int8_t              u1DeltaLanePos;
	uint8_t				u1ValidFlag;		// 有效性标识
	double				u8ExistProb;		// 目标存在的可能性，仅对于毫米波、激光、超声波有效
	double				u8TypeIdProb;		// 目标分类正确的可能性，仅对于毫米波、激光、超声波有效
    S_SP_OBJECT_UNION   sExtraInfo;         // 针对传感器类型，附加信息
} S_SP_SENSOR_DETECTION_INFO;

/** ------ 接触点信息 ------ */
typedef struct
{
    S_SP_COORDINATE     sRoadDataIn;
    uint16_t            u2Id;
    uint16_t            u2Spare;
} S_SP_CONTACT_POINT;

/** ------ 交通标志信息 ------ */
typedef struct
{
    char                au1Type[32];          /**< @link D_SP_SIGNAL_TYPE_SUBTYPE */
    S_SP_COORDINATE     sPos;
    uint32_t            u4TrafficSignId;
    uint32_t            u4ObjectId;
    char                au1SubType[32];       /**< @link D_SP_SIGNAL_TYPE_SUBTYPE */
    float               u4RoadDist;
    float               u4Value;
    int8_t              u1MinLane;
    int8_t              u1MaxLane;
    uint8_t             au1Spare[2];
} S_SP_TRAFFIC_SIGN;

/** ------ 车辆对应的道路状态 ------ */
typedef struct
{
    uint64_t            u8RoadId;
    uint32_t            u4ObjectId;
    float               u4DefaultSpeed;
    float               u4WaterLevel;
    float               u4DistToJunc;
} S_SP_ROAD_STATE;

/** ------ 环境信息 ------ */
typedef struct
{
    double              u8RainIntensity;
    double              u8SnowIntensity;
    double              u8FogIntensity;
    double              u8FogVisualRange;
    uint32_t            u4TimeOfDay;
    int16_t             u2TimeZoneMinutesWest;
    uint16_t            u2Year;
    uint8_t             u1CloudState;            /**< @link D_SP_ENV_CLOUD_STATE */
    uint8_t             u1Day;
    uint8_t             u1Month;
} S_SP_ENVIRONMENT;

/** ------ 驾驶员控制输入的信息 ------ */
typedef struct
{
    uint32_t            u4ObjectId;
    float               u4MtWheel;
    double              u8MasterCylinderPressure;
    double              u8SteeringWheel;
    double              u8ThrottlePedal;
    double              u8BrakePedal;
    double              u8AccelTgt;
    double              u8SteeringTorque;
    double              u8StopDistance;
    double              u8TargetSpeed;
    double              u8Vx;
    double              u8Wr;
    double              u8VLFWheelSpd;
    double              u8VRFWheelSpd;
    double              u8VLRWheelSpd;
    double              u8VRRWheelSpd;
    double              u8Ax;
    double              u8Ay;
    double              u8SteeringWheelAngularRate;
    double              u8DrvTorqAct;
    double              u8Xmc;
    double              u8Ymc;
    double              u8YawThetaVehicle;
    double              u8PitchThetaVehicle;
    double              u8RollThetaVehicle;
    double              u8PitchRateVehicle;
    double              u8RollRateVehicle;
    double              u8SinSlopeout;
    double              u8VehicleCurv;
    double              u8TmotorCmd;
    double              u8Tmotor;
    double              u8EnergySourceLevel;
    double              u8WLFWheelSpd;
    double              u8WRFWheelSpd;
    double              u8WLRWheelSpd;
    double              u8WRRWheelSpd;
    double              u8WGearSpd;
    uint8_t             u1LFWheelRotatedDir;
    uint8_t             u1LRWheelRotatedDir;
    uint8_t             u1RFWheelRotatedDir;
    uint8_t             u1RRWheelRotatedDir;
    uint8_t             u1BrakePedalStatus;
    uint8_t             u1VehicleDir;
    uint8_t             u1BrkType;
    int8_t              u1Gear;             /**< @link D_SP_GEAR_BOX_POS */
} S_SP_DRIVER_CTRL;

/** ------ 交通灯相位信息 ------ */
typedef struct
{
    float               u4Duration;
    uint8_t             u1Status;                            /**< @link D_SP_TRLIGHT_STATUS */
    uint8_t             au1Spare[3];
} S_SP_TRAFFIC_LIGHT_PHASE;

/** ------ 交通灯信息 ------ */
typedef struct
{
    int32_t             u4Id;
    int32_t             u4CtrlId;
    uint32_t            u4NoPhases;
    uint32_t            u4DataSize;
    float               u4State;
    float               u4CycleTime;
} S_SP_TRAFFIC_LIGHT;

/** ------ 停车位信息 ------ */
typedef struct
{
    S_SP_GEOMETRY       sGeo;
    S_SP_COORDINATE     sPos;
    float               u4RoadS;
    float               u4RoadT;
    uint64_t            u8SlotId;
} S_SP_PARKINGSPACE;

/** ------ 同步信号 ------ */
typedef struct
{
    uint32_t            u4CmdMask;       /**< @link D_SP_SYNC_CMD             */
    uint32_t            u4UserData;      /**  customSignal                    */
} S_SP_SYNC;

/** ------ 查询道路点 ------ */
typedef struct
{
    double              u8X;
    double              u8Y;
    uint16_t            u2Id;
    uint16_t            u2Spare;
} S_SP_ROAD_QUERY;

/** ------ MIL测试主车信息描述包 ------ */
typedef struct
{
    S_SP_OBJECT_STATE	            sObjectState;
    double                          u4initSpeed;
    double                          u8DistRoadEnd;
    uint32_t                        u4LightMask;               /**< @link D_SP_VEHICLE_LIGHT */
    float                           u4WheelSpeedFL;
    float                           u4WheelSpeedFR;
    float                           u4WheelSpeedRL;
    float                           u4WheelSpeedRR;
    float                           u4MasterCylinderPressure;
    float                           u4WheelHeightLF;
    float                           u4WheelHeightLR;
    float                           u4WheelHeightRF;
    float                           u4WheelHeightRR;
    float                           u4SteerAngle;
    uint8_t	                        u1objQuantity;
    uint8_t	                        u1irc_id;
    uint8_t	                        u1irc_left_id;
    uint8_t	                        u1irc_right_id;
    uint8_t                         u1cipv_id;
    uint8_t                         u1lmc_id;
    uint8_t                         u1rmc_id;
    uint8_t                         u1isReachInitSpeed;
} S_SP_MIL_EGO_STATE;

/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */
typedef struct
{
    uint32_t    u4LightMask;               /**< @link D_SP_VEHICLE_LIGHT */
    float	    u4DistanceX;
    float	    u4DistanceY;
    float	    u4VelocityX;
    float	    u4VelocityY;
    float	    u4AccelerationX;
    float	    u4AccelerationY;
    float	    u4YawRate;
    float       u4Dist;
    float       u4Angle;
    uint8_t	    u1ObjClass;
    uint8_t     u1Flag_detected;
    uint8_t	    u1Movable;
    uint8_t	    u1Moving;
    uint8_t     u1Obj_Age;
} S_SP_MIL_OBJECT_STATE_BASE;

/** ------ MIL测试环境车、行人、障碍物信息 ------ */
typedef struct
{
    S_SP_OBJECT_STATE	            sObjectState;
    S_SP_MIL_OBJECT_STATE_BASE	    sMilBase;
} S_SP_MIL_OBJECT_STATE;

/** ------ MIL测试车道线信息描述包 ------ */
typedef struct
{
    uint64_t            u8RoadId;
    double              curvVert;
    float               u4StartDx;
    float               u4Width;
    float	            u4ViewRangeStart;
    float	            u4ViewRangeEnd;
    float	            u4MeasuredVREnd;
    float	            u4C0;
    float	            u4C1;
    float	            u4C2;
    float	            u4C3;
    uint16_t	        u2LaneChange;
    int8_t	            u1LaneId;
    uint8_t	            u1Quality;
    uint8_t	            u1Type;           	/** @link D_SP_ROADMARK_TYPE */
    uint8_t	            u1Color;          	/** @link D_SP_ROADMARK_COLOR */
    uint8_t	            u1LeftCrossing;
    uint8_t	            u1RightCrossing;
} S_SP_MIL_ROADMARK;

/** ------ MIL AMESim 测试信息描述包 ------ */
typedef struct
{
    float       u4LeftLen;              /* 距离当前路段结束时的长度 */
    float       u4NextLen;              /* 下一条路段长度 */
    float       u4NextAgeSpeed;         /* 下一条路段平均车速 */
    float       u4NextMinSpeed;         /* 下一条路段最低车速 */
    float       u4NextMaxSpeed;         /* 下一条路段最高车速 */
    float       u4NextGradient;         /* 下一条路段坡度大小 */
    float       u4NextCongest;          /* 路段拥堵程度 */
    uint8_t     u1RoadType;             /* 道路类型: 0 城市道路, 1 乡村道路, 2 高速路, 3 高架路 */
    float       u4DisLimit;             /* 距离前方限速区 */
    bool        u1IsFarAwayLimit;       /* 是否驶出限速区: false 否， true 是 */
    float       u4LimitSpeed;           /* 限制的速度是多少 */
    bool        ulIsJunction;           /* 前方路口状态: false 非路口， true 为路口 */
    float       u4DisJunction;          /* 抵达前方路口的距离 */
    bool        ulIsFarAwayJunc;        /* 是否驶出路口 */
    uint8_t     ultrafficLightStat;     /* 前方红绿灯状态: 0 红， 1 黄， 2 绿 */
    float       u4Curvity;              /* 前方曲率 */
    float       u4RelativeVel;          /* 本车距离前车的相对速度 */
    float       u4RelativeDis;          /* 本车距离前车的相对距离 */
} S_SP_MIL_AMESIM_SIGNAL;

/** ------ V2X 告警信息 ------ */
typedef struct
{
    uint32_t      u4Type;                 /*告警信息类型*/
} S_SP_V2X_WARNINGINFORMATION;


/** ------ AD发送给simpro的CSV数据 ------ */
typedef struct
{
    float               u4AccelTgt;
    float               u4SteeringWheel;
    uint32_t            u4ADStatus;
} S_SP_CSV_DATA;

/** ------激活控制器 ------ */
typedef struct
{
    uint32_t        u4ObjectId;
    bool            u1Lateral;
    bool            u1Longitudinal;
    uint8_t         au1Spare[2];
}S_SP_ACTIVATE_CONTROLLER;

/** ------分配控制器的属性信息 ------ */
typedef struct
{
    char            au1Name[D_SP_SIZE_PROPERTY_NAME];
    char            au1Value[D_SP_SIZE_PROPERTY_VALUE];
}S_SP_ASSIGN_CONTROLLER_PROPERTY;

/** ------分配控制器 ------ */
typedef struct
{
    char            au1ControllerName[D_SP_SIZE_OBJECT_NAME];
    uint32_t        u4ObjectId;
    uint32_t        u4PropertyNum;
}S_SP_ASSIGN_CONTROLLER;

/** ------接管控制器 ------ */
typedef struct
{
    double	        u8ThrottleValue;
    double	        u8BrakeValue;
    double	        u8SteeringWheelValue;
    double	        u8ParkingBrakeValue;
    double	        u8ClutchValue;
    double	        u8GearValue;
    uint32_t	    u4ObjectId;
    bool	        u1ThrottleActive;
    bool	        u1BrakeActive;
    bool	        u1SteeringWheelActive;
    bool	        u1ParkingBrakeActive;
    bool	        u1ClutchActive;
    bool	        u1GearActive;
    uint8_t	        au1Spare[2];
}S_SP_OVERRIDE_CONTROLLER;

/** ------自定义指令 ------ */
typedef struct
{
    char	    au1Type[D_SP_SIZE_PROPERTY_NAME];
    char	    au1Command[D_SP_SIZE_USER_DEFINED_STRING];
    uint32_t	u4ObjectId;
}S_SP_CUSTOM_COMMAND;

/** ------算法信号数据 ------ */
typedef struct
{
    char    au1SignalName[D_SP_SIZE_AD_SIGNAL_NAME];
    double  u8SignalValue;
} S_SP_AD_SIGNAL_DATA;

//RSU广播信息
typedef struct
{
	uint32_t type; //type 0：无信息 1：我是收费站 2：支付卡信息 3：扣款通知
}S_SP_RSU_VNFP_INFO;

//OBU应答信息
typedef struct
{
	uint32_t type; //0：无信息 1：我是汽车 2：支付卡信息 3：结束通信
}S_SP_OBU_VNFP_INFO;

typedef struct
{
    uint8_t msgcnt;
    double u8X;
    double u8Y;
    double u8Z;
    double yaw;
    double pitch;
    double roll;
}S_SP_IMU_DATA;

typedef struct
{
    uint8_t startChar;
    uint8_t cmd[10];
    uint8_t _time[10];
    double lat;
    uint8_t NorS;
    double lon;
    uint8_t EorW;
    uint8_t mode[2];
    int   count;
    double horizonprecious;
    double geoidalheight;
    uint8_t meter1;
    double height;
    uint8_t meter2;
    double dataage;
    int  basestationflag;
    uint8_t sperator;
    uint8_t checksum[2];
}S_SP_GNSS_GGA;

typedef struct
{
    uint8_t msgcnt;
    double u8x;
    double u8y;
    double u8z;
}S_SP_UWB_DATA;

/** ------模型轮廓数据 ------ */
typedef struct
{
    char            au1ModelName[D_SP_SIZE_OBJECT_NAME];
    double          au8OutlinePoints[16][3];
} S_SP_MODEL_OUTLINE;

/** ------ 控制TTC输出状态 ------ */
typedef struct
{
    uint32_t u4Status;
} S_SP_TTC_CONTROL;

/** ------ Msg header ------ */
typedef struct
{
    double          u8SimTime;
    uint32_t        u4HeaderSize;
    uint32_t        u4DataSize;
    uint32_t        u4FrameNo;
    uint8_t         u1Sender;                 /** @link D_SP_SENDER */
    uint8_t         au1Spare[3];
} S_SP_MSG_HDR;

/** ------ Pkg header ------ */
typedef struct
{
    uint32_t        u4HeaderSize;
    uint32_t        u4DataSize;
    uint32_t        u4ElementSize;
    uint16_t        u2PkgId;
    uint16_t        u2Spare;
} S_SP_MSG_ENTRY_HDR;

/** ------ Pkg data ------ */
typedef union
{
    S_SP_LANE_INFO                 sLaneInfo;                      /**< @msgid D_SP_PKG_ID_LANE_INFO                 */
    S_SP_SENSOR_INFO               sSensorState;                   /**< @msgid D_SP_PKG_ID_SENSOR_INFO               */
    S_SP_SENSOR_DETECTION_INFO     sSensorObject;                  /**< @msgid D_SP_PKG_ID_SENSOR_DETECTION_INFO     */
    S_SP_CONTACT_POINT             sContactPoint;                  /**< @msgid D_SP_PKG_ID_CONTACT_POINT             */
    S_SP_TRAFFIC_SIGN              sTrafficSign;                   /**< @msgid D_SP_PKG_ID_TRAFFIC_SIGN              */
    S_SP_ROAD_STATE                sRoadState;                     /**< @msgid D_SP_PKG_ID_ROAD_STATE                */
    S_SP_ENVIRONMENT               sEnvironment;                   /**< @msgid D_SP_PKG_ID_ENVIRONMENT               */
    S_SP_DRIVER_CTRL               sDriverCtrl;                    /**< @msgid D_SP_PKG_ID_DRIVER_CTRL               */
    S_SP_TRAFFIC_LIGHT             sTrafficLight;                  /**< @msgid D_SP_PKG_ID_TRAFFIC_LIGHT             */
    S_SP_SYNC                      sSync;                          /**< @msgid D_SP_PKG_ID_SYNC                      */
    S_SP_ROAD_QUERY                sRoadQuery;                     /**< @msgid D_SP_PKG_ID_ROAD_QUERY                */
    S_SP_MIL_EGO_STATE             sEgoState;                      /**< @msgid D_SP_MIL_PKG_ID_EGO_DATA              */
    S_SP_MIL_OBJECT_STATE          sMilObjectState;                /**< @msgid D_SP_MIL_PKG_ID_OBJECT_DATA           */
    S_SP_MIL_ROADMARK              sMilRoadMark;                   /**< @msgid D_SP_MIL_PKG_ID_ROADMARK              */
    S_SP_INIT_PARAM                sInitParam;                     /**< @msgid D_SP_PKG_ID_INIT_PARAM                */
    S_SP_CSV_DATA                  sCsvData;                       /**< @msgid D_SP_PKG_ID_CSV_DATA                  */
    S_SP_MIL_AMESIM_SIGNAL         sMilAmesimSignal;               /**< @msgid D_SP_MIL_PKG_ID_AMESIM                */
    S_SP_V2X_WARNINGINFORMATION    sV2XWarninginformation;         /**< @msgid D_SP_PKG_ID_V2X_WARNINGINFORMATION    */
    S_SP_ACTIVATE_CONTROLLER       sActivateController;            /**< @msgid D_SP_PKG_ID_ACTIVATE_CONTROLLER       */
    S_SP_ASSIGN_CONTROLLER         sAssignController;              /**< @msgid D_SP_PKG_ID_ASSIGN_CONTROLLER         */
    S_SP_OVERRIDE_CONTROLLER       sOverrideController;            /**< @msgid D_SP_PKG_ID_OVERRIDE_CONTROLLER       */
    S_SP_CUSTOM_COMMAND            sCustomCommand;                 /**< @msgid D_SP_PKG_ID_CUSTOM_COMMAND            */
    S_SP_AD_SIGNAL_DATA            sADSignalData;                  /**< @msgid D_SP_PKG_ID_AD_SIGNAL_DATA            */
    S_SP_OBU_VNFP_INFO             sObuVNFPInfo;                   /**< @msgid D_SP_PKG_ID_OBU_VNFP_INFO             */
    S_SP_RSU_VNFP_INFO             sRsuVNFPInfo;                   /**< @msgid D_SP_PKG_ID_RSU_VNFP_INFO             */
    S_SP_GNSS_GGA                  sGNSSGGA;                       /**< @msgid D_SP_PKG_ID_GNSS_DATA                 */
    S_SP_IMU_DATA                  sIMUData;                       /**< @msgid D_SP_PKG_ID_IMU_DATA                  */
    S_SP_UWB_DATA                  sUWBData;                       /**< @msgid D_SP_PKG_ID_UWB_DATA                  */
    S_SP_MODEL_OUTLINE             sModelOutline;                  /**< @msgid D_SP_PKG_ID_MODEL_OUTLINE             */
    S_SP_TTC_CONTROL               sTTCControl;                    /**< @msgid D_SP_PKG_ID_TTC_CONTROL               */
} S_SP_MSG_UNION;

/** ------ Msg struct ------ */
typedef struct
{
    S_SP_MSG_HDR            sMsgHdr;
    S_SP_MSG_ENTRY_HDR      sPkgHdr;
    S_SP_MSG_UNION          sPkgData;
} S_SP_MSG_t;

#pragma pack()
#endif //SP_COMMUNICATION_TYPE_H
