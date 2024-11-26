; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude mil_ego_state.msg.html

(cl:defclass <mil_ego_state> (roslisp-msg-protocol:ros-message)
  ((sObjectState
    :reader sObjectState
    :initarg :sObjectState
    :type RosAdapter-msg:object_state
    :initform (cl:make-instance 'RosAdapter-msg:object_state))
   (u4initSpeed
    :reader u4initSpeed
    :initarg :u4initSpeed
    :type cl:float
    :initform 0.0)
   (u8DistRoadEnd
    :reader u8DistRoadEnd
    :initarg :u8DistRoadEnd
    :type cl:float
    :initform 0.0)
   (u4LightMask
    :reader u4LightMask
    :initarg :u4LightMask
    :type cl:integer
    :initform 0)
   (u4WheelSpeedFL
    :reader u4WheelSpeedFL
    :initarg :u4WheelSpeedFL
    :type cl:float
    :initform 0.0)
   (u4WheelSpeedFR
    :reader u4WheelSpeedFR
    :initarg :u4WheelSpeedFR
    :type cl:float
    :initform 0.0)
   (u4WheelSpeedRL
    :reader u4WheelSpeedRL
    :initarg :u4WheelSpeedRL
    :type cl:float
    :initform 0.0)
   (u4WheelSpeedRR
    :reader u4WheelSpeedRR
    :initarg :u4WheelSpeedRR
    :type cl:float
    :initform 0.0)
   (u4MasterCylinderPressure
    :reader u4MasterCylinderPressure
    :initarg :u4MasterCylinderPressure
    :type cl:float
    :initform 0.0)
   (u4WheelHeightLF
    :reader u4WheelHeightLF
    :initarg :u4WheelHeightLF
    :type cl:float
    :initform 0.0)
   (u4WheelHeightLR
    :reader u4WheelHeightLR
    :initarg :u4WheelHeightLR
    :type cl:float
    :initform 0.0)
   (u4WheelHeightRF
    :reader u4WheelHeightRF
    :initarg :u4WheelHeightRF
    :type cl:float
    :initform 0.0)
   (u4WheelHeightRR
    :reader u4WheelHeightRR
    :initarg :u4WheelHeightRR
    :type cl:float
    :initform 0.0)
   (u4SteerAngle
    :reader u4SteerAngle
    :initarg :u4SteerAngle
    :type cl:float
    :initform 0.0)
   (u1objQuantity
    :reader u1objQuantity
    :initarg :u1objQuantity
    :type cl:fixnum
    :initform 0)
   (u1irc_id
    :reader u1irc_id
    :initarg :u1irc_id
    :type cl:fixnum
    :initform 0)
   (u1irc_left_id
    :reader u1irc_left_id
    :initarg :u1irc_left_id
    :type cl:fixnum
    :initform 0)
   (u1irc_right_id
    :reader u1irc_right_id
    :initarg :u1irc_right_id
    :type cl:fixnum
    :initform 0)
   (u1cipv_id
    :reader u1cipv_id
    :initarg :u1cipv_id
    :type cl:fixnum
    :initform 0)
   (u1lmc_id
    :reader u1lmc_id
    :initarg :u1lmc_id
    :type cl:fixnum
    :initform 0)
   (u1rmc_id
    :reader u1rmc_id
    :initarg :u1rmc_id
    :type cl:fixnum
    :initform 0)
   (u1isReachInitSpeed
    :reader u1isReachInitSpeed
    :initarg :u1isReachInitSpeed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mil_ego_state (<mil_ego_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mil_ego_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mil_ego_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<mil_ego_state> is deprecated: use RosAdapter-msg:mil_ego_state instead.")))

(cl:ensure-generic-function 'sObjectState-val :lambda-list '(m))
(cl:defmethod sObjectState-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sObjectState-val is deprecated.  Use RosAdapter-msg:sObjectState instead.")
  (sObjectState m))

(cl:ensure-generic-function 'u4initSpeed-val :lambda-list '(m))
(cl:defmethod u4initSpeed-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4initSpeed-val is deprecated.  Use RosAdapter-msg:u4initSpeed instead.")
  (u4initSpeed m))

(cl:ensure-generic-function 'u8DistRoadEnd-val :lambda-list '(m))
(cl:defmethod u8DistRoadEnd-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8DistRoadEnd-val is deprecated.  Use RosAdapter-msg:u8DistRoadEnd instead.")
  (u8DistRoadEnd m))

(cl:ensure-generic-function 'u4LightMask-val :lambda-list '(m))
(cl:defmethod u4LightMask-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4LightMask-val is deprecated.  Use RosAdapter-msg:u4LightMask instead.")
  (u4LightMask m))

(cl:ensure-generic-function 'u4WheelSpeedFL-val :lambda-list '(m))
(cl:defmethod u4WheelSpeedFL-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelSpeedFL-val is deprecated.  Use RosAdapter-msg:u4WheelSpeedFL instead.")
  (u4WheelSpeedFL m))

(cl:ensure-generic-function 'u4WheelSpeedFR-val :lambda-list '(m))
(cl:defmethod u4WheelSpeedFR-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelSpeedFR-val is deprecated.  Use RosAdapter-msg:u4WheelSpeedFR instead.")
  (u4WheelSpeedFR m))

(cl:ensure-generic-function 'u4WheelSpeedRL-val :lambda-list '(m))
(cl:defmethod u4WheelSpeedRL-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelSpeedRL-val is deprecated.  Use RosAdapter-msg:u4WheelSpeedRL instead.")
  (u4WheelSpeedRL m))

(cl:ensure-generic-function 'u4WheelSpeedRR-val :lambda-list '(m))
(cl:defmethod u4WheelSpeedRR-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelSpeedRR-val is deprecated.  Use RosAdapter-msg:u4WheelSpeedRR instead.")
  (u4WheelSpeedRR m))

(cl:ensure-generic-function 'u4MasterCylinderPressure-val :lambda-list '(m))
(cl:defmethod u4MasterCylinderPressure-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4MasterCylinderPressure-val is deprecated.  Use RosAdapter-msg:u4MasterCylinderPressure instead.")
  (u4MasterCylinderPressure m))

(cl:ensure-generic-function 'u4WheelHeightLF-val :lambda-list '(m))
(cl:defmethod u4WheelHeightLF-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelHeightLF-val is deprecated.  Use RosAdapter-msg:u4WheelHeightLF instead.")
  (u4WheelHeightLF m))

(cl:ensure-generic-function 'u4WheelHeightLR-val :lambda-list '(m))
(cl:defmethod u4WheelHeightLR-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelHeightLR-val is deprecated.  Use RosAdapter-msg:u4WheelHeightLR instead.")
  (u4WheelHeightLR m))

(cl:ensure-generic-function 'u4WheelHeightRF-val :lambda-list '(m))
(cl:defmethod u4WheelHeightRF-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelHeightRF-val is deprecated.  Use RosAdapter-msg:u4WheelHeightRF instead.")
  (u4WheelHeightRF m))

(cl:ensure-generic-function 'u4WheelHeightRR-val :lambda-list '(m))
(cl:defmethod u4WheelHeightRR-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WheelHeightRR-val is deprecated.  Use RosAdapter-msg:u4WheelHeightRR instead.")
  (u4WheelHeightRR m))

(cl:ensure-generic-function 'u4SteerAngle-val :lambda-list '(m))
(cl:defmethod u4SteerAngle-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4SteerAngle-val is deprecated.  Use RosAdapter-msg:u4SteerAngle instead.")
  (u4SteerAngle m))

(cl:ensure-generic-function 'u1objQuantity-val :lambda-list '(m))
(cl:defmethod u1objQuantity-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1objQuantity-val is deprecated.  Use RosAdapter-msg:u1objQuantity instead.")
  (u1objQuantity m))

(cl:ensure-generic-function 'u1irc_id-val :lambda-list '(m))
(cl:defmethod u1irc_id-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1irc_id-val is deprecated.  Use RosAdapter-msg:u1irc_id instead.")
  (u1irc_id m))

(cl:ensure-generic-function 'u1irc_left_id-val :lambda-list '(m))
(cl:defmethod u1irc_left_id-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1irc_left_id-val is deprecated.  Use RosAdapter-msg:u1irc_left_id instead.")
  (u1irc_left_id m))

(cl:ensure-generic-function 'u1irc_right_id-val :lambda-list '(m))
(cl:defmethod u1irc_right_id-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1irc_right_id-val is deprecated.  Use RosAdapter-msg:u1irc_right_id instead.")
  (u1irc_right_id m))

(cl:ensure-generic-function 'u1cipv_id-val :lambda-list '(m))
(cl:defmethod u1cipv_id-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1cipv_id-val is deprecated.  Use RosAdapter-msg:u1cipv_id instead.")
  (u1cipv_id m))

(cl:ensure-generic-function 'u1lmc_id-val :lambda-list '(m))
(cl:defmethod u1lmc_id-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1lmc_id-val is deprecated.  Use RosAdapter-msg:u1lmc_id instead.")
  (u1lmc_id m))

(cl:ensure-generic-function 'u1rmc_id-val :lambda-list '(m))
(cl:defmethod u1rmc_id-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1rmc_id-val is deprecated.  Use RosAdapter-msg:u1rmc_id instead.")
  (u1rmc_id m))

(cl:ensure-generic-function 'u1isReachInitSpeed-val :lambda-list '(m))
(cl:defmethod u1isReachInitSpeed-val ((m <mil_ego_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1isReachInitSpeed-val is deprecated.  Use RosAdapter-msg:u1isReachInitSpeed instead.")
  (u1isReachInitSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mil_ego_state>) ostream)
  "Serializes a message object of type '<mil_ego_state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sObjectState) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4initSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8DistRoadEnd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4LightMask)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelSpeedFL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelSpeedFR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelSpeedRL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelSpeedRR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4MasterCylinderPressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelHeightLF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelHeightLR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelHeightRF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WheelHeightRR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4SteerAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1objQuantity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1irc_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1irc_left_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1irc_right_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1cipv_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1lmc_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1rmc_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1isReachInitSpeed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mil_ego_state>) istream)
  "Deserializes a message object of type '<mil_ego_state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sObjectState) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4initSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8DistRoadEnd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4LightMask)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelSpeedFL) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelSpeedFR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelSpeedRL) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelSpeedRR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4MasterCylinderPressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelHeightLF) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelHeightLR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelHeightRF) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WheelHeightRR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4SteerAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1objQuantity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1irc_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1irc_left_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1irc_right_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1cipv_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1lmc_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1rmc_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1isReachInitSpeed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mil_ego_state>)))
  "Returns string type for a message object of type '<mil_ego_state>"
  "RosAdapter/mil_ego_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mil_ego_state)))
  "Returns string type for a message object of type 'mil_ego_state"
  "RosAdapter/mil_ego_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mil_ego_state>)))
  "Returns md5sum for a message object of type '<mil_ego_state>"
  "163aed62265e04fd2e9211889cc3cfd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mil_ego_state)))
  "Returns md5sum for a message object of type 'mil_ego_state"
  "163aed62265e04fd2e9211889cc3cfd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mil_ego_state>)))
  "Returns full string definition for message of type '<mil_ego_state>"
  (cl:format cl:nil "# /** ------ MIL测试主车信息描述包 ------ */~%~%object_state   sObjectState~%float64        u4initSpeed~%float64        u8DistRoadEnd~%uint32         u4LightMask               ~%float32        u4WheelSpeedFL~%float32        u4WheelSpeedFR~%float32        u4WheelSpeedRL~%float32        u4WheelSpeedRR~%float32        u4MasterCylinderPressure~%float32        u4WheelHeightLF~%float32        u4WheelHeightLR~%float32        u4WheelHeightRF~%float32        u4WheelHeightRR~%float32        u4SteerAngle~%uint8          u1objQuantity~%uint8          u1irc_id~%uint8          u1irc_left_id~%uint8          u1irc_right_id~%uint8          u1cipv_id~%uint8          u1lmc_id~%uint8          u1rmc_id~%uint8          u1isReachInitSpeed~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mil_ego_state)))
  "Returns full string definition for message of type 'mil_ego_state"
  (cl:format cl:nil "# /** ------ MIL测试主车信息描述包 ------ */~%~%object_state   sObjectState~%float64        u4initSpeed~%float64        u8DistRoadEnd~%uint32         u4LightMask               ~%float32        u4WheelSpeedFL~%float32        u4WheelSpeedFR~%float32        u4WheelSpeedRL~%float32        u4WheelSpeedRR~%float32        u4MasterCylinderPressure~%float32        u4WheelHeightLF~%float32        u4WheelHeightLR~%float32        u4WheelHeightRF~%float32        u4WheelHeightRR~%float32        u4SteerAngle~%uint8          u1objQuantity~%uint8          u1irc_id~%uint8          u1irc_left_id~%uint8          u1irc_right_id~%uint8          u1cipv_id~%uint8          u1lmc_id~%uint8          u1rmc_id~%uint8          u1isReachInitSpeed~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mil_ego_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sObjectState))
     8
     8
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
     4
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mil_ego_state>))
  "Converts a ROS message object to a list"
  (cl:list 'mil_ego_state
    (cl:cons ':sObjectState (sObjectState msg))
    (cl:cons ':u4initSpeed (u4initSpeed msg))
    (cl:cons ':u8DistRoadEnd (u8DistRoadEnd msg))
    (cl:cons ':u4LightMask (u4LightMask msg))
    (cl:cons ':u4WheelSpeedFL (u4WheelSpeedFL msg))
    (cl:cons ':u4WheelSpeedFR (u4WheelSpeedFR msg))
    (cl:cons ':u4WheelSpeedRL (u4WheelSpeedRL msg))
    (cl:cons ':u4WheelSpeedRR (u4WheelSpeedRR msg))
    (cl:cons ':u4MasterCylinderPressure (u4MasterCylinderPressure msg))
    (cl:cons ':u4WheelHeightLF (u4WheelHeightLF msg))
    (cl:cons ':u4WheelHeightLR (u4WheelHeightLR msg))
    (cl:cons ':u4WheelHeightRF (u4WheelHeightRF msg))
    (cl:cons ':u4WheelHeightRR (u4WheelHeightRR msg))
    (cl:cons ':u4SteerAngle (u4SteerAngle msg))
    (cl:cons ':u1objQuantity (u1objQuantity msg))
    (cl:cons ':u1irc_id (u1irc_id msg))
    (cl:cons ':u1irc_left_id (u1irc_left_id msg))
    (cl:cons ':u1irc_right_id (u1irc_right_id msg))
    (cl:cons ':u1cipv_id (u1cipv_id msg))
    (cl:cons ':u1lmc_id (u1lmc_id msg))
    (cl:cons ':u1rmc_id (u1rmc_id msg))
    (cl:cons ':u1isReachInitSpeed (u1isReachInitSpeed msg))
))
