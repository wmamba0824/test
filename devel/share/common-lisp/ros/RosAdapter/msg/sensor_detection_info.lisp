; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude sensor_detection_info.msg.html

(cl:defclass <sensor_detection_info> (roslisp-msg-protocol:ros-message)
  ((u4Id
    :reader u4Id
    :initarg :u4Id
    :type cl:integer
    :initform 0)
   (u4SensorId
    :reader u4SensorId
    :initarg :u4SensorId
    :type cl:integer
    :initform 0)
   (u2Flags
    :reader u2Flags
    :initarg :u2Flags
    :type cl:fixnum
    :initform 0)
   (u1Type
    :reader u1Type
    :initarg :u1Type
    :type cl:fixnum
    :initform 0)
   (u1Occlusion
    :reader u1Occlusion
    :initarg :u1Occlusion
    :type cl:fixnum
    :initform 0)
   (u1DeltaLanePos
    :reader u1DeltaLanePos
    :initarg :u1DeltaLanePos
    :type cl:fixnum
    :initform 0)
   (u1ValidFlag
    :reader u1ValidFlag
    :initarg :u1ValidFlag
    :type cl:fixnum
    :initform 0)
   (u8ExistProb
    :reader u8ExistProb
    :initarg :u8ExistProb
    :type cl:float
    :initform 0.0)
   (u8TypeIdProb
    :reader u8TypeIdProb
    :initarg :u8TypeIdProb
    :type cl:float
    :initform 0.0)
   (sExtraInfo
    :reader sExtraInfo
    :initarg :sExtraInfo
    :type RosAdapter-msg:object_uion
    :initform (cl:make-instance 'RosAdapter-msg:object_uion)))
)

(cl:defclass sensor_detection_info (<sensor_detection_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor_detection_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor_detection_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<sensor_detection_info> is deprecated: use RosAdapter-msg:sensor_detection_info instead.")))

(cl:ensure-generic-function 'u4Id-val :lambda-list '(m))
(cl:defmethod u4Id-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Id-val is deprecated.  Use RosAdapter-msg:u4Id instead.")
  (u4Id m))

(cl:ensure-generic-function 'u4SensorId-val :lambda-list '(m))
(cl:defmethod u4SensorId-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4SensorId-val is deprecated.  Use RosAdapter-msg:u4SensorId instead.")
  (u4SensorId m))

(cl:ensure-generic-function 'u2Flags-val :lambda-list '(m))
(cl:defmethod u2Flags-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2Flags-val is deprecated.  Use RosAdapter-msg:u2Flags instead.")
  (u2Flags m))

(cl:ensure-generic-function 'u1Type-val :lambda-list '(m))
(cl:defmethod u1Type-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Type-val is deprecated.  Use RosAdapter-msg:u1Type instead.")
  (u1Type m))

(cl:ensure-generic-function 'u1Occlusion-val :lambda-list '(m))
(cl:defmethod u1Occlusion-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Occlusion-val is deprecated.  Use RosAdapter-msg:u1Occlusion instead.")
  (u1Occlusion m))

(cl:ensure-generic-function 'u1DeltaLanePos-val :lambda-list '(m))
(cl:defmethod u1DeltaLanePos-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1DeltaLanePos-val is deprecated.  Use RosAdapter-msg:u1DeltaLanePos instead.")
  (u1DeltaLanePos m))

(cl:ensure-generic-function 'u1ValidFlag-val :lambda-list '(m))
(cl:defmethod u1ValidFlag-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1ValidFlag-val is deprecated.  Use RosAdapter-msg:u1ValidFlag instead.")
  (u1ValidFlag m))

(cl:ensure-generic-function 'u8ExistProb-val :lambda-list '(m))
(cl:defmethod u8ExistProb-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8ExistProb-val is deprecated.  Use RosAdapter-msg:u8ExistProb instead.")
  (u8ExistProb m))

(cl:ensure-generic-function 'u8TypeIdProb-val :lambda-list '(m))
(cl:defmethod u8TypeIdProb-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8TypeIdProb-val is deprecated.  Use RosAdapter-msg:u8TypeIdProb instead.")
  (u8TypeIdProb m))

(cl:ensure-generic-function 'sExtraInfo-val :lambda-list '(m))
(cl:defmethod sExtraInfo-val ((m <sensor_detection_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sExtraInfo-val is deprecated.  Use RosAdapter-msg:sExtraInfo instead.")
  (sExtraInfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor_detection_info>) ostream)
  "Serializes a message object of type '<sensor_detection_info>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u1Occlusion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'u1DeltaLanePos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1ValidFlag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8ExistProb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8TypeIdProb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sExtraInfo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor_detection_info>) istream)
  "Deserializes a message object of type '<sensor_detection_info>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1Occlusion) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1DeltaLanePos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1ValidFlag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8ExistProb) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8TypeIdProb) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sExtraInfo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor_detection_info>)))
  "Returns string type for a message object of type '<sensor_detection_info>"
  "RosAdapter/sensor_detection_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor_detection_info)))
  "Returns string type for a message object of type 'sensor_detection_info"
  "RosAdapter/sensor_detection_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor_detection_info>)))
  "Returns md5sum for a message object of type '<sensor_detection_info>"
  "3c1cb322c1ecab3b195230dfd2011618")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor_detection_info)))
  "Returns md5sum for a message object of type 'sensor_detection_info"
  "3c1cb322c1ecab3b195230dfd2011618")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor_detection_info>)))
  "Returns full string definition for message of type '<sensor_detection_info>"
  (cl:format cl:nil "# 传感器监测物体所有信息~%~%uint32            u4Id~%uint32            u4SensorId~%uint16            u2Flags~%uint8             u1Type~%int8              u1Occlusion~%int8              u1DeltaLanePos~%uint8             u1ValidFlag~%float64           u8ExistProb~%float64           u8TypeIdProb~%object_uion       sExtraInfo~%================================================================================~%MSG: RosAdapter/object_uion~%dynamic_object sDynamicObj~%mark_object    sMarkObj~%sign_object    sSignObj ~%================================================================================~%MSG: RosAdapter/dynamic_object~%# /** ------ 传感器探测到的对象信息 ------ */~%~%float64    u8Dist~%float64    u8NearestDist~%float64    u8RelativeVelx~%float64    u8RelativeVely~%float64    u8RelativeAccx~%float64    u8RelativeAccy~%float64    u8HeadingAngle~%coord      sSensorPos~%coord      sNearestSensorPos~%coord      sSenNearestPosXL~%coord      sSenNearestPosXR~%coord      sSenNearestPosYL~%coord      sSenNearestPosYR~%point3d[]  sBoundingBox~%uint8      u1MovingSt~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/point3d~%float64      u8x~%float64      u8y~%float64      u8z~%================================================================================~%MSG: RosAdapter/mark_object~%# 车道线~%~%float64[]	 au8RoadMarkCoeffL~%float64[]	 au8RoadMarkCoeffR~%================================================================================~%MSG: RosAdapter/sign_object~%# 交通标志~%~%float64   u8Dist~%float64   u8NearestDist~%float64   u8TrafficSignDistX~%float64   u8TrafficSignDistY~%coord     sSensorPos~%coord     sNearestSensorPos~%uint8     u1TrafficSignType~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor_detection_info)))
  "Returns full string definition for message of type 'sensor_detection_info"
  (cl:format cl:nil "# 传感器监测物体所有信息~%~%uint32            u4Id~%uint32            u4SensorId~%uint16            u2Flags~%uint8             u1Type~%int8              u1Occlusion~%int8              u1DeltaLanePos~%uint8             u1ValidFlag~%float64           u8ExistProb~%float64           u8TypeIdProb~%object_uion       sExtraInfo~%================================================================================~%MSG: RosAdapter/object_uion~%dynamic_object sDynamicObj~%mark_object    sMarkObj~%sign_object    sSignObj ~%================================================================================~%MSG: RosAdapter/dynamic_object~%# /** ------ 传感器探测到的对象信息 ------ */~%~%float64    u8Dist~%float64    u8NearestDist~%float64    u8RelativeVelx~%float64    u8RelativeVely~%float64    u8RelativeAccx~%float64    u8RelativeAccy~%float64    u8HeadingAngle~%coord      sSensorPos~%coord      sNearestSensorPos~%coord      sSenNearestPosXL~%coord      sSenNearestPosXR~%coord      sSenNearestPosYL~%coord      sSenNearestPosYR~%point3d[]  sBoundingBox~%uint8      u1MovingSt~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/point3d~%float64      u8x~%float64      u8y~%float64      u8z~%================================================================================~%MSG: RosAdapter/mark_object~%# 车道线~%~%float64[]	 au8RoadMarkCoeffL~%float64[]	 au8RoadMarkCoeffR~%================================================================================~%MSG: RosAdapter/sign_object~%# 交通标志~%~%float64   u8Dist~%float64   u8NearestDist~%float64   u8TrafficSignDistX~%float64   u8TrafficSignDistY~%coord     sSensorPos~%coord     sNearestSensorPos~%uint8     u1TrafficSignType~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor_detection_info>))
  (cl:+ 0
     4
     4
     2
     1
     1
     1
     1
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sExtraInfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor_detection_info>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor_detection_info
    (cl:cons ':u4Id (u4Id msg))
    (cl:cons ':u4SensorId (u4SensorId msg))
    (cl:cons ':u2Flags (u2Flags msg))
    (cl:cons ':u1Type (u1Type msg))
    (cl:cons ':u1Occlusion (u1Occlusion msg))
    (cl:cons ':u1DeltaLanePos (u1DeltaLanePos msg))
    (cl:cons ':u1ValidFlag (u1ValidFlag msg))
    (cl:cons ':u8ExistProb (u8ExistProb msg))
    (cl:cons ':u8TypeIdProb (u8TypeIdProb msg))
    (cl:cons ':sExtraInfo (sExtraInfo msg))
))
