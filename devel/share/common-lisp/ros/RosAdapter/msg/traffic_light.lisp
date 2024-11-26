; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude traffic_light.msg.html

(cl:defclass <traffic_light> (roslisp-msg-protocol:ros-message)
  ((u4Id
    :reader u4Id
    :initarg :u4Id
    :type cl:integer
    :initform 0)
   (u4CtrlId
    :reader u4CtrlId
    :initarg :u4CtrlId
    :type cl:integer
    :initform 0)
   (u4NoPhases
    :reader u4NoPhases
    :initarg :u4NoPhases
    :type cl:integer
    :initform 0)
   (u4DataSize
    :reader u4DataSize
    :initarg :u4DataSize
    :type cl:integer
    :initform 0)
   (u4State
    :reader u4State
    :initarg :u4State
    :type cl:float
    :initform 0.0)
   (u4CycleTime
    :reader u4CycleTime
    :initarg :u4CycleTime
    :type cl:float
    :initform 0.0)
   (phases
    :reader phases
    :initarg :phases
    :type (cl:vector RosAdapter-msg:traffic_light_phase)
   :initform (cl:make-array 0 :element-type 'RosAdapter-msg:traffic_light_phase :initial-element (cl:make-instance 'RosAdapter-msg:traffic_light_phase))))
)

(cl:defclass traffic_light (<traffic_light>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <traffic_light>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'traffic_light)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<traffic_light> is deprecated: use RosAdapter-msg:traffic_light instead.")))

(cl:ensure-generic-function 'u4Id-val :lambda-list '(m))
(cl:defmethod u4Id-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Id-val is deprecated.  Use RosAdapter-msg:u4Id instead.")
  (u4Id m))

(cl:ensure-generic-function 'u4CtrlId-val :lambda-list '(m))
(cl:defmethod u4CtrlId-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4CtrlId-val is deprecated.  Use RosAdapter-msg:u4CtrlId instead.")
  (u4CtrlId m))

(cl:ensure-generic-function 'u4NoPhases-val :lambda-list '(m))
(cl:defmethod u4NoPhases-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4NoPhases-val is deprecated.  Use RosAdapter-msg:u4NoPhases instead.")
  (u4NoPhases m))

(cl:ensure-generic-function 'u4DataSize-val :lambda-list '(m))
(cl:defmethod u4DataSize-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DataSize-val is deprecated.  Use RosAdapter-msg:u4DataSize instead.")
  (u4DataSize m))

(cl:ensure-generic-function 'u4State-val :lambda-list '(m))
(cl:defmethod u4State-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4State-val is deprecated.  Use RosAdapter-msg:u4State instead.")
  (u4State m))

(cl:ensure-generic-function 'u4CycleTime-val :lambda-list '(m))
(cl:defmethod u4CycleTime-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4CycleTime-val is deprecated.  Use RosAdapter-msg:u4CycleTime instead.")
  (u4CycleTime m))

(cl:ensure-generic-function 'phases-val :lambda-list '(m))
(cl:defmethod phases-val ((m <traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:phases-val is deprecated.  Use RosAdapter-msg:phases instead.")
  (phases m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <traffic_light>) ostream)
  "Serializes a message object of type '<traffic_light>"
  (cl:let* ((signed (cl:slot-value msg 'u4Id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'u4CtrlId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4NoPhases)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4NoPhases)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4NoPhases)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4NoPhases)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4DataSize)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4State))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4CycleTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'phases))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'phases))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <traffic_light>) istream)
  "Deserializes a message object of type '<traffic_light>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u4Id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u4CtrlId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4NoPhases)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4NoPhases)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4NoPhases)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4NoPhases)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4DataSize)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4State) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4CycleTime) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'phases) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'phases)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'RosAdapter-msg:traffic_light_phase))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<traffic_light>)))
  "Returns string type for a message object of type '<traffic_light>"
  "RosAdapter/traffic_light")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'traffic_light)))
  "Returns string type for a message object of type 'traffic_light"
  "RosAdapter/traffic_light")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<traffic_light>)))
  "Returns md5sum for a message object of type '<traffic_light>"
  "05f765de27ecea681bdb9de73fefe6a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'traffic_light)))
  "Returns md5sum for a message object of type 'traffic_light"
  "05f765de27ecea681bdb9de73fefe6a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<traffic_light>)))
  "Returns full string definition for message of type '<traffic_light>"
  (cl:format cl:nil "# /** ------ 交通灯信息 ------ */~%int32                    u4Id~%int32                    u4CtrlId~%uint32                   u4NoPhases~%uint32                   u4DataSize~%float32                  u4State~%float32                  u4CycleTime~%traffic_light_phase[]    phases~%================================================================================~%MSG: RosAdapter/traffic_light_phase~%# /** ------ 交通灯相位信息 ------ */~%~%float32     u4Duration~%uint8       u1Status   ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'traffic_light)))
  "Returns full string definition for message of type 'traffic_light"
  (cl:format cl:nil "# /** ------ 交通灯信息 ------ */~%int32                    u4Id~%int32                    u4CtrlId~%uint32                   u4NoPhases~%uint32                   u4DataSize~%float32                  u4State~%float32                  u4CycleTime~%traffic_light_phase[]    phases~%================================================================================~%MSG: RosAdapter/traffic_light_phase~%# /** ------ 交通灯相位信息 ------ */~%~%float32     u4Duration~%uint8       u1Status   ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <traffic_light>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'phases) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <traffic_light>))
  "Converts a ROS message object to a list"
  (cl:list 'traffic_light
    (cl:cons ':u4Id (u4Id msg))
    (cl:cons ':u4CtrlId (u4CtrlId msg))
    (cl:cons ':u4NoPhases (u4NoPhases msg))
    (cl:cons ':u4DataSize (u4DataSize msg))
    (cl:cons ':u4State (u4State msg))
    (cl:cons ':u4CycleTime (u4CycleTime msg))
    (cl:cons ':phases (phases msg))
))
