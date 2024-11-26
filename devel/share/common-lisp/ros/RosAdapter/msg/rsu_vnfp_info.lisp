; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude rsu_vnfp_info.msg.html

(cl:defclass <rsu_vnfp_info> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass rsu_vnfp_info (<rsu_vnfp_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rsu_vnfp_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rsu_vnfp_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<rsu_vnfp_info> is deprecated: use RosAdapter-msg:rsu_vnfp_info instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <rsu_vnfp_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:type-val is deprecated.  Use RosAdapter-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rsu_vnfp_info>) ostream)
  "Serializes a message object of type '<rsu_vnfp_info>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rsu_vnfp_info>) istream)
  "Deserializes a message object of type '<rsu_vnfp_info>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rsu_vnfp_info>)))
  "Returns string type for a message object of type '<rsu_vnfp_info>"
  "RosAdapter/rsu_vnfp_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rsu_vnfp_info)))
  "Returns string type for a message object of type 'rsu_vnfp_info"
  "RosAdapter/rsu_vnfp_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rsu_vnfp_info>)))
  "Returns md5sum for a message object of type '<rsu_vnfp_info>"
  "fddb7a9f6752fdb043992b8a34032ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rsu_vnfp_info)))
  "Returns md5sum for a message object of type 'rsu_vnfp_info"
  "fddb7a9f6752fdb043992b8a34032ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rsu_vnfp_info>)))
  "Returns full string definition for message of type '<rsu_vnfp_info>"
  (cl:format cl:nil "uint32    type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rsu_vnfp_info)))
  "Returns full string definition for message of type 'rsu_vnfp_info"
  (cl:format cl:nil "uint32    type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rsu_vnfp_info>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rsu_vnfp_info>))
  "Converts a ROS message object to a list"
  (cl:list 'rsu_vnfp_info
    (cl:cons ':type (type msg))
))
