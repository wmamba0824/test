; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude override_controller.msg.html

(cl:defclass <override_controller> (roslisp-msg-protocol:ros-message)
  ((u8ThrottleValue
    :reader u8ThrottleValue
    :initarg :u8ThrottleValue
    :type cl:float
    :initform 0.0)
   (u8BrakeValue
    :reader u8BrakeValue
    :initarg :u8BrakeValue
    :type cl:float
    :initform 0.0)
   (u8SteeringWheelValue
    :reader u8SteeringWheelValue
    :initarg :u8SteeringWheelValue
    :type cl:float
    :initform 0.0)
   (u8ParkingBrakeValue
    :reader u8ParkingBrakeValue
    :initarg :u8ParkingBrakeValue
    :type cl:float
    :initform 0.0)
   (u8ClutchValue
    :reader u8ClutchValue
    :initarg :u8ClutchValue
    :type cl:float
    :initform 0.0)
   (u8GearValue
    :reader u8GearValue
    :initarg :u8GearValue
    :type cl:float
    :initform 0.0)
   (u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0)
   (u1ThrottleActive
    :reader u1ThrottleActive
    :initarg :u1ThrottleActive
    :type cl:boolean
    :initform cl:nil)
   (u1BrakeActive
    :reader u1BrakeActive
    :initarg :u1BrakeActive
    :type cl:boolean
    :initform cl:nil)
   (u1SteeringWheelActive
    :reader u1SteeringWheelActive
    :initarg :u1SteeringWheelActive
    :type cl:boolean
    :initform cl:nil)
   (u1ParkingBrakeActive
    :reader u1ParkingBrakeActive
    :initarg :u1ParkingBrakeActive
    :type cl:boolean
    :initform cl:nil)
   (u1ClutchActive
    :reader u1ClutchActive
    :initarg :u1ClutchActive
    :type cl:boolean
    :initform cl:nil)
   (u1GearActive
    :reader u1GearActive
    :initarg :u1GearActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass override_controller (<override_controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <override_controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'override_controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<override_controller> is deprecated: use RosAdapter-msg:override_controller instead.")))

(cl:ensure-generic-function 'u8ThrottleValue-val :lambda-list '(m))
(cl:defmethod u8ThrottleValue-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8ThrottleValue-val is deprecated.  Use RosAdapter-msg:u8ThrottleValue instead.")
  (u8ThrottleValue m))

(cl:ensure-generic-function 'u8BrakeValue-val :lambda-list '(m))
(cl:defmethod u8BrakeValue-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8BrakeValue-val is deprecated.  Use RosAdapter-msg:u8BrakeValue instead.")
  (u8BrakeValue m))

(cl:ensure-generic-function 'u8SteeringWheelValue-val :lambda-list '(m))
(cl:defmethod u8SteeringWheelValue-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8SteeringWheelValue-val is deprecated.  Use RosAdapter-msg:u8SteeringWheelValue instead.")
  (u8SteeringWheelValue m))

(cl:ensure-generic-function 'u8ParkingBrakeValue-val :lambda-list '(m))
(cl:defmethod u8ParkingBrakeValue-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8ParkingBrakeValue-val is deprecated.  Use RosAdapter-msg:u8ParkingBrakeValue instead.")
  (u8ParkingBrakeValue m))

(cl:ensure-generic-function 'u8ClutchValue-val :lambda-list '(m))
(cl:defmethod u8ClutchValue-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8ClutchValue-val is deprecated.  Use RosAdapter-msg:u8ClutchValue instead.")
  (u8ClutchValue m))

(cl:ensure-generic-function 'u8GearValue-val :lambda-list '(m))
(cl:defmethod u8GearValue-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8GearValue-val is deprecated.  Use RosAdapter-msg:u8GearValue instead.")
  (u8GearValue m))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))

(cl:ensure-generic-function 'u1ThrottleActive-val :lambda-list '(m))
(cl:defmethod u1ThrottleActive-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1ThrottleActive-val is deprecated.  Use RosAdapter-msg:u1ThrottleActive instead.")
  (u1ThrottleActive m))

(cl:ensure-generic-function 'u1BrakeActive-val :lambda-list '(m))
(cl:defmethod u1BrakeActive-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1BrakeActive-val is deprecated.  Use RosAdapter-msg:u1BrakeActive instead.")
  (u1BrakeActive m))

(cl:ensure-generic-function 'u1SteeringWheelActive-val :lambda-list '(m))
(cl:defmethod u1SteeringWheelActive-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1SteeringWheelActive-val is deprecated.  Use RosAdapter-msg:u1SteeringWheelActive instead.")
  (u1SteeringWheelActive m))

(cl:ensure-generic-function 'u1ParkingBrakeActive-val :lambda-list '(m))
(cl:defmethod u1ParkingBrakeActive-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1ParkingBrakeActive-val is deprecated.  Use RosAdapter-msg:u1ParkingBrakeActive instead.")
  (u1ParkingBrakeActive m))

(cl:ensure-generic-function 'u1ClutchActive-val :lambda-list '(m))
(cl:defmethod u1ClutchActive-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1ClutchActive-val is deprecated.  Use RosAdapter-msg:u1ClutchActive instead.")
  (u1ClutchActive m))

(cl:ensure-generic-function 'u1GearActive-val :lambda-list '(m))
(cl:defmethod u1GearActive-val ((m <override_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1GearActive-val is deprecated.  Use RosAdapter-msg:u1GearActive instead.")
  (u1GearActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <override_controller>) ostream)
  "Serializes a message object of type '<override_controller>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8ThrottleValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8BrakeValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8SteeringWheelValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8ParkingBrakeValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8ClutchValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8GearValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1ThrottleActive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1BrakeActive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1SteeringWheelActive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1ParkingBrakeActive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1ClutchActive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1GearActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <override_controller>) istream)
  "Deserializes a message object of type '<override_controller>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8ThrottleValue) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8BrakeValue) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8SteeringWheelValue) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8ParkingBrakeValue) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8ClutchValue) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8GearValue) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u1ThrottleActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'u1BrakeActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'u1SteeringWheelActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'u1ParkingBrakeActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'u1ClutchActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'u1GearActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<override_controller>)))
  "Returns string type for a message object of type '<override_controller>"
  "RosAdapter/override_controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'override_controller)))
  "Returns string type for a message object of type 'override_controller"
  "RosAdapter/override_controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<override_controller>)))
  "Returns md5sum for a message object of type '<override_controller>"
  "8ea5a19cb588ee701c9b5157e9aab0b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'override_controller)))
  "Returns md5sum for a message object of type 'override_controller"
  "8ea5a19cb588ee701c9b5157e9aab0b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<override_controller>)))
  "Returns full string definition for message of type '<override_controller>"
  (cl:format cl:nil "# /** ------接管控制器 ------ */~%~%float64   u8ThrottleValue~%float64   u8BrakeValue~%float64   u8SteeringWheelValue~%float64   u8ParkingBrakeValue~%float64   u8ClutchValue~%float64   u8GearValue~%uint32    u4ObjectId~%bool      u1ThrottleActive~%bool      u1BrakeActive~%bool      u1SteeringWheelActive~%bool      u1ParkingBrakeActive~%bool      u1ClutchActive~%bool      u1GearActive~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'override_controller)))
  "Returns full string definition for message of type 'override_controller"
  (cl:format cl:nil "# /** ------接管控制器 ------ */~%~%float64   u8ThrottleValue~%float64   u8BrakeValue~%float64   u8SteeringWheelValue~%float64   u8ParkingBrakeValue~%float64   u8ClutchValue~%float64   u8GearValue~%uint32    u4ObjectId~%bool      u1ThrottleActive~%bool      u1BrakeActive~%bool      u1SteeringWheelActive~%bool      u1ParkingBrakeActive~%bool      u1ClutchActive~%bool      u1GearActive~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <override_controller>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     4
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <override_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'override_controller
    (cl:cons ':u8ThrottleValue (u8ThrottleValue msg))
    (cl:cons ':u8BrakeValue (u8BrakeValue msg))
    (cl:cons ':u8SteeringWheelValue (u8SteeringWheelValue msg))
    (cl:cons ':u8ParkingBrakeValue (u8ParkingBrakeValue msg))
    (cl:cons ':u8ClutchValue (u8ClutchValue msg))
    (cl:cons ':u8GearValue (u8GearValue msg))
    (cl:cons ':u4ObjectId (u4ObjectId msg))
    (cl:cons ':u1ThrottleActive (u1ThrottleActive msg))
    (cl:cons ':u1BrakeActive (u1BrakeActive msg))
    (cl:cons ':u1SteeringWheelActive (u1SteeringWheelActive msg))
    (cl:cons ':u1ParkingBrakeActive (u1ParkingBrakeActive msg))
    (cl:cons ':u1ClutchActive (u1ClutchActive msg))
    (cl:cons ':u1GearActive (u1GearActive msg))
))
