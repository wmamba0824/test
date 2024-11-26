; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude sync.msg.html

(cl:defclass <sync> (roslisp-msg-protocol:ros-message)
  ((u4CmdMask
    :reader u4CmdMask
    :initarg :u4CmdMask
    :type cl:integer
    :initform 0)
   (u4UserData
    :reader u4UserData
    :initarg :u4UserData
    :type cl:integer
    :initform 0))
)

(cl:defclass sync (<sync>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sync>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sync)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<sync> is deprecated: use RosAdapter-msg:sync instead.")))

(cl:ensure-generic-function 'u4CmdMask-val :lambda-list '(m))
(cl:defmethod u4CmdMask-val ((m <sync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4CmdMask-val is deprecated.  Use RosAdapter-msg:u4CmdMask instead.")
  (u4CmdMask m))

(cl:ensure-generic-function 'u4UserData-val :lambda-list '(m))
(cl:defmethod u4UserData-val ((m <sync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4UserData-val is deprecated.  Use RosAdapter-msg:u4UserData instead.")
  (u4UserData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sync>) ostream)
  "Serializes a message object of type '<sync>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4CmdMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4CmdMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4CmdMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4CmdMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4UserData)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4UserData)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4UserData)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4UserData)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sync>) istream)
  "Deserializes a message object of type '<sync>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4CmdMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4CmdMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4CmdMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4CmdMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4UserData)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4UserData)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4UserData)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4UserData)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sync>)))
  "Returns string type for a message object of type '<sync>"
  "RosAdapter/sync")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sync)))
  "Returns string type for a message object of type 'sync"
  "RosAdapter/sync")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sync>)))
  "Returns md5sum for a message object of type '<sync>"
  "404a13d7ef42e664a8f190745b98093b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sync)))
  "Returns md5sum for a message object of type 'sync"
  "404a13d7ef42e664a8f190745b98093b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sync>)))
  "Returns full string definition for message of type '<sync>"
  (cl:format cl:nil "# /** ------ 同步信号 ------ */~%uint32 u4CmdMask~%uint32 u4UserData~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sync)))
  "Returns full string definition for message of type 'sync"
  (cl:format cl:nil "# /** ------ 同步信号 ------ */~%uint32 u4CmdMask~%uint32 u4UserData~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sync>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sync>))
  "Converts a ROS message object to a list"
  (cl:list 'sync
    (cl:cons ':u4CmdMask (u4CmdMask msg))
    (cl:cons ':u4UserData (u4UserData msg))
))
