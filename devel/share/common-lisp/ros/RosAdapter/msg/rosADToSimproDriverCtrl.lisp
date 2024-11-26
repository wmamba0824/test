; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude rosADToSimproDriverCtrl.msg.html

(cl:defclass <rosADToSimproDriverCtrl> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type RosAdapter-msg:header
    :initform (cl:make-instance 'RosAdapter-msg:header))
   (driverCtrl
    :reader driverCtrl
    :initarg :driverCtrl
    :type RosAdapter-msg:driver_ctrl
    :initform (cl:make-instance 'RosAdapter-msg:driver_ctrl))
   (egoState
    :reader egoState
    :initarg :egoState
    :type RosAdapter-msg:mil_ego_state
    :initform (cl:make-instance 'RosAdapter-msg:mil_ego_state))
   (csvData
    :reader csvData
    :initarg :csvData
    :type RosAdapter-msg:csv_data
    :initform (cl:make-instance 'RosAdapter-msg:csv_data))
   (v2xWarning
    :reader v2xWarning
    :initarg :v2xWarning
    :type RosAdapter-msg:v2x_warninginformation
    :initform (cl:make-instance 'RosAdapter-msg:v2x_warninginformation))
   (obuVnfpInfo
    :reader obuVnfpInfo
    :initarg :obuVnfpInfo
    :type RosAdapter-msg:obu_vnfp_info
    :initform (cl:make-instance 'RosAdapter-msg:obu_vnfp_info))
   (adSignalDatas
    :reader adSignalDatas
    :initarg :adSignalDatas
    :type RosAdapter-msg:ad_signal_data
    :initform (cl:make-instance 'RosAdapter-msg:ad_signal_data))
   (ttcControl
    :reader ttcControl
    :initarg :ttcControl
    :type RosAdapter-msg:ttc_control
    :initform (cl:make-instance 'RosAdapter-msg:ttc_control)))
)

(cl:defclass rosADToSimproDriverCtrl (<rosADToSimproDriverCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rosADToSimproDriverCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rosADToSimproDriverCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<rosADToSimproDriverCtrl> is deprecated: use RosAdapter-msg:rosADToSimproDriverCtrl instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:head-val is deprecated.  Use RosAdapter-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'driverCtrl-val :lambda-list '(m))
(cl:defmethod driverCtrl-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:driverCtrl-val is deprecated.  Use RosAdapter-msg:driverCtrl instead.")
  (driverCtrl m))

(cl:ensure-generic-function 'egoState-val :lambda-list '(m))
(cl:defmethod egoState-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:egoState-val is deprecated.  Use RosAdapter-msg:egoState instead.")
  (egoState m))

(cl:ensure-generic-function 'csvData-val :lambda-list '(m))
(cl:defmethod csvData-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:csvData-val is deprecated.  Use RosAdapter-msg:csvData instead.")
  (csvData m))

(cl:ensure-generic-function 'v2xWarning-val :lambda-list '(m))
(cl:defmethod v2xWarning-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:v2xWarning-val is deprecated.  Use RosAdapter-msg:v2xWarning instead.")
  (v2xWarning m))

(cl:ensure-generic-function 'obuVnfpInfo-val :lambda-list '(m))
(cl:defmethod obuVnfpInfo-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:obuVnfpInfo-val is deprecated.  Use RosAdapter-msg:obuVnfpInfo instead.")
  (obuVnfpInfo m))

(cl:ensure-generic-function 'adSignalDatas-val :lambda-list '(m))
(cl:defmethod adSignalDatas-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:adSignalDatas-val is deprecated.  Use RosAdapter-msg:adSignalDatas instead.")
  (adSignalDatas m))

(cl:ensure-generic-function 'ttcControl-val :lambda-list '(m))
(cl:defmethod ttcControl-val ((m <rosADToSimproDriverCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:ttcControl-val is deprecated.  Use RosAdapter-msg:ttcControl instead.")
  (ttcControl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rosADToSimproDriverCtrl>) ostream)
  "Serializes a message object of type '<rosADToSimproDriverCtrl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driverCtrl) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'egoState) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'csvData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2xWarning) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obuVnfpInfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adSignalDatas) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ttcControl) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rosADToSimproDriverCtrl>) istream)
  "Deserializes a message object of type '<rosADToSimproDriverCtrl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driverCtrl) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'egoState) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'csvData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2xWarning) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obuVnfpInfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adSignalDatas) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ttcControl) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rosADToSimproDriverCtrl>)))
  "Returns string type for a message object of type '<rosADToSimproDriverCtrl>"
  "RosAdapter/rosADToSimproDriverCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rosADToSimproDriverCtrl)))
  "Returns string type for a message object of type 'rosADToSimproDriverCtrl"
  "RosAdapter/rosADToSimproDriverCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rosADToSimproDriverCtrl>)))
  "Returns md5sum for a message object of type '<rosADToSimproDriverCtrl>"
  "7665be9ba648b35520d49a30fcb2afed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rosADToSimproDriverCtrl)))
  "Returns md5sum for a message object of type 'rosADToSimproDriverCtrl"
  "7665be9ba648b35520d49a30fcb2afed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rosADToSimproDriverCtrl>)))
  "Returns full string definition for message of type '<rosADToSimproDriverCtrl>"
  (cl:format cl:nil "header                            head~%driver_ctrl                       driverCtrl~%mil_ego_state                     egoState~%csv_data                          csvData~%v2x_warninginformation            v2xWarning~%obu_vnfp_info                     obuVnfpInfo~%ad_signal_data                    adSignalDatas~%ttc_control                       ttcControl~%================================================================================~%MSG: RosAdapter/header~%# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%================================================================================~%MSG: RosAdapter/driver_ctrl~%# /** ------ 驾驶员控制输入的信息 ------ */~%~%uint32       u4ObjectId~%float32      u4MtWheel~%float64      u8MasterCylinderPressure~%float64      u8SteeringWheel~%float64      u8ThrottlePedal~%float64      u8BrakePedal~%float64      u8AccelTgt~%float64      u8SteeringTorque~%float64      u8StopDistance~%float64      u8TargetSpeed~%float64      u8Vx~%float64      u8Wr~%float64      u8VLFWheelSpd~%float64      u8VRFWheelSpd~%float64      u8VLRWheelSpd~%float64      u8VRRWheelSpd~%float64      u8Ax~%float64      u8Ay~%float64      u8SteeringWheelAngularRate~%float64      u8DrvTorqAct~%float64      u8Xmc~%float64      u8Ymc~%float64      u8YawThetaVehicle~%float64      u8PitchThetaVehicle~%float64      u8RollThetaVehicle~%float64      u8PitchRateVehicle~%float64      u8RollRateVehicle~%float64      u8SinSlopeout~%float64      u8VehicleCurv~%float64      u8TmotorCmd~%float64      u8Tmotor~%float64      u8EnergySourceLevel~%float64      u8WLFWheelSpd~%float64      u8WRFWheelSpd~%float64      u8WLRWheelSpd~%float64      u8WRRWheelSpd~%float64      u8WGearSpd~%uint8        u1LFWheelRotatedDir~%uint8        u1LRWheelRotatedDir~%uint8        u1RFWheelRotatedDir~%uint8        u1RRWheelRotatedDir~%uint8        u1BrakePedalStatus~%uint8        u1VehicleDir~%uint8        u1BrkType~%int8         u1Gear ~%================================================================================~%MSG: RosAdapter/mil_ego_state~%# /** ------ MIL测试主车信息描述包 ------ */~%~%object_state   sObjectState~%float64        u4initSpeed~%float64        u8DistRoadEnd~%uint32         u4LightMask               ~%float32        u4WheelSpeedFL~%float32        u4WheelSpeedFR~%float32        u4WheelSpeedRL~%float32        u4WheelSpeedRR~%float32        u4MasterCylinderPressure~%float32        u4WheelHeightLF~%float32        u4WheelHeightLR~%float32        u4WheelHeightRF~%float32        u4WheelHeightRR~%float32        u4SteerAngle~%uint8          u1objQuantity~%uint8          u1irc_id~%uint8          u1irc_left_id~%uint8          u1irc_right_id~%uint8          u1cipv_id~%uint8          u1lmc_id~%uint8          u1rmc_id~%uint8          u1isReachInitSpeed~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/csv_data~%# /** ------ AD发送给simpro的CSV数据 ------ */~%~%float32  u4AccelTgt~%float32  u4SteeringWheel~%uint32   u4ADStatus~%================================================================================~%MSG: RosAdapter/v2x_warninginformation~%# /** ------ V2X 告警信息 ------ */~%~%uint32 u4Type~%================================================================================~%MSG: RosAdapter/obu_vnfp_info~%uint32   type~%================================================================================~%MSG: RosAdapter/ad_signal_data~%string      au1SignalName~%float64     u8SignalValue~%================================================================================~%MSG: RosAdapter/ttc_control~%uint32  u4Status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rosADToSimproDriverCtrl)))
  "Returns full string definition for message of type 'rosADToSimproDriverCtrl"
  (cl:format cl:nil "header                            head~%driver_ctrl                       driverCtrl~%mil_ego_state                     egoState~%csv_data                          csvData~%v2x_warninginformation            v2xWarning~%obu_vnfp_info                     obuVnfpInfo~%ad_signal_data                    adSignalDatas~%ttc_control                       ttcControl~%================================================================================~%MSG: RosAdapter/header~%# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%================================================================================~%MSG: RosAdapter/driver_ctrl~%# /** ------ 驾驶员控制输入的信息 ------ */~%~%uint32       u4ObjectId~%float32      u4MtWheel~%float64      u8MasterCylinderPressure~%float64      u8SteeringWheel~%float64      u8ThrottlePedal~%float64      u8BrakePedal~%float64      u8AccelTgt~%float64      u8SteeringTorque~%float64      u8StopDistance~%float64      u8TargetSpeed~%float64      u8Vx~%float64      u8Wr~%float64      u8VLFWheelSpd~%float64      u8VRFWheelSpd~%float64      u8VLRWheelSpd~%float64      u8VRRWheelSpd~%float64      u8Ax~%float64      u8Ay~%float64      u8SteeringWheelAngularRate~%float64      u8DrvTorqAct~%float64      u8Xmc~%float64      u8Ymc~%float64      u8YawThetaVehicle~%float64      u8PitchThetaVehicle~%float64      u8RollThetaVehicle~%float64      u8PitchRateVehicle~%float64      u8RollRateVehicle~%float64      u8SinSlopeout~%float64      u8VehicleCurv~%float64      u8TmotorCmd~%float64      u8Tmotor~%float64      u8EnergySourceLevel~%float64      u8WLFWheelSpd~%float64      u8WRFWheelSpd~%float64      u8WLRWheelSpd~%float64      u8WRRWheelSpd~%float64      u8WGearSpd~%uint8        u1LFWheelRotatedDir~%uint8        u1LRWheelRotatedDir~%uint8        u1RFWheelRotatedDir~%uint8        u1RRWheelRotatedDir~%uint8        u1BrakePedalStatus~%uint8        u1VehicleDir~%uint8        u1BrkType~%int8         u1Gear ~%================================================================================~%MSG: RosAdapter/mil_ego_state~%# /** ------ MIL测试主车信息描述包 ------ */~%~%object_state   sObjectState~%float64        u4initSpeed~%float64        u8DistRoadEnd~%uint32         u4LightMask               ~%float32        u4WheelSpeedFL~%float32        u4WheelSpeedFR~%float32        u4WheelSpeedRL~%float32        u4WheelSpeedRR~%float32        u4MasterCylinderPressure~%float32        u4WheelHeightLF~%float32        u4WheelHeightLR~%float32        u4WheelHeightRF~%float32        u4WheelHeightRR~%float32        u4SteerAngle~%uint8          u1objQuantity~%uint8          u1irc_id~%uint8          u1irc_left_id~%uint8          u1irc_right_id~%uint8          u1cipv_id~%uint8          u1lmc_id~%uint8          u1rmc_id~%uint8          u1isReachInitSpeed~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/csv_data~%# /** ------ AD发送给simpro的CSV数据 ------ */~%~%float32  u4AccelTgt~%float32  u4SteeringWheel~%uint32   u4ADStatus~%================================================================================~%MSG: RosAdapter/v2x_warninginformation~%# /** ------ V2X 告警信息 ------ */~%~%uint32 u4Type~%================================================================================~%MSG: RosAdapter/obu_vnfp_info~%uint32   type~%================================================================================~%MSG: RosAdapter/ad_signal_data~%string      au1SignalName~%float64     u8SignalValue~%================================================================================~%MSG: RosAdapter/ttc_control~%uint32  u4Status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rosADToSimproDriverCtrl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driverCtrl))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'egoState))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'csvData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2xWarning))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obuVnfpInfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adSignalDatas))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ttcControl))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rosADToSimproDriverCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'rosADToSimproDriverCtrl
    (cl:cons ':head (head msg))
    (cl:cons ':driverCtrl (driverCtrl msg))
    (cl:cons ':egoState (egoState msg))
    (cl:cons ':csvData (csvData msg))
    (cl:cons ':v2xWarning (v2xWarning msg))
    (cl:cons ':obuVnfpInfo (obuVnfpInfo msg))
    (cl:cons ':adSignalDatas (adSignalDatas msg))
    (cl:cons ':ttcControl (ttcControl msg))
))
