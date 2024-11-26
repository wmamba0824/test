; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude point3d.msg.html

(cl:defclass <point3d> (roslisp-msg-protocol:ros-message)
  ((u8x
    :reader u8x
    :initarg :u8x
    :type cl:float
    :initform 0.0)
   (u8y
    :reader u8y
    :initarg :u8y
    :type cl:float
    :initform 0.0)
   (u8z
    :reader u8z
    :initarg :u8z
    :type cl:float
    :initform 0.0))
)

(cl:defclass point3d (<point3d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <point3d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'point3d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<point3d> is deprecated: use RosAdapter-msg:point3d instead.")))

(cl:ensure-generic-function 'u8x-val :lambda-list '(m))
(cl:defmethod u8x-val ((m <point3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8x-val is deprecated.  Use RosAdapter-msg:u8x instead.")
  (u8x m))

(cl:ensure-generic-function 'u8y-val :lambda-list '(m))
(cl:defmethod u8y-val ((m <point3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8y-val is deprecated.  Use RosAdapter-msg:u8y instead.")
  (u8y m))

(cl:ensure-generic-function 'u8z-val :lambda-list '(m))
(cl:defmethod u8z-val ((m <point3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8z-val is deprecated.  Use RosAdapter-msg:u8z instead.")
  (u8z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <point3d>) ostream)
  "Serializes a message object of type '<point3d>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <point3d>) istream)
  "Deserializes a message object of type '<point3d>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<point3d>)))
  "Returns string type for a message object of type '<point3d>"
  "RosAdapter/point3d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point3d)))
  "Returns string type for a message object of type 'point3d"
  "RosAdapter/point3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<point3d>)))
  "Returns md5sum for a message object of type '<point3d>"
  "8ef76082ef9da5b9c3f0694c6fbb0753")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'point3d)))
  "Returns md5sum for a message object of type 'point3d"
  "8ef76082ef9da5b9c3f0694c6fbb0753")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<point3d>)))
  "Returns full string definition for message of type '<point3d>"
  (cl:format cl:nil "float64      u8x~%float64      u8y~%float64      u8z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'point3d)))
  "Returns full string definition for message of type 'point3d"
  (cl:format cl:nil "float64      u8x~%float64      u8y~%float64      u8z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <point3d>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <point3d>))
  "Converts a ROS message object to a list"
  (cl:list 'point3d
    (cl:cons ':u8x (u8x msg))
    (cl:cons ':u8y (u8y msg))
    (cl:cons ':u8z (u8z msg))
))
