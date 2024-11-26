; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude uwb_data.msg.html

(cl:defclass <uwb_data> (roslisp-msg-protocol:ros-message)
  ((msgcnt
    :reader msgcnt
    :initarg :msgcnt
    :type cl:fixnum
    :initform 0)
   (u8x
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

(cl:defclass uwb_data (<uwb_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwb_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwb_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<uwb_data> is deprecated: use RosAdapter-msg:uwb_data instead.")))

(cl:ensure-generic-function 'msgcnt-val :lambda-list '(m))
(cl:defmethod msgcnt-val ((m <uwb_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:msgcnt-val is deprecated.  Use RosAdapter-msg:msgcnt instead.")
  (msgcnt m))

(cl:ensure-generic-function 'u8x-val :lambda-list '(m))
(cl:defmethod u8x-val ((m <uwb_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8x-val is deprecated.  Use RosAdapter-msg:u8x instead.")
  (u8x m))

(cl:ensure-generic-function 'u8y-val :lambda-list '(m))
(cl:defmethod u8y-val ((m <uwb_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8y-val is deprecated.  Use RosAdapter-msg:u8y instead.")
  (u8y m))

(cl:ensure-generic-function 'u8z-val :lambda-list '(m))
(cl:defmethod u8z-val ((m <uwb_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8z-val is deprecated.  Use RosAdapter-msg:u8z instead.")
  (u8z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwb_data>) ostream)
  "Serializes a message object of type '<uwb_data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgcnt)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwb_data>) istream)
  "Deserializes a message object of type '<uwb_data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgcnt)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwb_data>)))
  "Returns string type for a message object of type '<uwb_data>"
  "RosAdapter/uwb_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwb_data)))
  "Returns string type for a message object of type 'uwb_data"
  "RosAdapter/uwb_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwb_data>)))
  "Returns md5sum for a message object of type '<uwb_data>"
  "2a9d6b1915268c02dadd546cc26931a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwb_data)))
  "Returns md5sum for a message object of type 'uwb_data"
  "2a9d6b1915268c02dadd546cc26931a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwb_data>)))
  "Returns full string definition for message of type '<uwb_data>"
  (cl:format cl:nil "uint8         msgcnt~%float64       u8x~%float64       u8y~%float64       u8z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwb_data)))
  "Returns full string definition for message of type 'uwb_data"
  (cl:format cl:nil "uint8         msgcnt~%float64       u8x~%float64       u8y~%float64       u8z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwb_data>))
  (cl:+ 0
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwb_data>))
  "Converts a ROS message object to a list"
  (cl:list 'uwb_data
    (cl:cons ':msgcnt (msgcnt msg))
    (cl:cons ':u8x (u8x msg))
    (cl:cons ':u8y (u8y msg))
    (cl:cons ':u8z (u8z msg))
))
