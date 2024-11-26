; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude dynamic_object.msg.html

(cl:defclass <dynamic_object> (roslisp-msg-protocol:ros-message)
  ((u8Dist
    :reader u8Dist
    :initarg :u8Dist
    :type cl:float
    :initform 0.0)
   (u8NearestDist
    :reader u8NearestDist
    :initarg :u8NearestDist
    :type cl:float
    :initform 0.0)
   (u8RelativeVelx
    :reader u8RelativeVelx
    :initarg :u8RelativeVelx
    :type cl:float
    :initform 0.0)
   (u8RelativeVely
    :reader u8RelativeVely
    :initarg :u8RelativeVely
    :type cl:float
    :initform 0.0)
   (u8RelativeAccx
    :reader u8RelativeAccx
    :initarg :u8RelativeAccx
    :type cl:float
    :initform 0.0)
   (u8RelativeAccy
    :reader u8RelativeAccy
    :initarg :u8RelativeAccy
    :type cl:float
    :initform 0.0)
   (u8HeadingAngle
    :reader u8HeadingAngle
    :initarg :u8HeadingAngle
    :type cl:float
    :initform 0.0)
   (sSensorPos
    :reader sSensorPos
    :initarg :sSensorPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sNearestSensorPos
    :reader sNearestSensorPos
    :initarg :sNearestSensorPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sSenNearestPosXL
    :reader sSenNearestPosXL
    :initarg :sSenNearestPosXL
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sSenNearestPosXR
    :reader sSenNearestPosXR
    :initarg :sSenNearestPosXR
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sSenNearestPosYL
    :reader sSenNearestPosYL
    :initarg :sSenNearestPosYL
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sSenNearestPosYR
    :reader sSenNearestPosYR
    :initarg :sSenNearestPosYR
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sBoundingBox
    :reader sBoundingBox
    :initarg :sBoundingBox
    :type (cl:vector RosAdapter-msg:point3d)
   :initform (cl:make-array 0 :element-type 'RosAdapter-msg:point3d :initial-element (cl:make-instance 'RosAdapter-msg:point3d)))
   (u1MovingSt
    :reader u1MovingSt
    :initarg :u1MovingSt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass dynamic_object (<dynamic_object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dynamic_object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dynamic_object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<dynamic_object> is deprecated: use RosAdapter-msg:dynamic_object instead.")))

(cl:ensure-generic-function 'u8Dist-val :lambda-list '(m))
(cl:defmethod u8Dist-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8Dist-val is deprecated.  Use RosAdapter-msg:u8Dist instead.")
  (u8Dist m))

(cl:ensure-generic-function 'u8NearestDist-val :lambda-list '(m))
(cl:defmethod u8NearestDist-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8NearestDist-val is deprecated.  Use RosAdapter-msg:u8NearestDist instead.")
  (u8NearestDist m))

(cl:ensure-generic-function 'u8RelativeVelx-val :lambda-list '(m))
(cl:defmethod u8RelativeVelx-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RelativeVelx-val is deprecated.  Use RosAdapter-msg:u8RelativeVelx instead.")
  (u8RelativeVelx m))

(cl:ensure-generic-function 'u8RelativeVely-val :lambda-list '(m))
(cl:defmethod u8RelativeVely-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RelativeVely-val is deprecated.  Use RosAdapter-msg:u8RelativeVely instead.")
  (u8RelativeVely m))

(cl:ensure-generic-function 'u8RelativeAccx-val :lambda-list '(m))
(cl:defmethod u8RelativeAccx-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RelativeAccx-val is deprecated.  Use RosAdapter-msg:u8RelativeAccx instead.")
  (u8RelativeAccx m))

(cl:ensure-generic-function 'u8RelativeAccy-val :lambda-list '(m))
(cl:defmethod u8RelativeAccy-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8RelativeAccy-val is deprecated.  Use RosAdapter-msg:u8RelativeAccy instead.")
  (u8RelativeAccy m))

(cl:ensure-generic-function 'u8HeadingAngle-val :lambda-list '(m))
(cl:defmethod u8HeadingAngle-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8HeadingAngle-val is deprecated.  Use RosAdapter-msg:u8HeadingAngle instead.")
  (u8HeadingAngle m))

(cl:ensure-generic-function 'sSensorPos-val :lambda-list '(m))
(cl:defmethod sSensorPos-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSensorPos-val is deprecated.  Use RosAdapter-msg:sSensorPos instead.")
  (sSensorPos m))

(cl:ensure-generic-function 'sNearestSensorPos-val :lambda-list '(m))
(cl:defmethod sNearestSensorPos-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sNearestSensorPos-val is deprecated.  Use RosAdapter-msg:sNearestSensorPos instead.")
  (sNearestSensorPos m))

(cl:ensure-generic-function 'sSenNearestPosXL-val :lambda-list '(m))
(cl:defmethod sSenNearestPosXL-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSenNearestPosXL-val is deprecated.  Use RosAdapter-msg:sSenNearestPosXL instead.")
  (sSenNearestPosXL m))

(cl:ensure-generic-function 'sSenNearestPosXR-val :lambda-list '(m))
(cl:defmethod sSenNearestPosXR-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSenNearestPosXR-val is deprecated.  Use RosAdapter-msg:sSenNearestPosXR instead.")
  (sSenNearestPosXR m))

(cl:ensure-generic-function 'sSenNearestPosYL-val :lambda-list '(m))
(cl:defmethod sSenNearestPosYL-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSenNearestPosYL-val is deprecated.  Use RosAdapter-msg:sSenNearestPosYL instead.")
  (sSenNearestPosYL m))

(cl:ensure-generic-function 'sSenNearestPosYR-val :lambda-list '(m))
(cl:defmethod sSenNearestPosYR-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sSenNearestPosYR-val is deprecated.  Use RosAdapter-msg:sSenNearestPosYR instead.")
  (sSenNearestPosYR m))

(cl:ensure-generic-function 'sBoundingBox-val :lambda-list '(m))
(cl:defmethod sBoundingBox-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sBoundingBox-val is deprecated.  Use RosAdapter-msg:sBoundingBox instead.")
  (sBoundingBox m))

(cl:ensure-generic-function 'u1MovingSt-val :lambda-list '(m))
(cl:defmethod u1MovingSt-val ((m <dynamic_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1MovingSt-val is deprecated.  Use RosAdapter-msg:u1MovingSt instead.")
  (u1MovingSt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dynamic_object>) ostream)
  "Serializes a message object of type '<dynamic_object>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8Dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8NearestDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8RelativeVelx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8RelativeVely))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8RelativeAccx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8RelativeAccy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8HeadingAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSensorPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sNearestSensorPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSenNearestPosXL) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSenNearestPosXR) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSenNearestPosYL) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sSenNearestPosYR) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sBoundingBox))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sBoundingBox))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1MovingSt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dynamic_object>) istream)
  "Deserializes a message object of type '<dynamic_object>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8Dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8NearestDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8RelativeVelx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8RelativeVely) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8RelativeAccx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8RelativeAccy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8HeadingAngle) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSensorPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sNearestSensorPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSenNearestPosXL) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSenNearestPosXR) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSenNearestPosYL) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sSenNearestPosYR) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sBoundingBox) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sBoundingBox)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'RosAdapter-msg:point3d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1MovingSt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dynamic_object>)))
  "Returns string type for a message object of type '<dynamic_object>"
  "RosAdapter/dynamic_object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dynamic_object)))
  "Returns string type for a message object of type 'dynamic_object"
  "RosAdapter/dynamic_object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dynamic_object>)))
  "Returns md5sum for a message object of type '<dynamic_object>"
  "f0fca4830c1def89864a68dc2897f16f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dynamic_object)))
  "Returns md5sum for a message object of type 'dynamic_object"
  "f0fca4830c1def89864a68dc2897f16f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dynamic_object>)))
  "Returns full string definition for message of type '<dynamic_object>"
  (cl:format cl:nil "# /** ------ 传感器探测到的对象信息 ------ */~%~%float64    u8Dist~%float64    u8NearestDist~%float64    u8RelativeVelx~%float64    u8RelativeVely~%float64    u8RelativeAccx~%float64    u8RelativeAccy~%float64    u8HeadingAngle~%coord      sSensorPos~%coord      sNearestSensorPos~%coord      sSenNearestPosXL~%coord      sSenNearestPosXR~%coord      sSenNearestPosYL~%coord      sSenNearestPosYR~%point3d[]  sBoundingBox~%uint8      u1MovingSt~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/point3d~%float64      u8x~%float64      u8y~%float64      u8z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dynamic_object)))
  "Returns full string definition for message of type 'dynamic_object"
  (cl:format cl:nil "# /** ------ 传感器探测到的对象信息 ------ */~%~%float64    u8Dist~%float64    u8NearestDist~%float64    u8RelativeVelx~%float64    u8RelativeVely~%float64    u8RelativeAccx~%float64    u8RelativeAccy~%float64    u8HeadingAngle~%coord      sSensorPos~%coord      sNearestSensorPos~%coord      sSenNearestPosXL~%coord      sSenNearestPosXR~%coord      sSenNearestPosYL~%coord      sSenNearestPosYR~%point3d[]  sBoundingBox~%uint8      u1MovingSt~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/point3d~%float64      u8x~%float64      u8y~%float64      u8z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dynamic_object>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSensorPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sNearestSensorPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSenNearestPosXL))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSenNearestPosXR))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSenNearestPosYL))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sSenNearestPosYR))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sBoundingBox) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dynamic_object>))
  "Converts a ROS message object to a list"
  (cl:list 'dynamic_object
    (cl:cons ':u8Dist (u8Dist msg))
    (cl:cons ':u8NearestDist (u8NearestDist msg))
    (cl:cons ':u8RelativeVelx (u8RelativeVelx msg))
    (cl:cons ':u8RelativeVely (u8RelativeVely msg))
    (cl:cons ':u8RelativeAccx (u8RelativeAccx msg))
    (cl:cons ':u8RelativeAccy (u8RelativeAccy msg))
    (cl:cons ':u8HeadingAngle (u8HeadingAngle msg))
    (cl:cons ':sSensorPos (sSensorPos msg))
    (cl:cons ':sNearestSensorPos (sNearestSensorPos msg))
    (cl:cons ':sSenNearestPosXL (sSenNearestPosXL msg))
    (cl:cons ':sSenNearestPosXR (sSenNearestPosXR msg))
    (cl:cons ':sSenNearestPosYL (sSenNearestPosYL msg))
    (cl:cons ':sSenNearestPosYR (sSenNearestPosYR msg))
    (cl:cons ':sBoundingBox (sBoundingBox msg))
    (cl:cons ':u1MovingSt (u1MovingSt msg))
))
