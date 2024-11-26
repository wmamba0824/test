; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude custom_command.msg.html

(cl:defclass <custom_command> (roslisp-msg-protocol:ros-message)
  ((au1Type
    :reader au1Type
    :initarg :au1Type
    :type cl:string
    :initform "")
   (au1Command
    :reader au1Command
    :initarg :au1Command
    :type cl:string
    :initform "")
   (u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0))
)

(cl:defclass custom_command (<custom_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<custom_command> is deprecated: use RosAdapter-msg:custom_command instead.")))

(cl:ensure-generic-function 'au1Type-val :lambda-list '(m))
(cl:defmethod au1Type-val ((m <custom_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Type-val is deprecated.  Use RosAdapter-msg:au1Type instead.")
  (au1Type m))

(cl:ensure-generic-function 'au1Command-val :lambda-list '(m))
(cl:defmethod au1Command-val ((m <custom_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Command-val is deprecated.  Use RosAdapter-msg:au1Command instead.")
  (au1Command m))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <custom_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom_command>) ostream)
  "Serializes a message object of type '<custom_command>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Command))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom_command>) istream)
  "Deserializes a message object of type '<custom_command>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1Type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1Type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1Command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1Command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom_command>)))
  "Returns string type for a message object of type '<custom_command>"
  "RosAdapter/custom_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom_command)))
  "Returns string type for a message object of type 'custom_command"
  "RosAdapter/custom_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom_command>)))
  "Returns md5sum for a message object of type '<custom_command>"
  "90841668178727efd240bbb0c9edb09b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom_command)))
  "Returns md5sum for a message object of type 'custom_command"
  "90841668178727efd240bbb0c9edb09b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom_command>)))
  "Returns full string definition for message of type '<custom_command>"
  (cl:format cl:nil "# /** ------自定义指令 ------ */~%~%string   au1Type~%string   au1Command~%uint32   u4ObjectId~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom_command)))
  "Returns full string definition for message of type 'custom_command"
  (cl:format cl:nil "# /** ------自定义指令 ------ */~%~%string   au1Type~%string   au1Command~%uint32   u4ObjectId~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom_command>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1Type))
     4 (cl:length (cl:slot-value msg 'au1Command))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom_command>))
  "Converts a ROS message object to a list"
  (cl:list 'custom_command
    (cl:cons ':au1Type (au1Type msg))
    (cl:cons ':au1Command (au1Command msg))
    (cl:cons ':u4ObjectId (u4ObjectId msg))
))
