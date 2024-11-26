; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude assign_controller.msg.html

(cl:defclass <assign_controller> (roslisp-msg-protocol:ros-message)
  ((au1ControllerName
    :reader au1ControllerName
    :initarg :au1ControllerName
    :type cl:string
    :initform "")
   (u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0)
   (u4PropertyNum
    :reader u4PropertyNum
    :initarg :u4PropertyNum
    :type cl:integer
    :initform 0)
   (properties
    :reader properties
    :initarg :properties
    :type (cl:vector RosAdapter-msg:assign_controller_property)
   :initform (cl:make-array 0 :element-type 'RosAdapter-msg:assign_controller_property :initial-element (cl:make-instance 'RosAdapter-msg:assign_controller_property))))
)

(cl:defclass assign_controller (<assign_controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assign_controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assign_controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<assign_controller> is deprecated: use RosAdapter-msg:assign_controller instead.")))

(cl:ensure-generic-function 'au1ControllerName-val :lambda-list '(m))
(cl:defmethod au1ControllerName-val ((m <assign_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1ControllerName-val is deprecated.  Use RosAdapter-msg:au1ControllerName instead.")
  (au1ControllerName m))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <assign_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))

(cl:ensure-generic-function 'u4PropertyNum-val :lambda-list '(m))
(cl:defmethod u4PropertyNum-val ((m <assign_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4PropertyNum-val is deprecated.  Use RosAdapter-msg:u4PropertyNum instead.")
  (u4PropertyNum m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <assign_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:properties-val is deprecated.  Use RosAdapter-msg:properties instead.")
  (properties m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assign_controller>) ostream)
  "Serializes a message object of type '<assign_controller>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1ControllerName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1ControllerName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4PropertyNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4PropertyNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4PropertyNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4PropertyNum)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'properties))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assign_controller>) istream)
  "Deserializes a message object of type '<assign_controller>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1ControllerName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1ControllerName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4PropertyNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4PropertyNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4PropertyNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4PropertyNum)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'RosAdapter-msg:assign_controller_property))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assign_controller>)))
  "Returns string type for a message object of type '<assign_controller>"
  "RosAdapter/assign_controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assign_controller)))
  "Returns string type for a message object of type 'assign_controller"
  "RosAdapter/assign_controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assign_controller>)))
  "Returns md5sum for a message object of type '<assign_controller>"
  "b69f794058ba5b23b8c59db3ddbf21fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assign_controller)))
  "Returns md5sum for a message object of type 'assign_controller"
  "b69f794058ba5b23b8c59db3ddbf21fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assign_controller>)))
  "Returns full string definition for message of type '<assign_controller>"
  (cl:format cl:nil "# /** ------分配控制器 ------ */~%~%string                               au1ControllerName~%uint32                               u4ObjectId~%uint32                               u4PropertyNum~%assign_controller_property[]         properties~%================================================================================~%MSG: RosAdapter/assign_controller_property~%# /** ------分配控制器的属性信息 ------ */~%~%string   au1Name~%string   au1Value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assign_controller)))
  "Returns full string definition for message of type 'assign_controller"
  (cl:format cl:nil "# /** ------分配控制器 ------ */~%~%string                               au1ControllerName~%uint32                               u4ObjectId~%uint32                               u4PropertyNum~%assign_controller_property[]         properties~%================================================================================~%MSG: RosAdapter/assign_controller_property~%# /** ------分配控制器的属性信息 ------ */~%~%string   au1Name~%string   au1Value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assign_controller>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1ControllerName))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assign_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'assign_controller
    (cl:cons ':au1ControllerName (au1ControllerName msg))
    (cl:cons ':u4ObjectId (u4ObjectId msg))
    (cl:cons ':u4PropertyNum (u4PropertyNum msg))
    (cl:cons ':properties (properties msg))
))
