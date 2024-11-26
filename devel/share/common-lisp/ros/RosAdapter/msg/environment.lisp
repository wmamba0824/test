; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude environment.msg.html

(cl:defclass <environment> (roslisp-msg-protocol:ros-message)
  ((u8RainIntensity
    :reader u8RainIntensity
    :initarg :u8RainIntensity
    :type cl:float
    :initform 0.0)
   (u8SnowIntensity
    :reader u8SnowIntensity
    :initarg :u8SnowIntensity
    :type cl:float
    :initform 0.0)
   (u8FogIntensity
    :reader u8FogIntensity
    :initarg :u8FogIntensity
    :type cl:float
    :initform 0.0)
   (u8FogVisualRange
    :reader u8FogVisualRange
    :initarg :u8FogVisualRange
    :type cl:float
    :initform 0.0)
   (u4TimeOfDay
    :reader u4TimeOfDay
    :initarg :u4TimeOfDay
    :type cl:integer
    :initform 0)
   (u2TimeZoneMinutesWest
    :reader u2TimeZoneMinutesWest
    :initarg :u2TimeZoneMinutesWest
    :type cl:fixnum
    :initform 0)
   (u2Year
    :reader u2Year
    :initarg :u2Year
    :type cl:fixnum
    :initform 0)
   (u1CloudState
    :reader u1CloudState
    :initarg :u1CloudState
    :type cl:fixnum
    :initform 0)
   (u1Day
    :reader u1Day
    :initarg :u1Day
    :type cl:fixnum
    :initform 0)
   (u1Month
    :reader u1Month
    :initarg :u1Month
    :type cl:fixnum
    :initform 0))
)

(cl:defclass environment (<environment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <environment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'environment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<environment> is deprecated: use RosAdapter-msg:environment instead.")))

(cl:ensure-generic-function 'u8RainIntensity-val :lambda-list '(m))
(cl:defmethod u8RainIntensity-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RainIntensity-val is deprecated.  Use RosAdapter-msg:u8RainIntensity instead.")
  (u8RainIntensity m))

(cl:ensure-generic-function 'u8SnowIntensity-val :lambda-list '(m))
(cl:defmethod u8SnowIntensity-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8SnowIntensity-val is deprecated.  Use RosAdapter-msg:u8SnowIntensity instead.")
  (u8SnowIntensity m))

(cl:ensure-generic-function 'u8FogIntensity-val :lambda-list '(m))
(cl:defmethod u8FogIntensity-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8FogIntensity-val is deprecated.  Use RosAdapter-msg:u8FogIntensity instead.")
  (u8FogIntensity m))

(cl:ensure-generic-function 'u8FogVisualRange-val :lambda-list '(m))
(cl:defmethod u8FogVisualRange-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8FogVisualRange-val is deprecated.  Use RosAdapter-msg:u8FogVisualRange instead.")
  (u8FogVisualRange m))

(cl:ensure-generic-function 'u4TimeOfDay-val :lambda-list '(m))
(cl:defmethod u4TimeOfDay-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4TimeOfDay-val is deprecated.  Use RosAdapter-msg:u4TimeOfDay instead.")
  (u4TimeOfDay m))

(cl:ensure-generic-function 'u2TimeZoneMinutesWest-val :lambda-list '(m))
(cl:defmethod u2TimeZoneMinutesWest-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2TimeZoneMinutesWest-val is deprecated.  Use RosAdapter-msg:u2TimeZoneMinutesWest instead.")
  (u2TimeZoneMinutesWest m))

(cl:ensure-generic-function 'u2Year-val :lambda-list '(m))
(cl:defmethod u2Year-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2Year-val is deprecated.  Use RosAdapter-msg:u2Year instead.")
  (u2Year m))

(cl:ensure-generic-function 'u1CloudState-val :lambda-list '(m))
(cl:defmethod u1CloudState-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1CloudState-val is deprecated.  Use RosAdapter-msg:u1CloudState instead.")
  (u1CloudState m))

(cl:ensure-generic-function 'u1Day-val :lambda-list '(m))
(cl:defmethod u1Day-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Day-val is deprecated.  Use RosAdapter-msg:u1Day instead.")
  (u1Day m))

(cl:ensure-generic-function 'u1Month-val :lambda-list '(m))
(cl:defmethod u1Month-val ((m <environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Month-val is deprecated.  Use RosAdapter-msg:u1Month instead.")
  (u1Month m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <environment>) ostream)
  "Serializes a message object of type '<environment>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8RainIntensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8SnowIntensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8FogIntensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8FogVisualRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4TimeOfDay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4TimeOfDay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4TimeOfDay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4TimeOfDay)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u2TimeZoneMinutesWest)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1CloudState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Month)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <environment>) istream)
  "Deserializes a message object of type '<environment>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8RainIntensity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8SnowIntensity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8FogIntensity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8FogVisualRange) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4TimeOfDay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4TimeOfDay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4TimeOfDay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4TimeOfDay)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u2TimeZoneMinutesWest) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1CloudState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Month)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<environment>)))
  "Returns string type for a message object of type '<environment>"
  "RosAdapter/environment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'environment)))
  "Returns string type for a message object of type 'environment"
  "RosAdapter/environment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<environment>)))
  "Returns md5sum for a message object of type '<environment>"
  "dd90b74b2548174d66e34a98a2d7dbde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'environment)))
  "Returns md5sum for a message object of type 'environment"
  "dd90b74b2548174d66e34a98a2d7dbde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<environment>)))
  "Returns full string definition for message of type '<environment>"
  (cl:format cl:nil "# /** ------ 环境信息 ------ */~%float64      u8RainIntensity~%float64      u8SnowIntensity~%float64      u8FogIntensity~%float64      u8FogVisualRange~%uint32       u4TimeOfDay~%int16        u2TimeZoneMinutesWest~%uint16       u2Year~%uint8        u1CloudState~%uint8        u1Day~%uint8        u1Month~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'environment)))
  "Returns full string definition for message of type 'environment"
  (cl:format cl:nil "# /** ------ 环境信息 ------ */~%float64      u8RainIntensity~%float64      u8SnowIntensity~%float64      u8FogIntensity~%float64      u8FogVisualRange~%uint32       u4TimeOfDay~%int16        u2TimeZoneMinutesWest~%uint16       u2Year~%uint8        u1CloudState~%uint8        u1Day~%uint8        u1Month~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <environment>))
  (cl:+ 0
     8
     8
     8
     8
     4
     2
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <environment>))
  "Converts a ROS message object to a list"
  (cl:list 'environment
    (cl:cons ':u8RainIntensity (u8RainIntensity msg))
    (cl:cons ':u8SnowIntensity (u8SnowIntensity msg))
    (cl:cons ':u8FogIntensity (u8FogIntensity msg))
    (cl:cons ':u8FogVisualRange (u8FogVisualRange msg))
    (cl:cons ':u4TimeOfDay (u4TimeOfDay msg))
    (cl:cons ':u2TimeZoneMinutesWest (u2TimeZoneMinutesWest msg))
    (cl:cons ':u2Year (u2Year msg))
    (cl:cons ':u1CloudState (u1CloudState msg))
    (cl:cons ':u1Day (u1Day msg))
    (cl:cons ':u1Month (u1Month msg))
))
