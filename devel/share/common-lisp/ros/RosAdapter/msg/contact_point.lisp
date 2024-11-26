; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude contact_point.msg.html

(cl:defclass <contact_point> (roslisp-msg-protocol:ros-message)
  ((sRoadDataIn
    :reader sRoadDataIn
    :initarg :sRoadDataIn
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (u2Id
    :reader u2Id
    :initarg :u2Id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass contact_point (<contact_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <contact_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'contact_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<contact_point> is deprecated: use RosAdapter-msg:contact_point instead.")))

(cl:ensure-generic-function 'sRoadDataIn-val :lambda-list '(m))
(cl:defmethod sRoadDataIn-val ((m <contact_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sRoadDataIn-val is deprecated.  Use RosAdapter-msg:sRoadDataIn instead.")
  (sRoadDataIn m))

(cl:ensure-generic-function 'u2Id-val :lambda-list '(m))
(cl:defmethod u2Id-val ((m <contact_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2Id-val is deprecated.  Use RosAdapter-msg:u2Id instead.")
  (u2Id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <contact_point>) ostream)
  "Serializes a message object of type '<contact_point>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sRoadDataIn) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <contact_point>) istream)
  "Deserializes a message object of type '<contact_point>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sRoadDataIn) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<contact_point>)))
  "Returns string type for a message object of type '<contact_point>"
  "RosAdapter/contact_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'contact_point)))
  "Returns string type for a message object of type 'contact_point"
  "RosAdapter/contact_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<contact_point>)))
  "Returns md5sum for a message object of type '<contact_point>"
  "41a840108b4df99218eaa97f9aa87ec5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'contact_point)))
  "Returns md5sum for a message object of type 'contact_point"
  "41a840108b4df99218eaa97f9aa87ec5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<contact_point>)))
  "Returns full string definition for message of type '<contact_point>"
  (cl:format cl:nil "# /** ------ 接触点信息 ------ */~%coord  sRoadDataIn~%uint16 u2Id~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'contact_point)))
  "Returns full string definition for message of type 'contact_point"
  (cl:format cl:nil "# /** ------ 接触点信息 ------ */~%coord  sRoadDataIn~%uint16 u2Id~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <contact_point>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sRoadDataIn))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <contact_point>))
  "Converts a ROS message object to a list"
  (cl:list 'contact_point
    (cl:cons ':sRoadDataIn (sRoadDataIn msg))
    (cl:cons ':u2Id (u2Id msg))
))
