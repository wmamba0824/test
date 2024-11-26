; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude mil_roadmark.msg.html

(cl:defclass <mil_roadmark> (roslisp-msg-protocol:ros-message)
  ((u8RoadId
    :reader u8RoadId
    :initarg :u8RoadId
    :type cl:integer
    :initform 0)
   (curvVert
    :reader curvVert
    :initarg :curvVert
    :type cl:float
    :initform 0.0)
   (u4StartDx
    :reader u4StartDx
    :initarg :u4StartDx
    :type cl:float
    :initform 0.0)
   (u4Width
    :reader u4Width
    :initarg :u4Width
    :type cl:float
    :initform 0.0)
   (u4ViewRangeStart
    :reader u4ViewRangeStart
    :initarg :u4ViewRangeStart
    :type cl:float
    :initform 0.0)
   (u4ViewRangeEnd
    :reader u4ViewRangeEnd
    :initarg :u4ViewRangeEnd
    :type cl:float
    :initform 0.0)
   (u4MeasuredVREnd
    :reader u4MeasuredVREnd
    :initarg :u4MeasuredVREnd
    :type cl:float
    :initform 0.0)
   (u4C0
    :reader u4C0
    :initarg :u4C0
    :type cl:float
    :initform 0.0)
   (u4C1
    :reader u4C1
    :initarg :u4C1
    :type cl:float
    :initform 0.0)
   (u4C2
    :reader u4C2
    :initarg :u4C2
    :type cl:float
    :initform 0.0)
   (u4C3
    :reader u4C3
    :initarg :u4C3
    :type cl:float
    :initform 0.0)
   (u2LaneChange
    :reader u2LaneChange
    :initarg :u2LaneChange
    :type cl:fixnum
    :initform 0)
   (u1LaneId
    :reader u1LaneId
    :initarg :u1LaneId
    :type cl:fixnum
    :initform 0)
   (u1Quality
    :reader u1Quality
    :initarg :u1Quality
    :type cl:fixnum
    :initform 0)
   (u1Type
    :reader u1Type
    :initarg :u1Type
    :type cl:fixnum
    :initform 0)
   (u1Color
    :reader u1Color
    :initarg :u1Color
    :type cl:fixnum
    :initform 0)
   (u1LeftCrossing
    :reader u1LeftCrossing
    :initarg :u1LeftCrossing
    :type cl:fixnum
    :initform 0)
   (u1RightCrossing
    :reader u1RightCrossing
    :initarg :u1RightCrossing
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mil_roadmark (<mil_roadmark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mil_roadmark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mil_roadmark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<mil_roadmark> is deprecated: use RosAdapter-msg:mil_roadmark instead.")))

(cl:ensure-generic-function 'u8RoadId-val :lambda-list '(m))
(cl:defmethod u8RoadId-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RoadId-val is deprecated.  Use RosAdapter-msg:u8RoadId instead.")
  (u8RoadId m))

(cl:ensure-generic-function 'curvVert-val :lambda-list '(m))
(cl:defmethod curvVert-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:curvVert-val is deprecated.  Use RosAdapter-msg:curvVert instead.")
  (curvVert m))

(cl:ensure-generic-function 'u4StartDx-val :lambda-list '(m))
(cl:defmethod u4StartDx-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4StartDx-val is deprecated.  Use RosAdapter-msg:u4StartDx instead.")
  (u4StartDx m))

(cl:ensure-generic-function 'u4Width-val :lambda-list '(m))
(cl:defmethod u4Width-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4Width-val is deprecated.  Use RosAdapter-msg:u4Width instead.")
  (u4Width m))

(cl:ensure-generic-function 'u4ViewRangeStart-val :lambda-list '(m))
(cl:defmethod u4ViewRangeStart-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ViewRangeStart-val is deprecated.  Use RosAdapter-msg:u4ViewRangeStart instead.")
  (u4ViewRangeStart m))

(cl:ensure-generic-function 'u4ViewRangeEnd-val :lambda-list '(m))
(cl:defmethod u4ViewRangeEnd-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ViewRangeEnd-val is deprecated.  Use RosAdapter-msg:u4ViewRangeEnd instead.")
  (u4ViewRangeEnd m))

(cl:ensure-generic-function 'u4MeasuredVREnd-val :lambda-list '(m))
(cl:defmethod u4MeasuredVREnd-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4MeasuredVREnd-val is deprecated.  Use RosAdapter-msg:u4MeasuredVREnd instead.")
  (u4MeasuredVREnd m))

(cl:ensure-generic-function 'u4C0-val :lambda-list '(m))
(cl:defmethod u4C0-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4C0-val is deprecated.  Use RosAdapter-msg:u4C0 instead.")
  (u4C0 m))

(cl:ensure-generic-function 'u4C1-val :lambda-list '(m))
(cl:defmethod u4C1-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4C1-val is deprecated.  Use RosAdapter-msg:u4C1 instead.")
  (u4C1 m))

(cl:ensure-generic-function 'u4C2-val :lambda-list '(m))
(cl:defmethod u4C2-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4C2-val is deprecated.  Use RosAdapter-msg:u4C2 instead.")
  (u4C2 m))

(cl:ensure-generic-function 'u4C3-val :lambda-list '(m))
(cl:defmethod u4C3-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4C3-val is deprecated.  Use RosAdapter-msg:u4C3 instead.")
  (u4C3 m))

(cl:ensure-generic-function 'u2LaneChange-val :lambda-list '(m))
(cl:defmethod u2LaneChange-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u2LaneChange-val is deprecated.  Use RosAdapter-msg:u2LaneChange instead.")
  (u2LaneChange m))

(cl:ensure-generic-function 'u1LaneId-val :lambda-list '(m))
(cl:defmethod u1LaneId-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1LaneId-val is deprecated.  Use RosAdapter-msg:u1LaneId instead.")
  (u1LaneId m))

(cl:ensure-generic-function 'u1Quality-val :lambda-list '(m))
(cl:defmethod u1Quality-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Quality-val is deprecated.  Use RosAdapter-msg:u1Quality instead.")
  (u1Quality m))

(cl:ensure-generic-function 'u1Type-val :lambda-list '(m))
(cl:defmethod u1Type-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Type-val is deprecated.  Use RosAdapter-msg:u1Type instead.")
  (u1Type m))

(cl:ensure-generic-function 'u1Color-val :lambda-list '(m))
(cl:defmethod u1Color-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Color-val is deprecated.  Use RosAdapter-msg:u1Color instead.")
  (u1Color m))

(cl:ensure-generic-function 'u1LeftCrossing-val :lambda-list '(m))
(cl:defmethod u1LeftCrossing-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1LeftCrossing-val is deprecated.  Use RosAdapter-msg:u1LeftCrossing instead.")
  (u1LeftCrossing m))

(cl:ensure-generic-function 'u1RightCrossing-val :lambda-list '(m))
(cl:defmethod u1RightCrossing-val ((m <mil_roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1RightCrossing-val is deprecated.  Use RosAdapter-msg:u1RightCrossing instead.")
  (u1RightCrossing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mil_roadmark>) ostream)
  "Serializes a message object of type '<mil_roadmark>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curvVert))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4StartDx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4Width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4ViewRangeStart))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4ViewRangeEnd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4MeasuredVREnd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4C0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4C1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4C2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4C3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2LaneChange)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2LaneChange)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u1LaneId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1LeftCrossing)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1RightCrossing)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mil_roadmark>) istream)
  "Deserializes a message object of type '<mil_roadmark>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'u8RoadId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvVert) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4StartDx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4Width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4ViewRangeStart) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4ViewRangeEnd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4MeasuredVREnd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4C0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4C1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4C2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4C3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u2LaneChange)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u2LaneChange)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u1LaneId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1LeftCrossing)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1RightCrossing)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mil_roadmark>)))
  "Returns string type for a message object of type '<mil_roadmark>"
  "RosAdapter/mil_roadmark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mil_roadmark)))
  "Returns string type for a message object of type 'mil_roadmark"
  "RosAdapter/mil_roadmark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mil_roadmark>)))
  "Returns md5sum for a message object of type '<mil_roadmark>"
  "7aee4a86eef20d62dcd9e9c417a01ceb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mil_roadmark)))
  "Returns md5sum for a message object of type 'mil_roadmark"
  "7aee4a86eef20d62dcd9e9c417a01ceb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mil_roadmark>)))
  "Returns full string definition for message of type '<mil_roadmark>"
  (cl:format cl:nil " # /** ------ MIL测试车道线信息描述包 ------ */~%~%uint64  u8RoadId~%float64 curvVert~%float32 u4StartDx~%float32 u4Width~%float32 u4ViewRangeStart~%float32 u4ViewRangeEnd~%float32 u4MeasuredVREnd~%float32 u4C0~%float32 u4C1~%float32 u4C2~%float32 u4C3~%uint16  u2LaneChange~%int8    u1LaneId~%uint8   u1Quality~%uint8   u1Type~%uint8   u1Color~%uint8   u1LeftCrossing~%uint8   u1RightCrossing~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mil_roadmark)))
  "Returns full string definition for message of type 'mil_roadmark"
  (cl:format cl:nil " # /** ------ MIL测试车道线信息描述包 ------ */~%~%uint64  u8RoadId~%float64 curvVert~%float32 u4StartDx~%float32 u4Width~%float32 u4ViewRangeStart~%float32 u4ViewRangeEnd~%float32 u4MeasuredVREnd~%float32 u4C0~%float32 u4C1~%float32 u4C2~%float32 u4C3~%uint16  u2LaneChange~%int8    u1LaneId~%uint8   u1Quality~%uint8   u1Type~%uint8   u1Color~%uint8   u1LeftCrossing~%uint8   u1RightCrossing~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mil_roadmark>))
  (cl:+ 0
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     2
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mil_roadmark>))
  "Converts a ROS message object to a list"
  (cl:list 'mil_roadmark
    (cl:cons ':u8RoadId (u8RoadId msg))
    (cl:cons ':curvVert (curvVert msg))
    (cl:cons ':u4StartDx (u4StartDx msg))
    (cl:cons ':u4Width (u4Width msg))
    (cl:cons ':u4ViewRangeStart (u4ViewRangeStart msg))
    (cl:cons ':u4ViewRangeEnd (u4ViewRangeEnd msg))
    (cl:cons ':u4MeasuredVREnd (u4MeasuredVREnd msg))
    (cl:cons ':u4C0 (u4C0 msg))
    (cl:cons ':u4C1 (u4C1 msg))
    (cl:cons ':u4C2 (u4C2 msg))
    (cl:cons ':u4C3 (u4C3 msg))
    (cl:cons ':u2LaneChange (u2LaneChange msg))
    (cl:cons ':u1LaneId (u1LaneId msg))
    (cl:cons ':u1Quality (u1Quality msg))
    (cl:cons ':u1Type (u1Type msg))
    (cl:cons ':u1Color (u1Color msg))
    (cl:cons ':u1LeftCrossing (u1LeftCrossing msg))
    (cl:cons ':u1RightCrossing (u1RightCrossing msg))
))
