; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude header.msg.html

(cl:defclass <header> (roslisp-msg-protocol:ros-message)
  ((u8SimTime
    :reader u8SimTime
    :initarg :u8SimTime
    :type cl:float
    :initform 0.0)
   (u4HeaderSize
    :reader u4HeaderSize
    :initarg :u4HeaderSize
    :type cl:integer
    :initform 0)
   (u4DataSize
    :reader u4DataSize
    :initarg :u4DataSize
    :type cl:integer
    :initform 0)
   (u4FrameNo
    :reader u4FrameNo
    :initarg :u4FrameNo
    :type cl:integer
    :initform 0))
)

(cl:defclass header (<header>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <header>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'header)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<header> is deprecated: use RosAdapter-msg:header instead.")))

(cl:ensure-generic-function 'u8SimTime-val :lambda-list '(m))
(cl:defmethod u8SimTime-val ((m <header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8SimTime-val is deprecated.  Use RosAdapter-msg:u8SimTime instead.")
  (u8SimTime m))

(cl:ensure-generic-function 'u4HeaderSize-val :lambda-list '(m))
(cl:defmethod u4HeaderSize-val ((m <header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4HeaderSize-val is deprecated.  Use RosAdapter-msg:u4HeaderSize instead.")
  (u4HeaderSize m))

(cl:ensure-generic-function 'u4DataSize-val :lambda-list '(m))
(cl:defmethod u4DataSize-val ((m <header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DataSize-val is deprecated.  Use RosAdapter-msg:u4DataSize instead.")
  (u4DataSize m))

(cl:ensure-generic-function 'u4FrameNo-val :lambda-list '(m))
(cl:defmethod u4FrameNo-val ((m <header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4FrameNo-val is deprecated.  Use RosAdapter-msg:u4FrameNo instead.")
  (u4FrameNo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <header>) ostream)
  "Serializes a message object of type '<header>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8SimTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4HeaderSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4HeaderSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4HeaderSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4HeaderSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4FrameNo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4FrameNo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4FrameNo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4FrameNo)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <header>) istream)
  "Deserializes a message object of type '<header>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8SimTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4HeaderSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4HeaderSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4HeaderSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4HeaderSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4FrameNo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4FrameNo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4FrameNo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4FrameNo)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<header>)))
  "Returns string type for a message object of type '<header>"
  "RosAdapter/header")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'header)))
  "Returns string type for a message object of type 'header"
  "RosAdapter/header")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<header>)))
  "Returns md5sum for a message object of type '<header>"
  "029ca86f5dd4b29bcf12cb8af905ab90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'header)))
  "Returns md5sum for a message object of type 'header"
  "029ca86f5dd4b29bcf12cb8af905ab90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<header>)))
  "Returns full string definition for message of type '<header>"
  (cl:format cl:nil "# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'header)))
  "Returns full string definition for message of type 'header"
  (cl:format cl:nil "# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <header>))
  (cl:+ 0
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <header>))
  "Converts a ROS message object to a list"
  (cl:list 'header
    (cl:cons ':u8SimTime (u8SimTime msg))
    (cl:cons ':u4HeaderSize (u4HeaderSize msg))
    (cl:cons ':u4DataSize (u4DataSize msg))
    (cl:cons ':u4FrameNo (u4FrameNo msg))
))
