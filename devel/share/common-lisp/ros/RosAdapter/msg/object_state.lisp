; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude object_state.msg.html

(cl:defclass <object_state> (roslisp-msg-protocol:ros-message)
  ((sSpeed
    :reader sSpeed
    :initarg :sSpeed
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sAccel
    :reader sAccel
    :initarg :sAccel
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sGeo
    :reader sGeo
    :initarg :sGeo
    :type RosAdapter-msg:geometry
    :initform (cl:make-instance 'RosAdapter-msg:geometry))
   (sPos
    :reader sPos
    :initarg :sPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (au1Name
    :reader au1Name
    :initarg :au1Name
    :type cl:string
    :initform "")
   (au1ModelFileName
    :reader au1ModelFileName
    :initarg :au1ModelFileName
    :type cl:string
    :initform "")
   (au1ModelName
    :reader au1ModelName
    :initarg :au1ModelName
    :type cl:string
    :initform "")
   (au8ParamScale
    :reader au8ParamScale
    :initarg :au8ParamScale
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (u8RoadId
    :reader u8RoadId
    :initarg :u8RoadId
    :type cl:integer
    :initform 0)
   (u8SpeedLimit
    :reader u8SpeedLimit
    :initarg :u8SpeedLimit
    :type cl:float
    :initform 0.0)
   (u4Id
    :reader u4Id
    :initarg :u4Id
    :type cl:integer
    :initform 0)
   (u4RoadS
    :reader u4RoadS
    :initarg :u4RoadS
    :type cl:float
    :initform 0.0)
   (u4RoadT
    :reader u4RoadT
    :initarg :u4RoadT
    :type cl:float
    :initform 0.0)
   (u4HdgRel
    :reader u4HdgRel
    :initarg :u4HdgRel
    :type cl:float
    :initform 0.0)
   (u4LaneOffset
    :reader u4LaneOffset
    :initarg :u4LaneOffset
    :type cl:float
    :initform 0.0)
   (u4TraveledDist
    :reader u4TraveledDist
    :initarg :u4TraveledDist
    :type cl:float
    :initform 0.0)
   (u2visMask
    :reader u2visMask
    :initarg :u2visMask
    :type cl:fixnum
    :initform 0)
   (u1Type
    :reader u1Type
    :initarg :u1Type
    :type cl:fixnum
    :initform 0)
   (u1LaneId
    :reader u1LaneId
    :initarg :u1LaneId
    :type cl:fixnum
    :initform 0)
   (u1Dir
    :reader u1Dir
    :initarg :u1Dir
    :type cl:fixnum
    :initform 0)
   (u1IsOnRoad
    :reader u1IsOnRoad
    :initarg :u1IsOnRoad
    :type cl:boolean
    :initform cl:nil)
   (u1category
    :reader u1category
    :initarg :u1category
    :type cl:fixnum
    :initform 0))
)

(cl:defclass object_state (<object_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<object_state> is deprecated: use RosAdapter-msg:object_state instead.")))

(cl:ensure-generic-function 'sSpeed-val :lambda-list '(m))
(cl:defmethod sSpeed-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSpeed-val is deprecated.  Use RosAdapter-msg:sSpeed instead.")
  (sSpeed m))

(cl:ensure-generic-function 'sAccel-val :lambda-list '(m))
(cl:defmethod sAccel-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sAccel-val is deprecated.  Use RosAdapter-msg:sAccel instead.")
  (sAccel m))

(cl:ensure-generic-function 'sGeo-val :lambda-list '(m))
(cl:defmethod sGeo-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sGeo-val is deprecated.  Use RosAdapter-msg:sGeo instead.")
  (sGeo m))

(cl:ensure-generic-function 'sPos-val :lambda-list '(m))
(cl:defmethod sPos-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sPos-val is deprecated.  Use RosAdapter-msg:sPos instead.")
  (sPos m))

(cl:ensure-generic-function 'au1Name-val :lambda-list '(m))
(cl:defmethod au1Name-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Name-val is deprecated.  Use RosAdapter-msg:au1Name instead.")
  (au1Name m))

(cl:ensure-generic-function 'au1ModelFileName-val :lambda-list '(m))
(cl:defmethod au1ModelFileName-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1ModelFileName-val is deprecated.  Use RosAdapter-msg:au1ModelFileName instead.")
  (au1ModelFileName m))

(cl:ensure-generic-function 'au1ModelName-val :lambda-list '(m))
(cl:defmethod au1ModelName-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1ModelName-val is deprecated.  Use RosAdapter-msg:au1ModelName instead.")
  (au1ModelName m))

(cl:ensure-generic-function 'au8ParamScale-val :lambda-list '(m))
(cl:defmethod au8ParamScale-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au8ParamScale-val is deprecated.  Use RosAdapter-msg:au8ParamScale instead.")
  (au8ParamScale m))

(cl:ensure-generic-function 'u8RoadId-val :lambda-list '(m))
(cl:defmethod u8RoadId-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RoadId-val is deprecated.  Use RosAdapter-msg:u8RoadId instead.")
  (u8RoadId m))

(cl:ensure-generic-function 'u8SpeedLimit-val :lambda-list '(m))
(cl:defmethod u8SpeedLimit-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8SpeedLimit-val is deprecated.  Use RosAdapter-msg:u8SpeedLimit instead.")
  (u8SpeedLimit m))

(cl:ensure-generic-function 'u4Id-val :lambda-list '(m))
(cl:defmethod u4Id-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Id-val is deprecated.  Use RosAdapter-msg:u4Id instead.")
  (u4Id m))

(cl:ensure-generic-function 'u4RoadS-val :lambda-list '(m))
(cl:defmethod u4RoadS-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RoadS-val is deprecated.  Use RosAdapter-msg:u4RoadS instead.")
  (u4RoadS m))

(cl:ensure-generic-function 'u4RoadT-val :lambda-list '(m))
(cl:defmethod u4RoadT-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RoadT-val is deprecated.  Use RosAdapter-msg:u4RoadT instead.")
  (u4RoadT m))

(cl:ensure-generic-function 'u4HdgRel-val :lambda-list '(m))
(cl:defmethod u4HdgRel-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4HdgRel-val is deprecated.  Use RosAdapter-msg:u4HdgRel instead.")
  (u4HdgRel m))

(cl:ensure-generic-function 'u4LaneOffset-val :lambda-list '(m))
(cl:defmethod u4LaneOffset-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4LaneOffset-val is deprecated.  Use RosAdapter-msg:u4LaneOffset instead.")
  (u4LaneOffset m))

(cl:ensure-generic-function 'u4TraveledDist-val :lambda-list '(m))
(cl:defmethod u4TraveledDist-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4TraveledDist-val is deprecated.  Use RosAdapter-msg:u4TraveledDist instead.")
  (u4TraveledDist m))

(cl:ensure-generic-function 'u2visMask-val :lambda-list '(m))
(cl:defmethod u2visMask-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2visMask-val is deprecated.  Use RosAdapter-msg:u2visMask instead.")
  (u2visMask m))

(cl:ensure-generic-function 'u1Type-val :lambda-list '(m))
(cl:defmethod u1Type-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Type-val is deprecated.  Use RosAdapter-msg:u1Type instead.")
  (u1Type m))

(cl:ensure-generic-function 'u1LaneId-val :lambda-list '(m))
(cl:defmethod u1LaneId-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1LaneId-val is deprecated.  Use RosAdapter-msg:u1LaneId instead.")
  (u1LaneId m))

(cl:ensure-generic-function 'u1Dir-val :lambda-list '(m))
(cl:defmethod u1Dir-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Dir-val is deprecated.  Use RosAdapter-msg:u1Dir instead.")
  (u1Dir m))

(cl:ensure-generic-function 'u1IsOnRoad-val :lambda-list '(m))
(cl:defmethod u1IsOnRoad-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1IsOnRoad-val is deprecated.  Use RosAdapter-msg:u1IsOnRoad instead.")
  (u1IsOnRoad m))

(cl:ensure-generic-function 'u1category-val :lambda-list '(m))
(cl:defmethod u1category-val ((m <object_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1category-val is deprecated.  Use RosAdapter-msg:u1category instead.")
  (u1category m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_state>) ostream)
  "Serializes a message object of type '<object_state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSpeed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sAccel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sGeo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sPos) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1ModelFileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1ModelFileName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1ModelName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1ModelName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au8ParamScale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'au8ParamScale))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8SpeedLimit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RoadS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RoadT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4HdgRel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4LaneOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4TraveledDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2visMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2visMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u1LaneId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1IsOnRoad) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1category)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_state>) istream)
  "Deserializes a message object of type '<object_state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSpeed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sAccel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sGeo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sPos) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1ModelFileName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1ModelFileName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1ModelName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1ModelName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au8ParamScale) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au8ParamScale)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8SpeedLimit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RoadS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RoadT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4HdgRel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4LaneOffset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4TraveledDist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2visMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2visMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1LaneId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Dir)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u1IsOnRoad) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1category)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_state>)))
  "Returns string type for a message object of type '<object_state>"
  "RosAdapter/object_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_state)))
  "Returns string type for a message object of type 'object_state"
  "RosAdapter/object_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_state>)))
  "Returns md5sum for a message object of type '<object_state>"
  "487cbf303de88174ac14ecc4b4a926e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_state)))
  "Returns md5sum for a message object of type 'object_state"
  "487cbf303de88174ac14ecc4b4a926e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_state>)))
  "Returns full string definition for message of type '<object_state>"
  (cl:format cl:nil "# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_state)))
  "Returns full string definition for message of type 'object_state"
  (cl:format cl:nil "# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSpeed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sAccel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sGeo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sPos))
     4 (cl:length (cl:slot-value msg 'au1Name))
     4 (cl:length (cl:slot-value msg 'au1ModelFileName))
     4 (cl:length (cl:slot-value msg 'au1ModelName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au8ParamScale) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     4
     4
     4
     4
     4
     4
     2
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_state>))
  "Converts a ROS message object to a list"
  (cl:list 'object_state
    (cl:cons ':sSpeed (sSpeed msg))
    (cl:cons ':sAccel (sAccel msg))
    (cl:cons ':sGeo (sGeo msg))
    (cl:cons ':sPos (sPos msg))
    (cl:cons ':au1Name (au1Name msg))
    (cl:cons ':au1ModelFileName (au1ModelFileName msg))
    (cl:cons ':au1ModelName (au1ModelName msg))
    (cl:cons ':au8ParamScale (au8ParamScale msg))
    (cl:cons ':u8RoadId (u8RoadId msg))
    (cl:cons ':u8SpeedLimit (u8SpeedLimit msg))
    (cl:cons ':u4Id (u4Id msg))
    (cl:cons ':u4RoadS (u4RoadS msg))
    (cl:cons ':u4RoadT (u4RoadT msg))
    (cl:cons ':u4HdgRel (u4HdgRel msg))
    (cl:cons ':u4LaneOffset (u4LaneOffset msg))
    (cl:cons ':u4TraveledDist (u4TraveledDist msg))
    (cl:cons ':u2visMask (u2visMask msg))
    (cl:cons ':u1Type (u1Type msg))
    (cl:cons ':u1LaneId (u1LaneId msg))
    (cl:cons ':u1Dir (u1Dir msg))
    (cl:cons ':u1IsOnRoad (u1IsOnRoad msg))
    (cl:cons ':u1category (u1category msg))
))
