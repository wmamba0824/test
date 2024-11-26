; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude lane_info.msg.html

(cl:defclass <lane_info> (roslisp-msg-protocol:ros-message)
  ((u8RoadId
    :reader u8RoadId
    :initarg :u8RoadId
    :type cl:integer
    :initform 0)
   (u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0)
   (u4Width
    :reader u4Width
    :initarg :u4Width
    :type cl:float
    :initform 0.0)
   (u2Type
    :reader u2Type
    :initarg :u2Type
    :type cl:fixnum
    :initform 0)
   (u1Id
    :reader u1Id
    :initarg :u1Id
    :type cl:fixnum
    :initform 0)
   (u1NeighborMask
    :reader u1NeighborMask
    :initarg :u1NeighborMask
    :type cl:fixnum
    :initform 0)
   (u1LeftLaneId
    :reader u1LeftLaneId
    :initarg :u1LeftLaneId
    :type cl:fixnum
    :initform 0)
   (u1RightLaneId
    :reader u1RightLaneId
    :initarg :u1RightLaneId
    :type cl:fixnum
    :initform 0))
)

(cl:defclass lane_info (<lane_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lane_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lane_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<lane_info> is deprecated: use RosAdapter-msg:lane_info instead.")))

(cl:ensure-generic-function 'u8RoadId-val :lambda-list '(m))
(cl:defmethod u8RoadId-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RoadId-val is deprecated.  Use RosAdapter-msg:u8RoadId instead.")
  (u8RoadId m))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))

(cl:ensure-generic-function 'u4Width-val :lambda-list '(m))
(cl:defmethod u4Width-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Width-val is deprecated.  Use RosAdapter-msg:u4Width instead.")
  (u4Width m))

(cl:ensure-generic-function 'u2Type-val :lambda-list '(m))
(cl:defmethod u2Type-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2Type-val is deprecated.  Use RosAdapter-msg:u2Type instead.")
  (u2Type m))

(cl:ensure-generic-function 'u1Id-val :lambda-list '(m))
(cl:defmethod u1Id-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Id-val is deprecated.  Use RosAdapter-msg:u1Id instead.")
  (u1Id m))

(cl:ensure-generic-function 'u1NeighborMask-val :lambda-list '(m))
(cl:defmethod u1NeighborMask-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1NeighborMask-val is deprecated.  Use RosAdapter-msg:u1NeighborMask instead.")
  (u1NeighborMask m))

(cl:ensure-generic-function 'u1LeftLaneId-val :lambda-list '(m))
(cl:defmethod u1LeftLaneId-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1LeftLaneId-val is deprecated.  Use RosAdapter-msg:u1LeftLaneId instead.")
  (u1LeftLaneId m))

(cl:ensure-generic-function 'u1RightLaneId-val :lambda-list '(m))
(cl:defmethod u1RightLaneId-val ((m <lane_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1RightLaneId-val is deprecated.  Use RosAdapter-msg:u1RightLaneId instead.")
  (u1RightLaneId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lane_info>) ostream)
  "Serializes a message object of type '<lane_info>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u1Id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1NeighborMask)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u1LeftLaneId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'u1RightLaneId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lane_info>) istream)
  "Deserializes a message object of type '<lane_info>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2Type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2Type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1Id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1NeighborMask)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1LeftLaneId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1RightLaneId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lane_info>)))
  "Returns string type for a message object of type '<lane_info>"
  "RosAdapter/lane_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lane_info)))
  "Returns string type for a message object of type 'lane_info"
  "RosAdapter/lane_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lane_info>)))
  "Returns md5sum for a message object of type '<lane_info>"
  "956c49218f476e72e0ba077080aff039")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lane_info)))
  "Returns md5sum for a message object of type 'lane_info"
  "956c49218f476e72e0ba077080aff039")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lane_info>)))
  "Returns full string definition for message of type '<lane_info>"
  (cl:format cl:nil "# /** ------ 车道信息 ------ */~%uint64   u8RoadId~%uint32   u4ObjectId~%float32  u4Width~%uint16   u2Type~%int8     u1Id~%uint8    u1NeighborMask~%int8     u1LeftLaneId~%int8     u1RightLaneId~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lane_info)))
  "Returns full string definition for message of type 'lane_info"
  (cl:format cl:nil "# /** ------ 车道信息 ------ */~%uint64   u8RoadId~%uint32   u4ObjectId~%float32  u4Width~%uint16   u2Type~%int8     u1Id~%uint8    u1NeighborMask~%int8     u1LeftLaneId~%int8     u1RightLaneId~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lane_info>))
  (cl:+ 0
     8
     4
     4
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lane_info>))
  "Converts a ROS message object to a list"
  (cl:list 'lane_info
    (cl:cons ':u8RoadId (u8RoadId msg))
    (cl:cons ':u4ObjectId (u4ObjectId msg))
    (cl:cons ':u4Width (u4Width msg))
    (cl:cons ':u2Type (u2Type msg))
    (cl:cons ':u1Id (u1Id msg))
    (cl:cons ':u1NeighborMask (u1NeighborMask msg))
    (cl:cons ':u1LeftLaneId (u1LeftLaneId msg))
    (cl:cons ':u1RightLaneId (u1RightLaneId msg))
))
