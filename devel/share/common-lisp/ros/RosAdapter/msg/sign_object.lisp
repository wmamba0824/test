; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude sign_object.msg.html

(cl:defclass <sign_object> (roslisp-msg-protocol:ros-message)
  ((u8Dist
    :reader u8Dist
    :initarg :u8Dist
    :type cl:float
    :initform 0.0)
   (u8NearestDist
    :reader u8NearestDist
    :initarg :u8NearestDist
    :type cl:float
    :initform 0.0)
   (u8TrafficSignDistX
    :reader u8TrafficSignDistX
    :initarg :u8TrafficSignDistX
    :type cl:float
    :initform 0.0)
   (u8TrafficSignDistY
    :reader u8TrafficSignDistY
    :initarg :u8TrafficSignDistY
    :type cl:float
    :initform 0.0)
   (sSensorPos
    :reader sSensorPos
    :initarg :sSensorPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sNearestSensorPos
    :reader sNearestSensorPos
    :initarg :sNearestSensorPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (u1TrafficSignType
    :reader u1TrafficSignType
    :initarg :u1TrafficSignType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass sign_object (<sign_object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sign_object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sign_object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<sign_object> is deprecated: use RosAdapter-msg:sign_object instead.")))

(cl:ensure-generic-function 'u8Dist-val :lambda-list '(m))
(cl:defmethod u8Dist-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8Dist-val is deprecated.  Use RosAdapter-msg:u8Dist instead.")
  (u8Dist m))

(cl:ensure-generic-function 'u8NearestDist-val :lambda-list '(m))
(cl:defmethod u8NearestDist-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8NearestDist-val is deprecated.  Use RosAdapter-msg:u8NearestDist instead.")
  (u8NearestDist m))

(cl:ensure-generic-function 'u8TrafficSignDistX-val :lambda-list '(m))
(cl:defmethod u8TrafficSignDistX-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8TrafficSignDistX-val is deprecated.  Use RosAdapter-msg:u8TrafficSignDistX instead.")
  (u8TrafficSignDistX m))

(cl:ensure-generic-function 'u8TrafficSignDistY-val :lambda-list '(m))
(cl:defmethod u8TrafficSignDistY-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8TrafficSignDistY-val is deprecated.  Use RosAdapter-msg:u8TrafficSignDistY instead.")
  (u8TrafficSignDistY m))

(cl:ensure-generic-function 'sSensorPos-val :lambda-list '(m))
(cl:defmethod sSensorPos-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSensorPos-val is deprecated.  Use RosAdapter-msg:sSensorPos instead.")
  (sSensorPos m))

(cl:ensure-generic-function 'sNearestSensorPos-val :lambda-list '(m))
(cl:defmethod sNearestSensorPos-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sNearestSensorPos-val is deprecated.  Use RosAdapter-msg:sNearestSensorPos instead.")
  (sNearestSensorPos m))

(cl:ensure-generic-function 'u1TrafficSignType-val :lambda-list '(m))
(cl:defmethod u1TrafficSignType-val ((m <sign_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1TrafficSignType-val is deprecated.  Use RosAdapter-msg:u1TrafficSignType instead.")
  (u1TrafficSignType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sign_object>) ostream)
  "Serializes a message object of type '<sign_object>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8Dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8NearestDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8TrafficSignDistX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8TrafficSignDistY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSensorPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sNearestSensorPos) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1TrafficSignType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sign_object>) istream)
  "Deserializes a message object of type '<sign_object>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8Dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8NearestDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8TrafficSignDistX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8TrafficSignDistY) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSensorPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sNearestSensorPos) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1TrafficSignType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sign_object>)))
  "Returns string type for a message object of type '<sign_object>"
  "RosAdapter/sign_object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sign_object)))
  "Returns string type for a message object of type 'sign_object"
  "RosAdapter/sign_object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sign_object>)))
  "Returns md5sum for a message object of type '<sign_object>"
  "126cf5cd9bff85cc03e9822c09ab25cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sign_object)))
  "Returns md5sum for a message object of type 'sign_object"
  "126cf5cd9bff85cc03e9822c09ab25cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sign_object>)))
  "Returns full string definition for message of type '<sign_object>"
  (cl:format cl:nil "# 交通标志~%~%float64   u8Dist~%float64   u8NearestDist~%float64   u8TrafficSignDistX~%float64   u8TrafficSignDistY~%coord     sSensorPos~%coord     sNearestSensorPos~%uint8     u1TrafficSignType~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sign_object)))
  "Returns full string definition for message of type 'sign_object"
  (cl:format cl:nil "# 交通标志~%~%float64   u8Dist~%float64   u8NearestDist~%float64   u8TrafficSignDistX~%float64   u8TrafficSignDistY~%coord     sSensorPos~%coord     sNearestSensorPos~%uint8     u1TrafficSignType~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sign_object>))
  (cl:+ 0
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSensorPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sNearestSensorPos))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sign_object>))
  "Converts a ROS message object to a list"
  (cl:list 'sign_object
    (cl:cons ':u8Dist (u8Dist msg))
    (cl:cons ':u8NearestDist (u8NearestDist msg))
    (cl:cons ':u8TrafficSignDistX (u8TrafficSignDistX msg))
    (cl:cons ':u8TrafficSignDistY (u8TrafficSignDistY msg))
    (cl:cons ':sSensorPos (sSensorPos msg))
    (cl:cons ':sNearestSensorPos (sNearestSensorPos msg))
    (cl:cons ':u1TrafficSignType (u1TrafficSignType msg))
))
