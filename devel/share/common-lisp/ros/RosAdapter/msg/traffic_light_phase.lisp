; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude traffic_light_phase.msg.html

(cl:defclass <traffic_light_phase> (roslisp-msg-protocol:ros-message)
  ((u4Duration
    :reader u4Duration
    :initarg :u4Duration
    :type cl:float
    :initform 0.0)
   (u1Status
    :reader u1Status
    :initarg :u1Status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass traffic_light_phase (<traffic_light_phase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <traffic_light_phase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'traffic_light_phase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<traffic_light_phase> is deprecated: use RosAdapter-msg:traffic_light_phase instead.")))

(cl:ensure-generic-function 'u4Duration-val :lambda-list '(m))
(cl:defmethod u4Duration-val ((m <traffic_light_phase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Duration-val is deprecated.  Use RosAdapter-msg:u4Duration instead.")
  (u4Duration m))

(cl:ensure-generic-function 'u1Status-val :lambda-list '(m))
(cl:defmethod u1Status-val ((m <traffic_light_phase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Status-val is deprecated.  Use RosAdapter-msg:u1Status instead.")
  (u1Status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <traffic_light_phase>) ostream)
  "Serializes a message object of type '<traffic_light_phase>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <traffic_light_phase>) istream)
  "Deserializes a message object of type '<traffic_light_phase>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<traffic_light_phase>)))
  "Returns string type for a message object of type '<traffic_light_phase>"
  "RosAdapter/traffic_light_phase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'traffic_light_phase)))
  "Returns string type for a message object of type 'traffic_light_phase"
  "RosAdapter/traffic_light_phase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<traffic_light_phase>)))
  "Returns md5sum for a message object of type '<traffic_light_phase>"
  "b1ac58ef8e89d4655dd7a1a78a5c64d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'traffic_light_phase)))
  "Returns md5sum for a message object of type 'traffic_light_phase"
  "b1ac58ef8e89d4655dd7a1a78a5c64d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<traffic_light_phase>)))
  "Returns full string definition for message of type '<traffic_light_phase>"
  (cl:format cl:nil "# /** ------ 交通灯相位信息 ------ */~%~%float32     u4Duration~%uint8       u1Status   ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'traffic_light_phase)))
  "Returns full string definition for message of type 'traffic_light_phase"
  (cl:format cl:nil "# /** ------ 交通灯相位信息 ------ */~%~%float32     u4Duration~%uint8       u1Status   ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <traffic_light_phase>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <traffic_light_phase>))
  "Converts a ROS message object to a list"
  (cl:list 'traffic_light_phase
    (cl:cons ':u4Duration (u4Duration msg))
    (cl:cons ':u1Status (u1Status msg))
))
