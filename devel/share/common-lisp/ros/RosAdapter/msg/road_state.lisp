; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude road_state.msg.html

(cl:defclass <road_state> (roslisp-msg-protocol:ros-message)
  ((u8RoadId
    :reader u8RoadId
    :initarg :u8RoadId
    :type cl:integer
    :initform 0)
   (u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0)
   (u4DefaultSpeed
    :reader u4DefaultSpeed
    :initarg :u4DefaultSpeed
    :type cl:float
    :initform 0.0)
   (u4WaterLevel
    :reader u4WaterLevel
    :initarg :u4WaterLevel
    :type cl:float
    :initform 0.0)
   (u4DistToJunc
    :reader u4DistToJunc
    :initarg :u4DistToJunc
    :type cl:float
    :initform 0.0))
)

(cl:defclass road_state (<road_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <road_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'road_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<road_state> is deprecated: use RosAdapter-msg:road_state instead.")))

(cl:ensure-generic-function 'u8RoadId-val :lambda-list '(m))
(cl:defmethod u8RoadId-val ((m <road_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RoadId-val is deprecated.  Use RosAdapter-msg:u8RoadId instead.")
  (u8RoadId m))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <road_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))

(cl:ensure-generic-function 'u4DefaultSpeed-val :lambda-list '(m))
(cl:defmethod u4DefaultSpeed-val ((m <road_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DefaultSpeed-val is deprecated.  Use RosAdapter-msg:u4DefaultSpeed instead.")
  (u4DefaultSpeed m))

(cl:ensure-generic-function 'u4WaterLevel-val :lambda-list '(m))
(cl:defmethod u4WaterLevel-val ((m <road_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4WaterLevel-val is deprecated.  Use RosAdapter-msg:u4WaterLevel instead.")
  (u4WaterLevel m))

(cl:ensure-generic-function 'u4DistToJunc-val :lambda-list '(m))
(cl:defmethod u4DistToJunc-val ((m <road_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistToJunc-val is deprecated.  Use RosAdapter-msg:u4DistToJunc instead.")
  (u4DistToJunc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <road_state>) ostream)
  "Serializes a message object of type '<road_state>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DefaultSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4WaterLevel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DistToJunc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <road_state>) istream)
  "Deserializes a message object of type '<road_state>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DefaultSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4WaterLevel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistToJunc) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<road_state>)))
  "Returns string type for a message object of type '<road_state>"
  "RosAdapter/road_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'road_state)))
  "Returns string type for a message object of type 'road_state"
  "RosAdapter/road_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<road_state>)))
  "Returns md5sum for a message object of type '<road_state>"
  "7b99771b3b0714bf50c28d1e2e932612")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'road_state)))
  "Returns md5sum for a message object of type 'road_state"
  "7b99771b3b0714bf50c28d1e2e932612")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<road_state>)))
  "Returns full string definition for message of type '<road_state>"
  (cl:format cl:nil "#/** ------ 车辆对应的道路状态 ------ */~%uint64  u8RoadId~%uint32  u4ObjectId~%float32 u4DefaultSpeed~%float32 u4WaterLevel~%float32 u4DistToJunc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'road_state)))
  "Returns full string definition for message of type 'road_state"
  (cl:format cl:nil "#/** ------ 车辆对应的道路状态 ------ */~%uint64  u8RoadId~%uint32  u4ObjectId~%float32 u4DefaultSpeed~%float32 u4WaterLevel~%float32 u4DistToJunc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <road_state>))
  (cl:+ 0
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <road_state>))
  "Converts a ROS message object to a list"
  (cl:list 'road_state
    (cl:cons ':u8RoadId (u8RoadId msg))
    (cl:cons ':u4ObjectId (u4ObjectId msg))
    (cl:cons ':u4DefaultSpeed (u4DefaultSpeed msg))
    (cl:cons ':u4WaterLevel (u4WaterLevel msg))
    (cl:cons ':u4DistToJunc (u4DistToJunc msg))
))
