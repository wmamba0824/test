; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude mil_amesim_signal.msg.html

(cl:defclass <mil_amesim_signal> (roslisp-msg-protocol:ros-message)
  ((u4LeftLen
    :reader u4LeftLen
    :initarg :u4LeftLen
    :type cl:float
    :initform 0.0)
   (u4NextLen
    :reader u4NextLen
    :initarg :u4NextLen
    :type cl:float
    :initform 0.0)
   (u4NextAgeSpeed
    :reader u4NextAgeSpeed
    :initarg :u4NextAgeSpeed
    :type cl:float
    :initform 0.0)
   (u4NextMinSpeed
    :reader u4NextMinSpeed
    :initarg :u4NextMinSpeed
    :type cl:float
    :initform 0.0)
   (u4NextMaxSpeed
    :reader u4NextMaxSpeed
    :initarg :u4NextMaxSpeed
    :type cl:float
    :initform 0.0)
   (u4NextGradient
    :reader u4NextGradient
    :initarg :u4NextGradient
    :type cl:float
    :initform 0.0)
   (u4NextCongest
    :reader u4NextCongest
    :initarg :u4NextCongest
    :type cl:float
    :initform 0.0)
   (u1RoadType
    :reader u1RoadType
    :initarg :u1RoadType
    :type cl:fixnum
    :initform 0)
   (u4DisLimit
    :reader u4DisLimit
    :initarg :u4DisLimit
    :type cl:float
    :initform 0.0)
   (u1IsFarAwayLimit
    :reader u1IsFarAwayLimit
    :initarg :u1IsFarAwayLimit
    :type cl:boolean
    :initform cl:nil)
   (u4LimitSpeed
    :reader u4LimitSpeed
    :initarg :u4LimitSpeed
    :type cl:float
    :initform 0.0)
   (ulIsJunction
    :reader ulIsJunction
    :initarg :ulIsJunction
    :type cl:boolean
    :initform cl:nil)
   (u4DisJunction
    :reader u4DisJunction
    :initarg :u4DisJunction
    :type cl:float
    :initform 0.0)
   (ulIsFarAwayJunc
    :reader ulIsFarAwayJunc
    :initarg :ulIsFarAwayJunc
    :type cl:boolean
    :initform cl:nil)
   (ultrafficLightStat
    :reader ultrafficLightStat
    :initarg :ultrafficLightStat
    :type cl:fixnum
    :initform 0)
   (u4Curvity
    :reader u4Curvity
    :initarg :u4Curvity
    :type cl:float
    :initform 0.0)
   (u4RelativeVel
    :reader u4RelativeVel
    :initarg :u4RelativeVel
    :type cl:float
    :initform 0.0)
   (u4RelativeDis
    :reader u4RelativeDis
    :initarg :u4RelativeDis
    :type cl:float
    :initform 0.0))
)

(cl:defclass mil_amesim_signal (<mil_amesim_signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mil_amesim_signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mil_amesim_signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<mil_amesim_signal> is deprecated: use RosAdapter-msg:mil_amesim_signal instead.")))

(cl:ensure-generic-function 'u4LeftLen-val :lambda-list '(m))
(cl:defmethod u4LeftLen-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4LeftLen-val is deprecated.  Use RosAdapter-msg:u4LeftLen instead.")
  (u4LeftLen m))

(cl:ensure-generic-function 'u4NextLen-val :lambda-list '(m))
(cl:defmethod u4NextLen-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NextLen-val is deprecated.  Use RosAdapter-msg:u4NextLen instead.")
  (u4NextLen m))

(cl:ensure-generic-function 'u4NextAgeSpeed-val :lambda-list '(m))
(cl:defmethod u4NextAgeSpeed-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NextAgeSpeed-val is deprecated.  Use RosAdapter-msg:u4NextAgeSpeed instead.")
  (u4NextAgeSpeed m))

(cl:ensure-generic-function 'u4NextMinSpeed-val :lambda-list '(m))
(cl:defmethod u4NextMinSpeed-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NextMinSpeed-val is deprecated.  Use RosAdapter-msg:u4NextMinSpeed instead.")
  (u4NextMinSpeed m))

(cl:ensure-generic-function 'u4NextMaxSpeed-val :lambda-list '(m))
(cl:defmethod u4NextMaxSpeed-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NextMaxSpeed-val is deprecated.  Use RosAdapter-msg:u4NextMaxSpeed instead.")
  (u4NextMaxSpeed m))

(cl:ensure-generic-function 'u4NextGradient-val :lambda-list '(m))
(cl:defmethod u4NextGradient-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NextGradient-val is deprecated.  Use RosAdapter-msg:u4NextGradient instead.")
  (u4NextGradient m))

(cl:ensure-generic-function 'u4NextCongest-val :lambda-list '(m))
(cl:defmethod u4NextCongest-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NextCongest-val is deprecated.  Use RosAdapter-msg:u4NextCongest instead.")
  (u4NextCongest m))

(cl:ensure-generic-function 'u1RoadType-val :lambda-list '(m))
(cl:defmethod u1RoadType-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1RoadType-val is deprecated.  Use RosAdapter-msg:u1RoadType instead.")
  (u1RoadType m))

(cl:ensure-generic-function 'u4DisLimit-val :lambda-list '(m))
(cl:defmethod u4DisLimit-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DisLimit-val is deprecated.  Use RosAdapter-msg:u4DisLimit instead.")
  (u4DisLimit m))

(cl:ensure-generic-function 'u1IsFarAwayLimit-val :lambda-list '(m))
(cl:defmethod u1IsFarAwayLimit-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1IsFarAwayLimit-val is deprecated.  Use RosAdapter-msg:u1IsFarAwayLimit instead.")
  (u1IsFarAwayLimit m))

(cl:ensure-generic-function 'u4LimitSpeed-val :lambda-list '(m))
(cl:defmethod u4LimitSpeed-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4LimitSpeed-val is deprecated.  Use RosAdapter-msg:u4LimitSpeed instead.")
  (u4LimitSpeed m))

(cl:ensure-generic-function 'ulIsJunction-val :lambda-list '(m))
(cl:defmethod ulIsJunction-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:ulIsJunction-val is deprecated.  Use RosAdapter-msg:ulIsJunction instead.")
  (ulIsJunction m))

(cl:ensure-generic-function 'u4DisJunction-val :lambda-list '(m))
(cl:defmethod u4DisJunction-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DisJunction-val is deprecated.  Use RosAdapter-msg:u4DisJunction instead.")
  (u4DisJunction m))

(cl:ensure-generic-function 'ulIsFarAwayJunc-val :lambda-list '(m))
(cl:defmethod ulIsFarAwayJunc-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:ulIsFarAwayJunc-val is deprecated.  Use RosAdapter-msg:ulIsFarAwayJunc instead.")
  (ulIsFarAwayJunc m))

(cl:ensure-generic-function 'ultrafficLightStat-val :lambda-list '(m))
(cl:defmethod ultrafficLightStat-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:ultrafficLightStat-val is deprecated.  Use RosAdapter-msg:ultrafficLightStat instead.")
  (ultrafficLightStat m))

(cl:ensure-generic-function 'u4Curvity-val :lambda-list '(m))
(cl:defmethod u4Curvity-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Curvity-val is deprecated.  Use RosAdapter-msg:u4Curvity instead.")
  (u4Curvity m))

(cl:ensure-generic-function 'u4RelativeVel-val :lambda-list '(m))
(cl:defmethod u4RelativeVel-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RelativeVel-val is deprecated.  Use RosAdapter-msg:u4RelativeVel instead.")
  (u4RelativeVel m))

(cl:ensure-generic-function 'u4RelativeDis-val :lambda-list '(m))
(cl:defmethod u4RelativeDis-val ((m <mil_amesim_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RelativeDis-val is deprecated.  Use RosAdapter-msg:u4RelativeDis instead.")
  (u4RelativeDis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mil_amesim_signal>) ostream)
  "Serializes a message object of type '<mil_amesim_signal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4LeftLen))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4NextLen))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4NextAgeSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4NextMinSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4NextMaxSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4NextGradient))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4NextCongest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1RoadType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DisLimit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1IsFarAwayLimit) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4LimitSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ulIsJunction) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DisJunction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ulIsFarAwayJunc) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultrafficLightStat)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Curvity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RelativeVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RelativeDis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mil_amesim_signal>) istream)
  "Deserializes a message object of type '<mil_amesim_signal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4LeftLen) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4NextLen) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4NextAgeSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4NextMinSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4NextMaxSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4NextGradient) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4NextCongest) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1RoadType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DisLimit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'u1IsFarAwayLimit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4LimitSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'ulIsJunction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DisJunction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'ulIsFarAwayJunc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultrafficLightStat)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Curvity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RelativeVel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RelativeDis) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mil_amesim_signal>)))
  "Returns string type for a message object of type '<mil_amesim_signal>"
  "RosAdapter/mil_amesim_signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mil_amesim_signal)))
  "Returns string type for a message object of type 'mil_amesim_signal"
  "RosAdapter/mil_amesim_signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mil_amesim_signal>)))
  "Returns md5sum for a message object of type '<mil_amesim_signal>"
  "b272e0120e62408b4b47d6764b084b50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mil_amesim_signal)))
  "Returns md5sum for a message object of type 'mil_amesim_signal"
  "b272e0120e62408b4b47d6764b084b50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mil_amesim_signal>)))
  "Returns full string definition for message of type '<mil_amesim_signal>"
  (cl:format cl:nil "# /** ------ MIL AMESim 测试信息描述包 ------ */~%~%float32       u4LeftLen~%float32       u4NextLen~%float32       u4NextAgeSpeed~%float32       u4NextMinSpeed~%float32       u4NextMaxSpeed~%float32       u4NextGradient~%float32       u4NextCongest~%uint8         u1RoadType~%float32       u4DisLimit~%bool          u1IsFarAwayLimit~%float32       u4LimitSpeed~%bool          ulIsJunction~%float32       u4DisJunction~%bool          ulIsFarAwayJunc~%uint8         ultrafficLightStat~%float32       u4Curvity~%float32       u4RelativeVel~%float32       u4RelativeDis~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mil_amesim_signal)))
  "Returns full string definition for message of type 'mil_amesim_signal"
  (cl:format cl:nil "# /** ------ MIL AMESim 测试信息描述包 ------ */~%~%float32       u4LeftLen~%float32       u4NextLen~%float32       u4NextAgeSpeed~%float32       u4NextMinSpeed~%float32       u4NextMaxSpeed~%float32       u4NextGradient~%float32       u4NextCongest~%uint8         u1RoadType~%float32       u4DisLimit~%bool          u1IsFarAwayLimit~%float32       u4LimitSpeed~%bool          ulIsJunction~%float32       u4DisJunction~%bool          ulIsFarAwayJunc~%uint8         ultrafficLightStat~%float32       u4Curvity~%float32       u4RelativeVel~%float32       u4RelativeDis~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mil_amesim_signal>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     1
     4
     1
     4
     1
     4
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mil_amesim_signal>))
  "Converts a ROS message object to a list"
  (cl:list 'mil_amesim_signal
    (cl:cons ':u4LeftLen (u4LeftLen msg))
    (cl:cons ':u4NextLen (u4NextLen msg))
    (cl:cons ':u4NextAgeSpeed (u4NextAgeSpeed msg))
    (cl:cons ':u4NextMinSpeed (u4NextMinSpeed msg))
    (cl:cons ':u4NextMaxSpeed (u4NextMaxSpeed msg))
    (cl:cons ':u4NextGradient (u4NextGradient msg))
    (cl:cons ':u4NextCongest (u4NextCongest msg))
    (cl:cons ':u1RoadType (u1RoadType msg))
    (cl:cons ':u4DisLimit (u4DisLimit msg))
    (cl:cons ':u1IsFarAwayLimit (u1IsFarAwayLimit msg))
    (cl:cons ':u4LimitSpeed (u4LimitSpeed msg))
    (cl:cons ':ulIsJunction (ulIsJunction msg))
    (cl:cons ':u4DisJunction (u4DisJunction msg))
    (cl:cons ':ulIsFarAwayJunc (ulIsFarAwayJunc msg))
    (cl:cons ':ultrafficLightStat (ultrafficLightStat msg))
    (cl:cons ':u4Curvity (u4Curvity msg))
    (cl:cons ':u4RelativeVel (u4RelativeVel msg))
    (cl:cons ':u4RelativeDis (u4RelativeDis msg))
))
