; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude parkingSpace.msg.html

(cl:defclass <parkingSpace> (roslisp-msg-protocol:ros-message)
  ((sGeo
    :reader sGeo
    :initarg :sGeo
    :type RosAdapter-msg:geometry
    :initform (cl:make-instance 'RosAdapter-msg:geometry))
   (sPos
    :reader sPos
    :initarg :sPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (u4RoadS
    :reader u4RoadS
    :initarg :u4RoadS
    :type cl:float
    :initform 0.0)
   (u4RoadT
    :reader u4RoadT
    :initarg :u4RoadT
    :type cl:float
    :initform 0.0)
   (u8SlotId
    :reader u8SlotId
    :initarg :u8SlotId
    :type cl:integer
    :initform 0))
)

(cl:defclass parkingSpace (<parkingSpace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <parkingSpace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'parkingSpace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<parkingSpace> is deprecated: use RosAdapter-msg:parkingSpace instead.")))

(cl:ensure-generic-function 'sGeo-val :lambda-list '(m))
(cl:defmethod sGeo-val ((m <parkingSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sGeo-val is deprecated.  Use RosAdapter-msg:sGeo instead.")
  (sGeo m))

(cl:ensure-generic-function 'sPos-val :lambda-list '(m))
(cl:defmethod sPos-val ((m <parkingSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sPos-val is deprecated.  Use RosAdapter-msg:sPos instead.")
  (sPos m))

(cl:ensure-generic-function 'u4RoadS-val :lambda-list '(m))
(cl:defmethod u4RoadS-val ((m <parkingSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RoadS-val is deprecated.  Use RosAdapter-msg:u4RoadS instead.")
  (u4RoadS m))

(cl:ensure-generic-function 'u4RoadT-val :lambda-list '(m))
(cl:defmethod u4RoadT-val ((m <parkingSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4RoadT-val is deprecated.  Use RosAdapter-msg:u4RoadT instead.")
  (u4RoadT m))

(cl:ensure-generic-function 'u8SlotId-val :lambda-list '(m))
(cl:defmethod u8SlotId-val ((m <parkingSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8SlotId-val is deprecated.  Use RosAdapter-msg:u8SlotId instead.")
  (u8SlotId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <parkingSpace>) ostream)
  "Serializes a message object of type '<parkingSpace>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sGeo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sPos) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RoadS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4RoadT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8SlotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8SlotId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <parkingSpace>) istream)
  "Deserializes a message object of type '<parkingSpace>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sGeo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sPos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RoadS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4RoadT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8SlotId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<parkingSpace>)))
  "Returns string type for a message object of type '<parkingSpace>"
  "RosAdapter/parkingSpace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'parkingSpace)))
  "Returns string type for a message object of type 'parkingSpace"
  "RosAdapter/parkingSpace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<parkingSpace>)))
  "Returns md5sum for a message object of type '<parkingSpace>"
  "3e53c23c885c726b62a62404fba515f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'parkingSpace)))
  "Returns md5sum for a message object of type 'parkingSpace"
  "3e53c23c885c726b62a62404fba515f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<parkingSpace>)))
  "Returns full string definition for message of type '<parkingSpace>"
  (cl:format cl:nil "#/** ------ 停车位信息 ------ */~%geometry  sGeo~%coord     sPos~%float32   u4RoadS~%float32   u4RoadT~%uint64    u8SlotId~%~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'parkingSpace)))
  "Returns full string definition for message of type 'parkingSpace"
  (cl:format cl:nil "#/** ------ 停车位信息 ------ */~%geometry  sGeo~%coord     sPos~%float32   u4RoadS~%float32   u4RoadT~%uint64    u8SlotId~%~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <parkingSpace>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sGeo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sPos))
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <parkingSpace>))
  "Converts a ROS message object to a list"
  (cl:list 'parkingSpace
    (cl:cons ':sGeo (sGeo msg))
    (cl:cons ':sPos (sPos msg))
    (cl:cons ':u4RoadS (u4RoadS msg))
    (cl:cons ':u4RoadT (u4RoadT msg))
    (cl:cons ':u8SlotId (u8SlotId msg))
))
