; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude traffic_sign.msg.html

(cl:defclass <traffic_sign> (roslisp-msg-protocol:ros-message)
  ((au1Type
    :reader au1Type
    :initarg :au1Type
    :type cl:string
    :initform "")
   (sPos
    :reader sPos
    :initarg :sPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (u4TrafficSignId
    :reader u4TrafficSignId
    :initarg :u4TrafficSignId
    :type cl:integer
    :initform 0)
   (u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0)
   (au1SubType
    :reader au1SubType
    :initarg :au1SubType
    :type cl:string
    :initform "")
   (u4RoadDist
    :reader u4RoadDist
    :initarg :u4RoadDist
    :type cl:float
    :initform 0.0)
   (u4Value
    :reader u4Value
    :initarg :u4Value
    :type cl:float
    :initform 0.0)
   (u1MinLane
    :reader u1MinLane
    :initarg :u1MinLane
    :type cl:fixnum
    :initform 0)
   (u1MaxLane
    :reader u1MaxLane
    :initarg :u1MaxLane
    :type cl:fixnum
    :initform 0))
)

(cl:defclass traffic_sign (<traffic_sign>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <traffic_sign>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'traffic_sign)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<traffic_sign> is deprecated: use RosAdapter-msg:traffic_sign instead.")))

(cl:ensure-generic-function 'au1Type-val :lambda-list '(m))
(cl:defmethod au1Type-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Type-val is deprecated.  Use RosAdapter-msg:au1Type instead.")
  (au1Type m))

(cl:ensure-generic-function 'sPos-val :lambda-list '(m))
(cl:defmethod sPos-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sPos-val is deprecated.  Use RosAdapter-msg:sPos instead.")
  (sPos m))

(cl:ensure-generic-function 'u4TrafficSignId-val :lambda-list '(m))
(cl:defmethod u4TrafficSignId-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4TrafficSignId-val is deprecated.  Use RosAdapter-msg:u4TrafficSignId instead.")
  (u4TrafficSignId m))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))

(cl:ensure-generic-function 'au1SubType-val :lambda-list '(m))
(cl:defmethod au1SubType-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1SubType-val is deprecated.  Use RosAdapter-msg:au1SubType instead.")
  (au1SubType m))

(cl:ensure-generic-function 'u4RoadDist-val :lambda-list '(m))
(cl:defmethod u4RoadDist-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RoadDist-val is deprecated.  Use RosAdapter-msg:u4RoadDist instead.")
  (u4RoadDist m))

(cl:ensure-generic-function 'u4Value-val :lambda-list '(m))
(cl:defmethod u4Value-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Value-val is deprecated.  Use RosAdapter-msg:u4Value instead.")
  (u4Value m))

(cl:ensure-generic-function 'u1MinLane-val :lambda-list '(m))
(cl:defmethod u1MinLane-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1MinLane-val is deprecated.  Use RosAdapter-msg:u1MinLane instead.")
  (u1MinLane m))

(cl:ensure-generic-function 'u1MaxLane-val :lambda-list '(m))
(cl:defmethod u1MaxLane-val ((m <traffic_sign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1MaxLane-val is deprecated.  Use RosAdapter-msg:u1MaxLane instead.")
  (u1MaxLane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <traffic_sign>) ostream)
  "Serializes a message object of type '<traffic_sign>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sPos) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4TrafficSignId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4TrafficSignId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4TrafficSignId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4TrafficSignId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1SubType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1SubType))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RoadDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'u1MinLane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'u1MaxLane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <traffic_sign>) istream)
  "Deserializes a message object of type '<traffic_sign>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1Type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1Type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sPos) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4TrafficSignId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4TrafficSignId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4TrafficSignId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4TrafficSignId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1SubType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1SubType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RoadDist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1MinLane) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1MaxLane) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<traffic_sign>)))
  "Returns string type for a message object of type '<traffic_sign>"
  "RosAdapter/traffic_sign")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'traffic_sign)))
  "Returns string type for a message object of type 'traffic_sign"
  "RosAdapter/traffic_sign")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<traffic_sign>)))
  "Returns md5sum for a message object of type '<traffic_sign>"
  "b667ebe94f436bba109192fd54360970")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'traffic_sign)))
  "Returns md5sum for a message object of type 'traffic_sign"
  "b667ebe94f436bba109192fd54360970")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<traffic_sign>)))
  "Returns full string definition for message of type '<traffic_sign>"
  (cl:format cl:nil "# /** ------ 交通标志信息 ------ */~%string  au1Type~%coord   sPos~%uint32  u4TrafficSignId~%uint32  u4ObjectId~%string  au1SubType~%float32 u4RoadDist~%float32 u4Value~%int8    u1MinLane~%int8    u1MaxLane~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'traffic_sign)))
  "Returns full string definition for message of type 'traffic_sign"
  (cl:format cl:nil "# /** ------ 交通标志信息 ------ */~%string  au1Type~%coord   sPos~%uint32  u4TrafficSignId~%uint32  u4ObjectId~%string  au1SubType~%float32 u4RoadDist~%float32 u4Value~%int8    u1MinLane~%int8    u1MaxLane~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <traffic_sign>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1Type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sPos))
     4
     4
     4 (cl:length (cl:slot-value msg 'au1SubType))
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <traffic_sign>))
  "Converts a ROS message object to a list"
  (cl:list 'traffic_sign
    (cl:cons ':au1Type (au1Type msg))
    (cl:cons ':sPos (sPos msg))
    (cl:cons ':u4TrafficSignId (u4TrafficSignId msg))
    (cl:cons ':u4ObjectId (u4ObjectId msg))
    (cl:cons ':au1SubType (au1SubType msg))
    (cl:cons ':u4RoadDist (u4RoadDist msg))
    (cl:cons ':u4Value (u4Value msg))
    (cl:cons ':u1MinLane (u1MinLane msg))
    (cl:cons ':u1MaxLane (u1MaxLane msg))
))
