; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude road_query.msg.html

(cl:defclass <road_query> (roslisp-msg-protocol:ros-message)
  ((u8X
    :reader u8X
    :initarg :u8X
    :type cl:float
    :initform 0.0)
   (u8Y
    :reader u8Y
    :initarg :u8Y
    :type cl:float
    :initform 0.0)
   (u2Id
    :reader u2Id
    :initarg :u2Id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass road_query (<road_query>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <road_query>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'road_query)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<road_query> is deprecated: use RosAdapter-msg:road_query instead.")))

(cl:ensure-generic-function 'u8X-val :lambda-list '(m))
(cl:defmethod u8X-val ((m <road_query>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8X-val is deprecated.  Use RosAdapter-msg:u8X instead.")
  (u8X m))

(cl:ensure-generic-function 'u8Y-val :lambda-list '(m))
(cl:defmethod u8Y-val ((m <road_query>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8Y-val is deprecated.  Use RosAdapter-msg:u8Y instead.")
  (u8Y m))

(cl:ensure-generic-function 'u2Id-val :lambda-list '(m))
(cl:defmethod u2Id-val ((m <road_query>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2Id-val is deprecated.  Use RosAdapter-msg:u2Id instead.")
  (u2Id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <road_query>) ostream)
  "Serializes a message object of type '<road_query>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u8X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u8Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <road_query>) istream)
  "Deserializes a message object of type '<road_query>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<road_query>)))
  "Returns string type for a message object of type '<road_query>"
  "RosAdapter/road_query")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'road_query)))
  "Returns string type for a message object of type 'road_query"
  "RosAdapter/road_query")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<road_query>)))
  "Returns md5sum for a message object of type '<road_query>"
  "197c272ebc790a868b90d572669363c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'road_query)))
  "Returns md5sum for a message object of type 'road_query"
  "197c272ebc790a868b90d572669363c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<road_query>)))
  "Returns full string definition for message of type '<road_query>"
  (cl:format cl:nil "# /** ------ 查询道路点 ------ */~%float32 u8X~%float32 u8Y~%uint16  u2Id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'road_query)))
  "Returns full string definition for message of type 'road_query"
  (cl:format cl:nil "# /** ------ 查询道路点 ------ */~%float32 u8X~%float32 u8Y~%uint16  u2Id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <road_query>))
  (cl:+ 0
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <road_query>))
  "Converts a ROS message object to a list"
  (cl:list 'road_query
    (cl:cons ':u8X (u8X msg))
    (cl:cons ':u8Y (u8Y msg))
    (cl:cons ':u2Id (u2Id msg))
))
