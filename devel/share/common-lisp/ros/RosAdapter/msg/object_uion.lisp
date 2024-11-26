; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude object_uion.msg.html

(cl:defclass <object_uion> (roslisp-msg-protocol:ros-message)
  ((sDynamicObj
    :reader sDynamicObj
    :initarg :sDynamicObj
    :type RosAdapter-msg:dynamic_object
    :initform (cl:make-instance 'RosAdapter-msg:dynamic_object))
   (sMarkObj
    :reader sMarkObj
    :initarg :sMarkObj
    :type RosAdapter-msg:mark_object
    :initform (cl:make-instance 'RosAdapter-msg:mark_object))
   (sSignObj
    :reader sSignObj
    :initarg :sSignObj
    :type RosAdapter-msg:sign_object
    :initform (cl:make-instance 'RosAdapter-msg:sign_object)))
)

(cl:defclass object_uion (<object_uion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_uion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_uion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<object_uion> is deprecated: use RosAdapter-msg:object_uion instead.")))

(cl:ensure-generic-function 'sDynamicObj-val :lambda-list '(m))
(cl:defmethod sDynamicObj-val ((m <object_uion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sDynamicObj-val is deprecated.  Use RosAdapter-msg:sDynamicObj instead.")
  (sDynamicObj m))

(cl:ensure-generic-function 'sMarkObj-val :lambda-list '(m))
(cl:defmethod sMarkObj-val ((m <object_uion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sMarkObj-val is deprecated.  Use RosAdapter-msg:sMarkObj instead.")
  (sMarkObj m))

(cl:ensure-generic-function 'sSignObj-val :lambda-list '(m))
(cl:defmethod sSignObj-val ((m <object_uion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSignObj-val is deprecated.  Use RosAdapter-msg:sSignObj instead.")
  (sSignObj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_uion>) ostream)
  "Serializes a message object of type '<object_uion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sDynamicObj) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sMarkObj) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSignObj) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_uion>) istream)
  "Deserializes a message object of type '<object_uion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sDynamicObj) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sMarkObj) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSignObj) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_uion>)))
  "Returns string type for a message object of type '<object_uion>"
  "RosAdapter/object_uion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_uion)))
  "Returns string type for a message object of type 'object_uion"
  "RosAdapter/object_uion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_uion>)))
  "Returns md5sum for a message object of type '<object_uion>"
  "7852172eb40c908fcc049083af8007a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_uion)))
  "Returns md5sum for a message object of type 'object_uion"
  "7852172eb40c908fcc049083af8007a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_uion>)))
  "Returns full string definition for message of type '<object_uion>"
  (cl:format cl:nil "dynamic_object sDynamicObj~%mark_object    sMarkObj~%sign_object    sSignObj ~%================================================================================~%MSG: RosAdapter/dynamic_object~%# /** ------ 传感器探测到的对象信息 ------ */~%~%float64    u8Dist~%float64    u8NearestDist~%float64    u8RelativeVelx~%float64    u8RelativeVely~%float64    u8RelativeAccx~%float64    u8RelativeAccy~%float64    u8HeadingAngle~%coord      sSensorPos~%coord      sNearestSensorPos~%coord      sSenNearestPosXL~%coord      sSenNearestPosXR~%coord      sSenNearestPosYL~%coord      sSenNearestPosYR~%point3d[]  sBoundingBox~%uint8      u1MovingSt~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/point3d~%float64      u8x~%float64      u8y~%float64      u8z~%================================================================================~%MSG: RosAdapter/mark_object~%# 车道线~%~%float64[]	 au8RoadMarkCoeffL~%float64[]	 au8RoadMarkCoeffR~%================================================================================~%MSG: RosAdapter/sign_object~%# 交通标志~%~%float64   u8Dist~%float64   u8NearestDist~%float64   u8TrafficSignDistX~%float64   u8TrafficSignDistY~%coord     sSensorPos~%coord     sNearestSensorPos~%uint8     u1TrafficSignType~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_uion)))
  "Returns full string definition for message of type 'object_uion"
  (cl:format cl:nil "dynamic_object sDynamicObj~%mark_object    sMarkObj~%sign_object    sSignObj ~%================================================================================~%MSG: RosAdapter/dynamic_object~%# /** ------ 传感器探测到的对象信息 ------ */~%~%float64    u8Dist~%float64    u8NearestDist~%float64    u8RelativeVelx~%float64    u8RelativeVely~%float64    u8RelativeAccx~%float64    u8RelativeAccy~%float64    u8HeadingAngle~%coord      sSensorPos~%coord      sNearestSensorPos~%coord      sSenNearestPosXL~%coord      sSenNearestPosXR~%coord      sSenNearestPosYL~%coord      sSenNearestPosYR~%point3d[]  sBoundingBox~%uint8      u1MovingSt~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/point3d~%float64      u8x~%float64      u8y~%float64      u8z~%================================================================================~%MSG: RosAdapter/mark_object~%# 车道线~%~%float64[]	 au8RoadMarkCoeffL~%float64[]	 au8RoadMarkCoeffR~%================================================================================~%MSG: RosAdapter/sign_object~%# 交通标志~%~%float64   u8Dist~%float64   u8NearestDist~%float64   u8TrafficSignDistX~%float64   u8TrafficSignDistY~%coord     sSensorPos~%coord     sNearestSensorPos~%uint8     u1TrafficSignType~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_uion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sDynamicObj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sMarkObj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSignObj))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_uion>))
  "Converts a ROS message object to a list"
  (cl:list 'object_uion
    (cl:cons ':sDynamicObj (sDynamicObj msg))
    (cl:cons ':sMarkObj (sMarkObj msg))
    (cl:cons ':sSignObj (sSignObj msg))
))
