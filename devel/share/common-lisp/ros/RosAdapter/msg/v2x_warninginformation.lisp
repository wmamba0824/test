; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude v2x_warninginformation.msg.html

(cl:defclass <v2x_warninginformation> (roslisp-msg-protocol:ros-message)
  ((u4Type
    :reader u4Type
    :initarg :u4Type
    :type cl:integer
    :initform 0))
)

(cl:defclass v2x_warninginformation (<v2x_warninginformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <v2x_warninginformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'v2x_warninginformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<v2x_warninginformation> is deprecated: use RosAdapter-msg:v2x_warninginformation instead.")))

(cl:ensure-generic-function 'u4Type-val :lambda-list '(m))
(cl:defmethod u4Type-val ((m <v2x_warninginformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Type-val is deprecated.  Use RosAdapter-msg:u4Type instead.")
  (u4Type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <v2x_warninginformation>) ostream)
  "Serializes a message object of type '<v2x_warninginformation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <v2x_warninginformation>) istream)
  "Deserializes a message object of type '<v2x_warninginformation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<v2x_warninginformation>)))
  "Returns string type for a message object of type '<v2x_warninginformation>"
  "RosAdapter/v2x_warninginformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'v2x_warninginformation)))
  "Returns string type for a message object of type 'v2x_warninginformation"
  "RosAdapter/v2x_warninginformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<v2x_warninginformation>)))
  "Returns md5sum for a message object of type '<v2x_warninginformation>"
  "d0ebee8563c45127e3636d2e914f1c30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'v2x_warninginformation)))
  "Returns md5sum for a message object of type 'v2x_warninginformation"
  "d0ebee8563c45127e3636d2e914f1c30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<v2x_warninginformation>)))
  "Returns full string definition for message of type '<v2x_warninginformation>"
  (cl:format cl:nil "# /** ------ V2X 告警信息 ------ */~%~%uint32 u4Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'v2x_warninginformation)))
  "Returns full string definition for message of type 'v2x_warninginformation"
  (cl:format cl:nil "# /** ------ V2X 告警信息 ------ */~%~%uint32 u4Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <v2x_warninginformation>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <v2x_warninginformation>))
  "Converts a ROS message object to a list"
  (cl:list 'v2x_warninginformation
    (cl:cons ':u4Type (u4Type msg))
))
