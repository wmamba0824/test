;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::rosADToSimproDriverCtrl)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'rosADToSimproDriverCtrl (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ROSADTOSIMPRODRIVERCTRL")
  (make-package "ROSADAPTER::ROSADTOSIMPRODRIVERCTRL"))

(in-package "ROS")
;;//! \htmlinclude rosADToSimproDriverCtrl.msg.html


(defclass RosAdapter::rosADToSimproDriverCtrl
  :super ros::object
  :slots (_head _driverCtrl _egoState _csvData _v2xWarning _obuVnfpInfo _adSignalDatas _ttcControl ))

(defmethod RosAdapter::rosADToSimproDriverCtrl
  (:init
   (&key
    ((:head __head) (instance RosAdapter::header :init))
    ((:driverCtrl __driverCtrl) (instance RosAdapter::driver_ctrl :init))
    ((:egoState __egoState) (instance RosAdapter::mil_ego_state :init))
    ((:csvData __csvData) (instance RosAdapter::csv_data :init))
    ((:v2xWarning __v2xWarning) (instance RosAdapter::v2x_warninginformation :init))
    ((:obuVnfpInfo __obuVnfpInfo) (instance RosAdapter::obu_vnfp_info :init))
    ((:adSignalDatas __adSignalDatas) (instance RosAdapter::ad_signal_data :init))
    ((:ttcControl __ttcControl) (instance RosAdapter::ttc_control :init))
    )
   (send-super :init)
   (setq _head __head)
   (setq _driverCtrl __driverCtrl)
   (setq _egoState __egoState)
   (setq _csvData __csvData)
   (setq _v2xWarning __v2xWarning)
   (setq _obuVnfpInfo __obuVnfpInfo)
   (setq _adSignalDatas __adSignalDatas)
   (setq _ttcControl __ttcControl)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:driverCtrl
   (&rest __driverCtrl)
   (if (keywordp (car __driverCtrl))
       (send* _driverCtrl __driverCtrl)
     (progn
       (if __driverCtrl (setq _driverCtrl (car __driverCtrl)))
       _driverCtrl)))
  (:egoState
   (&rest __egoState)
   (if (keywordp (car __egoState))
       (send* _egoState __egoState)
     (progn
       (if __egoState (setq _egoState (car __egoState)))
       _egoState)))
  (:csvData
   (&rest __csvData)
   (if (keywordp (car __csvData))
       (send* _csvData __csvData)
     (progn
       (if __csvData (setq _csvData (car __csvData)))
       _csvData)))
  (:v2xWarning
   (&rest __v2xWarning)
   (if (keywordp (car __v2xWarning))
       (send* _v2xWarning __v2xWarning)
     (progn
       (if __v2xWarning (setq _v2xWarning (car __v2xWarning)))
       _v2xWarning)))
  (:obuVnfpInfo
   (&rest __obuVnfpInfo)
   (if (keywordp (car __obuVnfpInfo))
       (send* _obuVnfpInfo __obuVnfpInfo)
     (progn
       (if __obuVnfpInfo (setq _obuVnfpInfo (car __obuVnfpInfo)))
       _obuVnfpInfo)))
  (:adSignalDatas
   (&rest __adSignalDatas)
   (if (keywordp (car __adSignalDatas))
       (send* _adSignalDatas __adSignalDatas)
     (progn
       (if __adSignalDatas (setq _adSignalDatas (car __adSignalDatas)))
       _adSignalDatas)))
  (:ttcControl
   (&rest __ttcControl)
   (if (keywordp (car __ttcControl))
       (send* _ttcControl __ttcControl)
     (progn
       (if __ttcControl (setq _ttcControl (car __ttcControl)))
       _ttcControl)))
  (:serialization-length
   ()
   (+
    ;; RosAdapter/header _head
    (send _head :serialization-length)
    ;; RosAdapter/driver_ctrl _driverCtrl
    (send _driverCtrl :serialization-length)
    ;; RosAdapter/mil_ego_state _egoState
    (send _egoState :serialization-length)
    ;; RosAdapter/csv_data _csvData
    (send _csvData :serialization-length)
    ;; RosAdapter/v2x_warninginformation _v2xWarning
    (send _v2xWarning :serialization-length)
    ;; RosAdapter/obu_vnfp_info _obuVnfpInfo
    (send _obuVnfpInfo :serialization-length)
    ;; RosAdapter/ad_signal_data _adSignalDatas
    (send _adSignalDatas :serialization-length)
    ;; RosAdapter/ttc_control _ttcControl
    (send _ttcControl :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/header _head
       (send _head :serialize s)
     ;; RosAdapter/driver_ctrl _driverCtrl
       (send _driverCtrl :serialize s)
     ;; RosAdapter/mil_ego_state _egoState
       (send _egoState :serialize s)
     ;; RosAdapter/csv_data _csvData
       (send _csvData :serialize s)
     ;; RosAdapter/v2x_warninginformation _v2xWarning
       (send _v2xWarning :serialize s)
     ;; RosAdapter/obu_vnfp_info _obuVnfpInfo
       (send _obuVnfpInfo :serialize s)
     ;; RosAdapter/ad_signal_data _adSignalDatas
       (send _adSignalDatas :serialize s)
     ;; RosAdapter/ttc_control _ttcControl
       (send _ttcControl :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; RosAdapter/driver_ctrl _driverCtrl
     (send _driverCtrl :deserialize buf ptr-) (incf ptr- (send _driverCtrl :serialization-length))
   ;; RosAdapter/mil_ego_state _egoState
     (send _egoState :deserialize buf ptr-) (incf ptr- (send _egoState :serialization-length))
   ;; RosAdapter/csv_data _csvData
     (send _csvData :deserialize buf ptr-) (incf ptr- (send _csvData :serialization-length))
   ;; RosAdapter/v2x_warninginformation _v2xWarning
     (send _v2xWarning :deserialize buf ptr-) (incf ptr- (send _v2xWarning :serialization-length))
   ;; RosAdapter/obu_vnfp_info _obuVnfpInfo
     (send _obuVnfpInfo :deserialize buf ptr-) (incf ptr- (send _obuVnfpInfo :serialization-length))
   ;; RosAdapter/ad_signal_data _adSignalDatas
     (send _adSignalDatas :deserialize buf ptr-) (incf ptr- (send _adSignalDatas :serialization-length))
   ;; RosAdapter/ttc_control _ttcControl
     (send _ttcControl :deserialize buf ptr-) (incf ptr- (send _ttcControl :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::rosADToSimproDriverCtrl :md5sum-) "7665be9ba648b35520d49a30fcb2afed")
(setf (get RosAdapter::rosADToSimproDriverCtrl :datatype-) "RosAdapter/rosADToSimproDriverCtrl")
(setf (get RosAdapter::rosADToSimproDriverCtrl :definition-)
      "header                            head
driver_ctrl                       driverCtrl
mil_ego_state                     egoState
csv_data                          csvData
v2x_warninginformation            v2xWarning
obu_vnfp_info                     obuVnfpInfo
ad_signal_data                    adSignalDatas
ttc_control                       ttcControl
================================================================================
MSG: RosAdapter/header
# /** ------ Msg header ------ */
float64 u8SimTime
uint32  u4HeaderSize
uint32  u4DataSize
uint32  u4FrameNo
================================================================================
MSG: RosAdapter/driver_ctrl
# /** ------ 驾驶员控制输入的信息 ------ */

uint32       u4ObjectId
float32      u4MtWheel
float64      u8MasterCylinderPressure
float64      u8SteeringWheel
float64      u8ThrottlePedal
float64      u8BrakePedal
float64      u8AccelTgt
float64      u8SteeringTorque
float64      u8StopDistance
float64      u8TargetSpeed
float64      u8Vx
float64      u8Wr
float64      u8VLFWheelSpd
float64      u8VRFWheelSpd
float64      u8VLRWheelSpd
float64      u8VRRWheelSpd
float64      u8Ax
float64      u8Ay
float64      u8SteeringWheelAngularRate
float64      u8DrvTorqAct
float64      u8Xmc
float64      u8Ymc
float64      u8YawThetaVehicle
float64      u8PitchThetaVehicle
float64      u8RollThetaVehicle
float64      u8PitchRateVehicle
float64      u8RollRateVehicle
float64      u8SinSlopeout
float64      u8VehicleCurv
float64      u8TmotorCmd
float64      u8Tmotor
float64      u8EnergySourceLevel
float64      u8WLFWheelSpd
float64      u8WRFWheelSpd
float64      u8WLRWheelSpd
float64      u8WRRWheelSpd
float64      u8WGearSpd
uint8        u1LFWheelRotatedDir
uint8        u1LRWheelRotatedDir
uint8        u1RFWheelRotatedDir
uint8        u1RRWheelRotatedDir
uint8        u1BrakePedalStatus
uint8        u1VehicleDir
uint8        u1BrkType
int8         u1Gear 
================================================================================
MSG: RosAdapter/mil_ego_state
# /** ------ MIL测试主车信息描述包 ------ */

object_state   sObjectState
float64        u4initSpeed
float64        u8DistRoadEnd
uint32         u4LightMask               
float32        u4WheelSpeedFL
float32        u4WheelSpeedFR
float32        u4WheelSpeedRL
float32        u4WheelSpeedRR
float32        u4MasterCylinderPressure
float32        u4WheelHeightLF
float32        u4WheelHeightLR
float32        u4WheelHeightRF
float32        u4WheelHeightRR
float32        u4SteerAngle
uint8          u1objQuantity
uint8          u1irc_id
uint8          u1irc_left_id
uint8          u1irc_right_id
uint8          u1cipv_id
uint8          u1lmc_id
uint8          u1rmc_id
uint8          u1isReachInitSpeed
================================================================================
MSG: RosAdapter/object_state
# /** ------ 对象信息 ------ */
coord           sSpeed
coord           sAccel
geometry        sGeo
coord           sPos
string          au1Name
string          au1ModelFileName
string          au1ModelName
float64[]       au8ParamScale
uint64          u8RoadId
float64         u8SpeedLimit
uint32          u4Id
float32         u4RoadS
float32         u4RoadT
float32         u4HdgRel
float32         u4LaneOffset
float32         u4TraveledDist
uint16          u2visMask
uint8           u1Type
int8            u1LaneId
uint8           u1Dir
bool            u1IsOnRoad
uint8           u1category
================================================================================
MSG: RosAdapter/coord
# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type
================================================================================
MSG: RosAdapter/geometry
# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ
================================================================================
MSG: RosAdapter/csv_data
# /** ------ AD发送给simpro的CSV数据 ------ */

float32  u4AccelTgt
float32  u4SteeringWheel
uint32   u4ADStatus
================================================================================
MSG: RosAdapter/v2x_warninginformation
# /** ------ V2X 告警信息 ------ */

uint32 u4Type
================================================================================
MSG: RosAdapter/obu_vnfp_info
uint32   type
================================================================================
MSG: RosAdapter/ad_signal_data
string      au1SignalName
float64     u8SignalValue
================================================================================
MSG: RosAdapter/ttc_control
uint32  u4Status
")



(provide :RosAdapter/rosADToSimproDriverCtrl "7665be9ba648b35520d49a30fcb2afed")


