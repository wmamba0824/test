; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude assign_controller_property.msg.html

(cl:defclass <assign_controller_property> (roslisp-msg-protocol:ros-message)
  ((au1Name
    :reader au1Name
    :initarg :au1Name
    :type cl:string
    :initform "")
   (au1Value
    :reader au1Value
    :initarg :au1Value
    :type cl:string
    :initform ""))
)

(cl:defclass assign_controller_property (<assign_controller_property>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assign_controller_property>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assign_controller_property)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<assign_controller_property> is deprecated: use RosAdapter-msg:assign_controller_property instead.")))

(cl:ensure-generic-function 'au1Name-val :lambda-list '(m))
(cl:defmethod au1Name-val ((m <assign_controller_property>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Name-val is deprecated.  Use RosAdapter-msg:au1Name instead.")
  (au1Name m))

(cl:ensure-generic-function 'au1Value-val :lambda-list '(m))
(cl:defmethod au1Value-val ((m <assign_controller_property>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Value-val is deprecated.  Use RosAdapter-msg:au1Value instead.")
  (au1Value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assign_controller_property>) ostream)
  "Serializes a message object of type '<assign_controller_property>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assign_controller_property>) istream)
  "Deserializes a message object of type '<assign_controller_property>"
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
      (cl:setf (cl:slot-value msg 'au1Value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1Value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assign_controller_property>)))
  "Returns string type for a message object of type '<assign_controller_property>"
  "RosAdapter/assign_controller_property")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assign_controller_property)))
  "Returns string type for a message object of type 'assign_controller_property"
  "RosAdapter/assign_controller_property")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assign_controller_property>)))
  "Returns md5sum for a message object of type '<assign_controller_property>"
  "8c8abeff0815c54344be4ebcd153b4cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assign_controller_property)))
  "Returns md5sum for a message object of type 'assign_controller_property"
  "8c8abeff0815c54344be4ebcd153b4cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assign_controller_property>)))
  "Returns full string definition for message of type '<assign_controller_property>"
  (cl:format cl:nil "# /** ------分配控制器的属性信息 ------ */~%~%string   au1Name~%string   au1Value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assign_controller_property)))
  "Returns full string definition for message of type 'assign_controller_property"
  (cl:format cl:nil "# /** ------分配控制器的属性信息 ------ */~%~%string   au1Name~%string   au1Value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assign_controller_property>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1Name))
     4 (cl:length (cl:slot-value msg 'au1Value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assign_controller_property>))
  "Converts a ROS message object to a list"
  (cl:list 'assign_controller_property
    (cl:cons ':au1Name (au1Name msg))
    (cl:cons ':au1Value (au1Value msg))
))
