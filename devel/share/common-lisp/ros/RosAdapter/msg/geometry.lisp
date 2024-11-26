; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude geometry.msg.html

(cl:defclass <geometry> (roslisp-msg-protocol:ros-message)
  ((u4DimX
    :reader u4DimX
    :initarg :u4DimX
    :type cl:float
    :initform 0.0)
   (u4DimY
    :reader u4DimY
    :initarg :u4DimY
    :type cl:float
    :initform 0.0)
   (u4DimZ
    :reader u4DimZ
    :initarg :u4DimZ
    :type cl:float
    :initform 0.0)
   (u4OffX
    :reader u4OffX
    :initarg :u4OffX
    :type cl:float
    :initform 0.0)
   (u4OffY
    :reader u4OffY
    :initarg :u4OffY
    :type cl:float
    :initform 0.0)
   (u4OffZ
    :reader u4OffZ
    :initarg :u4OffZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass geometry (<geometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <geometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'geometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<geometry> is deprecated: use RosAdapter-msg:geometry instead.")))

(cl:ensure-generic-function 'u4DimX-val :lambda-list '(m))
(cl:defmethod u4DimX-val ((m <geometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DimX-val is deprecated.  Use RosAdapter-msg:u4DimX instead.")
  (u4DimX m))

(cl:ensure-generic-function 'u4DimY-val :lambda-list '(m))
(cl:defmethod u4DimY-val ((m <geometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DimY-val is deprecated.  Use RosAdapter-msg:u4DimY instead.")
  (u4DimY m))

(cl:ensure-generic-function 'u4DimZ-val :lambda-list '(m))
(cl:defmethod u4DimZ-val ((m <geometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DimZ-val is deprecated.  Use RosAdapter-msg:u4DimZ instead.")
  (u4DimZ m))

(cl:ensure-generic-function 'u4OffX-val :lambda-list '(m))
(cl:defmethod u4OffX-val ((m <geometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4OffX-val is deprecated.  Use RosAdapter-msg:u4OffX instead.")
  (u4OffX m))

(cl:ensure-generic-function 'u4OffY-val :lambda-list '(m))
(cl:defmethod u4OffY-val ((m <geometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4OffY-val is deprecated.  Use RosAdapter-msg:u4OffY instead.")
  (u4OffY m))

(cl:ensure-generic-function 'u4OffZ-val :lambda-list '(m))
(cl:defmethod u4OffZ-val ((m <geometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4OffZ-val is deprecated.  Use RosAdapter-msg:u4OffZ instead.")
  (u4OffZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <geometry>) ostream)
  "Serializes a message object of type '<geometry>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DimX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DimY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4DimZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4OffX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4OffY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4OffZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <geometry>) istream)
  "Deserializes a message object of type '<geometry>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DimX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DimY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DimZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4OffX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4OffY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4OffZ) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<geometry>)))
  "Returns string type for a message object of type '<geometry>"
  "RosAdapter/geometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'geometry)))
  "Returns string type for a message object of type 'geometry"
  "RosAdapter/geometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<geometry>)))
  "Returns md5sum for a message object of type '<geometry>"
  "dd5e9e63f2d15bb3fd1e5ec306048461")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'geometry)))
  "Returns md5sum for a message object of type 'geometry"
  "dd5e9e63f2d15bb3fd1e5ec306048461")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<geometry>)))
  "Returns full string definition for message of type '<geometry>"
  (cl:format cl:nil "# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'geometry)))
  "Returns full string definition for message of type 'geometry"
  (cl:format cl:nil "# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <geometry>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <geometry>))
  "Converts a ROS message object to a list"
  (cl:list 'geometry
    (cl:cons ':u4DimX (u4DimX msg))
    (cl:cons ':u4DimY (u4DimY msg))
    (cl:cons ':u4DimZ (u4DimZ msg))
    (cl:cons ':u4OffX (u4OffX msg))
    (cl:cons ':u4OffY (u4OffY msg))
    (cl:cons ':u4OffZ (u4OffZ msg))
))
