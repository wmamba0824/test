; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude mil_object_state.msg.html

(cl:defclass <mil_object_state> (roslisp-msg-protocol:ros-message)
  ((sObjectState
    :reader sObjectState
    :initarg :sObjectState
    :type RosAdapter-msg:object_state
    :initform (cl:make-instance 'RosAdapter-msg:object_state))
   (sMilBase
    :reader sMilBase
    :initarg :sMilBase
    :type RosAdapter-msg:mil_object_state_base
    :initform (cl:make-instance 'RosAdapter-msg:mil_object_state_base)))
)

(cl:defclass mil_object_state (<mil_object_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mil_object_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mil_object_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<mil_object_state> is deprecated: use RosAdapter-msg:mil_object_state instead.")))

(cl:ensure-generic-function 'sObjectState-val :lambda-list '(m))
(cl:defmethod sObjectState-val ((m <mil_object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sObjectState-val is deprecated.  Use RosAdapter-msg:sObjectState instead.")
  (sObjectState m))

(cl:ensure-generic-function 'sMilBase-val :lambda-list '(m))
(cl:defmethod sMilBase-val ((m <mil_object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sMilBase-val is deprecated.  Use RosAdapter-msg:sMilBase instead.")
  (sMilBase m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mil_object_state>) ostream)
  "Serializes a message object of type '<mil_object_state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sObjectState) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sMilBase) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mil_object_state>) istream)
  "Deserializes a message object of type '<mil_object_state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sObjectState) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sMilBase) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mil_object_state>)))
  "Returns string type for a message object of type '<mil_object_state>"
  "RosAdapter/mil_object_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mil_object_state)))
  "Returns string type for a message object of type 'mil_object_state"
  "RosAdapter/mil_object_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mil_object_state>)))
  "Returns md5sum for a message object of type '<mil_object_state>"
  "f5c77edb401c9c12e68a0c159480ce25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mil_object_state)))
  "Returns md5sum for a message object of type 'mil_object_state"
  "f5c77edb401c9c12e68a0c159480ce25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mil_object_state>)))
  "Returns full string definition for message of type '<mil_object_state>"
  (cl:format cl:nil "# /** ------ MIL测试环境车、行人、障碍物信息 ------ */~%object_state           sObjectState~%mil_object_state_base  sMilBase~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/mil_object_state_base~%#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */~%~%uint32     u4LightMask~%float32    u4DistanceX~%float32    u4DistanceY~%float32    u4VelocityX~%float32    u4VelocityY~%float32    u4AccelerationX~%float32    u4AccelerationY~%float32    u4YawRate~%float32    u4Dist~%float32    u4Angle~%uint8      u1ObjClass~%uint8      u1Flag_detected~%uint8      u1Movable~%uint8      u1Moving~%uint8      u1Obj_Age~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mil_object_state)))
  "Returns full string definition for message of type 'mil_object_state"
  (cl:format cl:nil "# /** ------ MIL测试环境车、行人、障碍物信息 ------ */~%object_state           sObjectState~%mil_object_state_base  sMilBase~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/mil_object_state_base~%#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */~%~%uint32     u4LightMask~%float32    u4DistanceX~%float32    u4DistanceY~%float32    u4VelocityX~%float32    u4VelocityY~%float32    u4AccelerationX~%float32    u4AccelerationY~%float32    u4YawRate~%float32    u4Dist~%float32    u4Angle~%uint8      u1ObjClass~%uint8      u1Flag_detected~%uint8      u1Movable~%uint8      u1Moving~%uint8      u1Obj_Age~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mil_object_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sObjectState))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sMilBase))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mil_object_state>))
  "Converts a ROS message object to a list"
  (cl:list 'mil_object_state
    (cl:cons ':sObjectState (sObjectState msg))
    (cl:cons ':sMilBase (sMilBase msg))
))
