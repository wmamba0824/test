; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude coord.msg.html

(cl:defclass <coord> (roslisp-msg-protocol:ros-message)
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
   (u8Z
    :reader u8Z
    :initarg :u8Z
    :type cl:float
    :initform 0.0)
   (u4H
    :reader u4H
    :initarg :u4H
    :type cl:float
    :initform 0.0)
   (u4P
    :reader u4P
    :initarg :u4P
    :type cl:float
    :initform 0.0)
   (u4R
    :reader u4R
    :initarg :u4R
    :type cl:float
    :initform 0.0)
   (u1Type
    :reader u1Type
    :initarg :u1Type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass coord (<coord>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <coord>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'coord)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<coord> is deprecated: use RosAdapter-msg:coord instead.")))

(cl:ensure-generic-function 'u8X-val :lambda-list '(m))
(cl:defmethod u8X-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8X-val is deprecated.  Use RosAdapter-msg:u8X instead.")
  (u8X m))

(cl:ensure-generic-function 'u8Y-val :lambda-list '(m))
(cl:defmethod u8Y-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8Y-val is deprecated.  Use RosAdapter-msg:u8Y instead.")
  (u8Y m))

(cl:ensure-generic-function 'u8Z-val :lambda-list '(m))
(cl:defmethod u8Z-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8Z-val is deprecated.  Use RosAdapter-msg:u8Z instead.")
  (u8Z m))

(cl:ensure-generic-function 'u4H-val :lambda-list '(m))
(cl:defmethod u4H-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4H-val is deprecated.  Use RosAdapter-msg:u4H instead.")
  (u4H m))

(cl:ensure-generic-function 'u4P-val :lambda-list '(m))
(cl:defmethod u4P-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4P-val is deprecated.  Use RosAdapter-msg:u4P instead.")
  (u4P m))

(cl:ensure-generic-function 'u4R-val :lambda-list '(m))
(cl:defmethod u4R-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4R-val is deprecated.  Use RosAdapter-msg:u4R instead.")
  (u4R m))

(cl:ensure-generic-function 'u1Type-val :lambda-list '(m))
(cl:defmethod u1Type-val ((m <coord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Type-val is deprecated.  Use RosAdapter-msg:u1Type instead.")
  (u1Type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <coord>) ostream)
  "Serializes a message object of type '<coord>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4H))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <coord>) istream)
  "Deserializes a message object of type '<coord>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8Z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4H) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<coord>)))
  "Returns string type for a message object of type '<coord>"
  "RosAdapter/coord")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'coord)))
  "Returns string type for a message object of type 'coord"
  "RosAdapter/coord")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<coord>)))
  "Returns md5sum for a message object of type '<coord>"
  "b91c4545f116a70c5f09e1d7ccb453d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'coord)))
  "Returns md5sum for a message object of type 'coord"
  "b91c4545f116a70c5f09e1d7ccb453d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<coord>)))
  "Returns full string definition for message of type '<coord>"
  (cl:format cl:nil "# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'coord)))
  "Returns full string definition for message of type 'coord"
  (cl:format cl:nil "# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <coord>))
  (cl:+ 0
     8
     8
     8
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <coord>))
  "Converts a ROS message object to a list"
  (cl:list 'coord
    (cl:cons ':u8X (u8X msg))
    (cl:cons ':u8Y (u8Y msg))
    (cl:cons ':u8Z (u8Z msg))
    (cl:cons ':u4H (u4H msg))
    (cl:cons ':u4P (u4P msg))
    (cl:cons ':u4R (u4R msg))
    (cl:cons ':u1Type (u1Type msg))
))
