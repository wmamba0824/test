; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude rosADToSimproEgoState.msg.html

(cl:defclass <rosADToSimproEgoState> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type RosAdapter-msg:header
    :initform (cl:make-instance 'RosAdapter-msg:header))
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
   (adSignalData
    :reader adSignalData
    :initarg :adSignalData
    :type RosAdapter-msg:ad_signal_data
    :initform (cl:make-instance 'RosAdapter-msg:ad_signal_data))
   (ttcControl
    :reader ttcControl
    :initarg :ttcControl
    :type RosAdapter-msg:ttc_control
    :initform (cl:make-instance 'RosAdapter-msg:ttc_control)))
)

(cl:defclass rosADToSimproEgoState (<rosADToSimproEgoState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rosADToSimproEgoState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rosADToSimproEgoState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<rosADToSimproEgoState> is deprecated: use RosAdapter-msg:rosADToSimproEgoState instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <rosADToSimproEgoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:head-val is deprecated.  Use RosAdapter-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'egoState-val :lambda-list '(m))
(cl:defmethod egoState-val ((m <rosADToSimproEgoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:egoState-val is deprecated.  Use RosAdapter-msg:egoState instead.")
  (egoState m))

(cl:ensure-generic-function 'csvData-val :lambda-list '(m))
(cl:defmethod csvData-val ((m <rosADToSimproEgoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:csvData-val is deprecated.  Use RosAdapter-msg:csvData instead.")
  (csvData m))

(cl:ensure-generic-function 'v2xWarning-val :lambda-list '(m))
(cl:defmethod v2xWarning-val ((m <rosADToSimproEgoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:v2xWarning-val is deprecated.  Use RosAdapter-msg:v2xWarning instead.")
  (v2xWarning m))

(cl:ensure-generic-function 'adSignalData-val :lambda-list '(m))
(cl:defmethod adSignalData-val ((m <rosADToSimproEgoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:adSignalData-val is deprecated.  Use RosAdapter-msg:adSignalData instead.")
  (adSignalData m))

(cl:ensure-generic-function 'ttcControl-val :lambda-list '(m))
(cl:defmethod ttcControl-val ((m <rosADToSimproEgoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:ttcControl-val is deprecated.  Use RosAdapter-msg:ttcControl instead.")
  (ttcControl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rosADToSimproEgoState>) ostream)
  "Serializes a message object of type '<rosADToSimproEgoState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'egoState) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'csvData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2xWarning) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adSignalData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ttcControl) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rosADToSimproEgoState>) istream)
  "Deserializes a message object of type '<rosADToSimproEgoState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'egoState) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'csvData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2xWarning) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adSignalData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ttcControl) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rosADToSimproEgoState>)))
  "Returns string type for a message object of type '<rosADToSimproEgoState>"
  "RosAdapter/rosADToSimproEgoState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rosADToSimproEgoState)))
  "Returns string type for a message object of type 'rosADToSimproEgoState"
  "RosAdapter/rosADToSimproEgoState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rosADToSimproEgoState>)))
  "Returns md5sum for a message object of type '<rosADToSimproEgoState>"
  "e0da0920f294e5888d789ea87518cbc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rosADToSimproEgoState)))
  "Returns md5sum for a message object of type 'rosADToSimproEgoState"
  "e0da0920f294e5888d789ea87518cbc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rosADToSimproEgoState>)))
  "Returns full string definition for message of type '<rosADToSimproEgoState>"
  (cl:format cl:nil "header                            head~%mil_ego_state                     egoState~%csv_data                          csvData~%v2x_warninginformation            v2xWarning~%ad_signal_data                    adSignalData~%ttc_control                       ttcControl~%================================================================================~%MSG: RosAdapter/header~%# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%================================================================================~%MSG: RosAdapter/mil_ego_state~%# /** ------ MIL测试主车信息描述包 ------ */~%~%object_state   sObjectState~%float64        u4initSpeed~%float64        u8DistRoadEnd~%uint32         u4LightMask               ~%float32        u4WheelSpeedFL~%float32        u4WheelSpeedFR~%float32        u4WheelSpeedRL~%float32        u4WheelSpeedRR~%float32        u4MasterCylinderPressure~%float32        u4WheelHeightLF~%float32        u4WheelHeightLR~%float32        u4WheelHeightRF~%float32        u4WheelHeightRR~%float32        u4SteerAngle~%uint8          u1objQuantity~%uint8          u1irc_id~%uint8          u1irc_left_id~%uint8          u1irc_right_id~%uint8          u1cipv_id~%uint8          u1lmc_id~%uint8          u1rmc_id~%uint8          u1isReachInitSpeed~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/csv_data~%# /** ------ AD发送给simpro的CSV数据 ------ */~%~%float32  u4AccelTgt~%float32  u4SteeringWheel~%uint32   u4ADStatus~%================================================================================~%MSG: RosAdapter/v2x_warninginformation~%# /** ------ V2X 告警信息 ------ */~%~%uint32 u4Type~%================================================================================~%MSG: RosAdapter/ad_signal_data~%string      au1SignalName~%float64     u8SignalValue~%================================================================================~%MSG: RosAdapter/ttc_control~%uint32  u4Status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rosADToSimproEgoState)))
  "Returns full string definition for message of type 'rosADToSimproEgoState"
  (cl:format cl:nil "header                            head~%mil_ego_state                     egoState~%csv_data                          csvData~%v2x_warninginformation            v2xWarning~%ad_signal_data                    adSignalData~%ttc_control                       ttcControl~%================================================================================~%MSG: RosAdapter/header~%# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%================================================================================~%MSG: RosAdapter/mil_ego_state~%# /** ------ MIL测试主车信息描述包 ------ */~%~%object_state   sObjectState~%float64        u4initSpeed~%float64        u8DistRoadEnd~%uint32         u4LightMask               ~%float32        u4WheelSpeedFL~%float32        u4WheelSpeedFR~%float32        u4WheelSpeedRL~%float32        u4WheelSpeedRR~%float32        u4MasterCylinderPressure~%float32        u4WheelHeightLF~%float32        u4WheelHeightLR~%float32        u4WheelHeightRF~%float32        u4WheelHeightRR~%float32        u4SteerAngle~%uint8          u1objQuantity~%uint8          u1irc_id~%uint8          u1irc_left_id~%uint8          u1irc_right_id~%uint8          u1cipv_id~%uint8          u1lmc_id~%uint8          u1rmc_id~%uint8          u1isReachInitSpeed~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/csv_data~%# /** ------ AD发送给simpro的CSV数据 ------ */~%~%float32  u4AccelTgt~%float32  u4SteeringWheel~%uint32   u4ADStatus~%================================================================================~%MSG: RosAdapter/v2x_warninginformation~%# /** ------ V2X 告警信息 ------ */~%~%uint32 u4Type~%================================================================================~%MSG: RosAdapter/ad_signal_data~%string      au1SignalName~%float64     u8SignalValue~%================================================================================~%MSG: RosAdapter/ttc_control~%uint32  u4Status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rosADToSimproEgoState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'egoState))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'csvData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2xWarning))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adSignalData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ttcControl))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rosADToSimproEgoState>))
  "Converts a ROS message object to a list"
  (cl:list 'rosADToSimproEgoState
    (cl:cons ':head (head msg))
    (cl:cons ':egoState (egoState msg))
    (cl:cons ':csvData (csvData msg))
    (cl:cons ':v2xWarning (v2xWarning msg))
    (cl:cons ':adSignalData (adSignalData msg))
    (cl:cons ':ttcControl (ttcControl msg))
))
