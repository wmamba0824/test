; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude init_param.msg.html

(cl:defclass <init_param> (roslisp-msg-protocol:ros-message)
  ((au1OpenScenario
    :reader au1OpenScenario
    :initarg :au1OpenScenario
    :type cl:string
    :initform "")
   (au1OpenDrive
    :reader au1OpenDrive
    :initarg :au1OpenDrive
    :type cl:string
    :initform "")
   (u8StartRoadId
    :reader u8StartRoadId
    :initarg :u8StartRoadId
    :type cl:integer
    :initform 0)
   (u8EndRoadId
    :reader u8EndRoadId
    :initarg :u8EndRoadId
    :type cl:integer
    :initform 0)
   (u4StartRoadS
    :reader u4StartRoadS
    :initarg :u4StartRoadS
    :type cl:float
    :initform 0.0)
   (u4EndRoadS
    :reader u4EndRoadS
    :initarg :u4EndRoadS
    :type cl:float
    :initform 0.0)
   (u4Speed
    :reader u4Speed
    :initarg :u4Speed
    :type cl:float
    :initform 0.0)
   (u2ScenarioId
    :reader u2ScenarioId
    :initarg :u2ScenarioId
    :type cl:fixnum
    :initform 0)
   (u1StartLaneId
    :reader u1StartLaneId
    :initarg :u1StartLaneId
    :type cl:fixnum
    :initform 0)
   (u1EndLaneId
    :reader u1EndLaneId
    :initarg :u1EndLaneId
    :type cl:fixnum
    :initform 0))
)

(cl:defclass init_param (<init_param>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <init_param>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'init_param)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<init_param> is deprecated: use RosAdapter-msg:init_param instead.")))

(cl:ensure-generic-function 'au1OpenScenario-val :lambda-list '(m))
(cl:defmethod au1OpenScenario-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1OpenScenario-val is deprecated.  Use RosAdapter-msg:au1OpenScenario instead.")
  (au1OpenScenario m))

(cl:ensure-generic-function 'au1OpenDrive-val :lambda-list '(m))
(cl:defmethod au1OpenDrive-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1OpenDrive-val is deprecated.  Use RosAdapter-msg:au1OpenDrive instead.")
  (au1OpenDrive m))

(cl:ensure-generic-function 'u8StartRoadId-val :lambda-list '(m))
(cl:defmethod u8StartRoadId-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8StartRoadId-val is deprecated.  Use RosAdapter-msg:u8StartRoadId instead.")
  (u8StartRoadId m))

(cl:ensure-generic-function 'u8EndRoadId-val :lambda-list '(m))
(cl:defmethod u8EndRoadId-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8EndRoadId-val is deprecated.  Use RosAdapter-msg:u8EndRoadId instead.")
  (u8EndRoadId m))

(cl:ensure-generic-function 'u4StartRoadS-val :lambda-list '(m))
(cl:defmethod u4StartRoadS-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4StartRoadS-val is deprecated.  Use RosAdapter-msg:u4StartRoadS instead.")
  (u4StartRoadS m))

(cl:ensure-generic-function 'u4EndRoadS-val :lambda-list '(m))
(cl:defmethod u4EndRoadS-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4EndRoadS-val is deprecated.  Use RosAdapter-msg:u4EndRoadS instead.")
  (u4EndRoadS m))

(cl:ensure-generic-function 'u4Speed-val :lambda-list '(m))
(cl:defmethod u4Speed-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Speed-val is deprecated.  Use RosAdapter-msg:u4Speed instead.")
  (u4Speed m))

(cl:ensure-generic-function 'u2ScenarioId-val :lambda-list '(m))
(cl:defmethod u2ScenarioId-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2ScenarioId-val is deprecated.  Use RosAdapter-msg:u2ScenarioId instead.")
  (u2ScenarioId m))

(cl:ensure-generic-function 'u1StartLaneId-val :lambda-list '(m))
(cl:defmethod u1StartLaneId-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1StartLaneId-val is deprecated.  Use RosAdapter-msg:u1StartLaneId instead.")
  (u1StartLaneId m))

(cl:ensure-generic-function 'u1EndLaneId-val :lambda-list '(m))
(cl:defmethod u1EndLaneId-val ((m <init_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1EndLaneId-val is deprecated.  Use RosAdapter-msg:u1EndLaneId instead.")
  (u1EndLaneId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <init_param>) ostream)
  "Serializes a message object of type '<init_param>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1OpenScenario))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1OpenScenario))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1OpenDrive))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1OpenDrive))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8StartRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8EndRoadId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4StartRoadS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4EndRoadS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2ScenarioId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2ScenarioId)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u1StartLaneId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'u1EndLaneId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <init_param>) istream)
  "Deserializes a message object of type '<init_param>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1OpenScenario) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1OpenScenario) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1OpenDrive) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1OpenDrive) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8StartRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8EndRoadId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4StartRoadS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4EndRoadS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2ScenarioId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2ScenarioId)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1StartLaneId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1EndLaneId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<init_param>)))
  "Returns string type for a message object of type '<init_param>"
  "RosAdapter/init_param")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'init_param)))
  "Returns string type for a message object of type 'init_param"
  "RosAdapter/init_param")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<init_param>)))
  "Returns md5sum for a message object of type '<init_param>"
  "d1c91c53dd3d6cc4f662b216093d05ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'init_param)))
  "Returns md5sum for a message object of type 'init_param"
  "d1c91c53dd3d6cc4f662b216093d05ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<init_param>)))
  "Returns full string definition for message of type '<init_param>"
  (cl:format cl:nil "# /** ------ 初始化参数 ------ */~%~%string             au1OpenScenario~%string             au1OpenDrive~%uint64             u8StartRoadId~%uint64             u8EndRoadId~%float32            u4StartRoadS~%float32            u4EndRoadS~%float32            u4Speed~%uint16             u2ScenarioId~%int8               u1StartLaneId~%int8               u1EndLaneId~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'init_param)))
  "Returns full string definition for message of type 'init_param"
  (cl:format cl:nil "# /** ------ 初始化参数 ------ */~%~%string             au1OpenScenario~%string             au1OpenDrive~%uint64             u8StartRoadId~%uint64             u8EndRoadId~%float32            u4StartRoadS~%float32            u4EndRoadS~%float32            u4Speed~%uint16             u2ScenarioId~%int8               u1StartLaneId~%int8               u1EndLaneId~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <init_param>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1OpenScenario))
     4 (cl:length (cl:slot-value msg 'au1OpenDrive))
     8
     8
     4
     4
     4
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <init_param>))
  "Converts a ROS message object to a list"
  (cl:list 'init_param
    (cl:cons ':au1OpenScenario (au1OpenScenario msg))
    (cl:cons ':au1OpenDrive (au1OpenDrive msg))
    (cl:cons ':u8StartRoadId (u8StartRoadId msg))
    (cl:cons ':u8EndRoadId (u8EndRoadId msg))
    (cl:cons ':u4StartRoadS (u4StartRoadS msg))
    (cl:cons ':u4EndRoadS (u4EndRoadS msg))
    (cl:cons ':u4Speed (u4Speed msg))
    (cl:cons ':u2ScenarioId (u2ScenarioId msg))
    (cl:cons ':u1StartLaneId (u1StartLaneId msg))
    (cl:cons ':u1EndLaneId (u1EndLaneId msg))
))
