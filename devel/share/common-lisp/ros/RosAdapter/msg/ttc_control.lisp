; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude ttc_control.msg.html

(cl:defclass <ttc_control> (roslisp-msg-protocol:ros-message)
  ((u4Status
    :reader u4Status
    :initarg :u4Status
    :type cl:integer
    :initform 0))
)

(cl:defclass ttc_control (<ttc_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ttc_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ttc_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<ttc_control> is deprecated: use RosAdapter-msg:ttc_control instead.")))

(cl:ensure-generic-function 'u4Status-val :lambda-list '(m))
(cl:defmethod u4Status-val ((m <ttc_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Status-val is deprecated.  Use RosAdapter-msg:u4Status instead.")
  (u4Status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ttc_control>) ostream)
  "Serializes a message object of type '<ttc_control>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ttc_control>) istream)
  "Deserializes a message object of type '<ttc_control>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4Status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ttc_control>)))
  "Returns string type for a message object of type '<ttc_control>"
  "RosAdapter/ttc_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ttc_control)))
  "Returns string type for a message object of type 'ttc_control"
  "RosAdapter/ttc_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ttc_control>)))
  "Returns md5sum for a message object of type '<ttc_control>"
  "4a9adebec45df2e6ca13379191df618a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ttc_control)))
  "Returns md5sum for a message object of type 'ttc_control"
  "4a9adebec45df2e6ca13379191df618a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ttc_control>)))
  "Returns full string definition for message of type '<ttc_control>"
  (cl:format cl:nil "uint32  u4Status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ttc_control)))
  "Returns full string definition for message of type 'ttc_control"
  (cl:format cl:nil "uint32  u4Status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ttc_control>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ttc_control>))
  "Converts a ROS message object to a list"
  (cl:list 'ttc_control
    (cl:cons ':u4Status (u4Status msg))
))
