; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude mil_object_state_base.msg.html

(cl:defclass <mil_object_state_base> (roslisp-msg-protocol:ros-message)
  ((u4LightMask
    :reader u4LightMask
    :initarg :u4LightMask
    :type cl:integer
    :initform 0)
   (u4DistanceX
    :reader u4DistanceX
    :initarg :u4DistanceX
    :type cl:float
    :initform 0.0)
   (u4DistanceY
    :reader u4DistanceY
    :initarg :u4DistanceY
    :type cl:float
    :initform 0.0)
   (u4VelocityX
    :reader u4VelocityX
    :initarg :u4VelocityX
    :type cl:float
    :initform 0.0)
   (u4VelocityY
    :reader u4VelocityY
    :initarg :u4VelocityY
    :type cl:float
    :initform 0.0)
   (u4AccelerationX
    :reader u4AccelerationX
    :initarg :u4AccelerationX
    :type cl:float
    :initform 0.0)
   (u4AccelerationY
    :reader u4AccelerationY
    :initarg :u4AccelerationY
    :type cl:float
    :initform 0.0)
   (u4YawRate
    :reader u4YawRate
    :initarg :u4YawRate
    :type cl:float
    :initform 0.0)
   (u4Dist
    :reader u4Dist
    :initarg :u4Dist
    :type cl:float
    :initform 0.0)
   (u4Angle
    :reader u4Angle
    :initarg :u4Angle
    :type cl:float
    :initform 0.0)
   (u1ObjClass
    :reader u1ObjClass
    :initarg :u1ObjClass
    :type cl:fixnum
    :initform 0)
   (u1Flag_detected
    :reader u1Flag_detected
    :initarg :u1Flag_detected
    :type cl:fixnum
    :initform 0)
   (u1Movable
    :reader u1Movable
    :initarg :u1Movable
    :type cl:fixnum
    :initform 0)
   (u1Moving
    :reader u1Moving
    :initarg :u1Moving
    :type cl:fixnum
    :initform 0)
   (u1Obj_Age
    :reader u1Obj_Age
    :initarg :u1Obj_Age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mil_object_state_base (<mil_object_state_base>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mil_object_state_base>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mil_object_state_base)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<mil_object_state_base> is deprecated: use RosAdapter-msg:mil_object_state_base instead.")))

(cl:ensure-generic-function 'u4LightMask-val :lambda-list '(m))
(cl:defmethod u4LightMask-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4LightMask-val is deprecated.  Use RosAdapter-msg:u4LightMask instead.")
  (u4LightMask m))

(cl:ensure-generic-function 'u4DistanceX-val :lambda-list '(m))
(cl:defmethod u4DistanceX-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistanceX-val is deprecated.  Use RosAdapter-msg:u4DistanceX instead.")
  (u4DistanceX m))

(cl:ensure-generic-function 'u4DistanceY-val :lambda-list '(m))
(cl:defmethod u4DistanceY-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistanceY-val is deprecated.  Use RosAdapter-msg:u4DistanceY instead.")
  (u4DistanceY m))

(cl:ensure-generic-function 'u4VelocityX-val :lambda-list '(m))
(cl:defmethod u4VelocityX-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4VelocityX-val is deprecated.  Use RosAdapter-msg:u4VelocityX instead.")
  (u4VelocityX m))

(cl:ensure-generic-function 'u4VelocityY-val :lambda-list '(m))
(cl:defmethod u4VelocityY-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4VelocityY-val is deprecated.  Use RosAdapter-msg:u4VelocityY instead.")
  (u4VelocityY m))

(cl:ensure-generic-function 'u4AccelerationX-val :lambda-list '(m))
(cl:defmethod u4AccelerationX-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4AccelerationX-val is deprecated.  Use RosAdapter-msg:u4AccelerationX instead.")
  (u4AccelerationX m))

(cl:ensure-generic-function 'u4AccelerationY-val :lambda-list '(m))
(cl:defmethod u4AccelerationY-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4AccelerationY-val is deprecated.  Use RosAdapter-msg:u4AccelerationY instead.")
  (u4AccelerationY m))

(cl:ensure-generic-function 'u4YawRate-val :lambda-list '(m))
(cl:defmethod u4YawRate-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4YawRate-val is deprecated.  Use RosAdapter-msg:u4YawRate instead.")
  (u4YawRate m))

(cl:ensure-generic-function 'u4Dist-val :lambda-list '(m))
(cl:defmethod u4Dist-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Dist-val is deprecated.  Use RosAdapter-msg:u4Dist instead.")
  (u4Dist m))

(cl:ensure-generic-function 'u4Angle-val :lambda-list '(m))
(cl:defmethod u4Angle-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Angle-val is deprecated.  Use RosAdapter-msg:u4Angle instead.")
  (u4Angle m))

(cl:ensure-generic-function 'u1ObjClass-val :lambda-list '(m))
(cl:defmethod u1ObjClass-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1ObjClass-val is deprecated.  Use RosAdapter-msg:u1ObjClass instead.")
  (u1ObjClass m))

(cl:ensure-generic-function 'u1Flag_detected-val :lambda-list '(m))
(cl:defmethod u1Flag_detected-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Flag_detected-val is deprecated.  Use RosAdapter-msg:u1Flag_detected instead.")
  (u1Flag_detected m))

(cl:ensure-generic-function 'u1Movable-val :lambda-list '(m))
(cl:defmethod u1Movable-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Movable-val is deprecated.  Use RosAdapter-msg:u1Movable instead.")
  (u1Movable m))

(cl:ensure-generic-function 'u1Moving-val :lambda-list '(m))
(cl:defmethod u1Moving-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Moving-val is deprecated.  Use RosAdapter-msg:u1Moving instead.")
  (u1Moving m))

(cl:ensure-generic-function 'u1Obj_Age-val :lambda-list '(m))
(cl:defmethod u1Obj_Age-val ((m <mil_object_state_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Obj_Age-val is deprecated.  Use RosAdapter-msg:u1Obj_Age instead.")
  (u1Obj_Age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mil_object_state_base>) ostream)
  "Serializes a message object of type '<mil_object_state_base>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DistanceX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DistanceY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4VelocityX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4VelocityY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4AccelerationX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4AccelerationY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4YawRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1ObjClass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Flag_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Movable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Moving)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Obj_Age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mil_object_state_base>) istream)
  "Deserializes a message object of type '<mil_object_state_base>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistanceX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistanceY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4VelocityX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4VelocityY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4AccelerationX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4AccelerationY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4YawRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1ObjClass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Flag_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Movable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Moving)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Obj_Age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mil_object_state_base>)))
  "Returns string type for a message object of type '<mil_object_state_base>"
  "RosAdapter/mil_object_state_base")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mil_object_state_base)))
  "Returns string type for a message object of type 'mil_object_state_base"
  "RosAdapter/mil_object_state_base")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mil_object_state_base>)))
  "Returns md5sum for a message object of type '<mil_object_state_base>"
  "460517ddfac2850057332c48eb20e133")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mil_object_state_base)))
  "Returns md5sum for a message object of type 'mil_object_state_base"
  "460517ddfac2850057332c48eb20e133")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mil_object_state_base>)))
  "Returns full string definition for message of type '<mil_object_state_base>"
  (cl:format cl:nil "#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */~%~%uint32     u4LightMask~%float32    u4DistanceX~%float32    u4DistanceY~%float32    u4VelocityX~%float32    u4VelocityY~%float32    u4AccelerationX~%float32    u4AccelerationY~%float32    u4YawRate~%float32    u4Dist~%float32    u4Angle~%uint8      u1ObjClass~%uint8      u1Flag_detected~%uint8      u1Movable~%uint8      u1Moving~%uint8      u1Obj_Age~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mil_object_state_base)))
  "Returns full string definition for message of type 'mil_object_state_base"
  (cl:format cl:nil "#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */~%~%uint32     u4LightMask~%float32    u4DistanceX~%float32    u4DistanceY~%float32    u4VelocityX~%float32    u4VelocityY~%float32    u4AccelerationX~%float32    u4AccelerationY~%float32    u4YawRate~%float32    u4Dist~%float32    u4Angle~%uint8      u1ObjClass~%uint8      u1Flag_detected~%uint8      u1Movable~%uint8      u1Moving~%uint8      u1Obj_Age~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mil_object_state_base>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mil_object_state_base>))
  "Converts a ROS message object to a list"
  (cl:list 'mil_object_state_base
    (cl:cons ':u4LightMask (u4LightMask msg))
    (cl:cons ':u4DistanceX (u4DistanceX msg))
    (cl:cons ':u4DistanceY (u4DistanceY msg))
    (cl:cons ':u4VelocityX (u4VelocityX msg))
    (cl:cons ':u4VelocityY (u4VelocityY msg))
    (cl:cons ':u4AccelerationX (u4AccelerationX msg))
    (cl:cons ':u4AccelerationY (u4AccelerationY msg))
    (cl:cons ':u4YawRate (u4YawRate msg))
    (cl:cons ':u4Dist (u4Dist msg))
    (cl:cons ':u4Angle (u4Angle msg))
    (cl:cons ':u1ObjClass (u1ObjClass msg))
    (cl:cons ':u1Flag_detected (u1Flag_detected msg))
    (cl:cons ':u1Movable (u1Movable msg))
    (cl:cons ':u1Moving (u1Moving msg))
    (cl:cons ':u1Obj_Age (u1Obj_Age msg))
))
