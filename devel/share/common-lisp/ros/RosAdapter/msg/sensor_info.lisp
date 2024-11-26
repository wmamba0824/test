; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude sensor_info.msg.html

(cl:defclass <sensor_info> (roslisp-msg-protocol:ros-message)
  ((sPos
    :reader sPos
    :initarg :sPos
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (sOriginCoordSys
    :reader sOriginCoordSys
    :initarg :sOriginCoordSys
    :type RosAdapter-msg:coord
    :initform (cl:make-instance 'RosAdapter-msg:coord))
   (au1Name
    :reader au1Name
    :initarg :au1Name
    :type cl:string
    :initform "")
   (u8HostId
    :reader u8HostId
    :initarg :u8HostId
    :type cl:integer
    :initform 0)
   (u8Id
    :reader u8Id
    :initarg :u8Id
    :type cl:integer
    :initform 0)
   (au4FovHV
    :reader au4FovHV
    :initarg :au4FovHV
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (au4ClipNF
    :reader au4ClipNF
    :initarg :au4ClipNF
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (au4FovOffHV
    :reader au4FovOffHV
    :initarg :au4FovOffHV
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (u1Type
    :reader u1Type
    :initarg :u1Type
    :type cl:fixnum
    :initform 0)
   (u1ModelType
    :reader u1ModelType
    :initarg :u1ModelType
    :type cl:fixnum
    :initform 0)
   (u4IdealFreq
    :reader u4IdealFreq
    :initarg :u4IdealFreq
    :type cl:float
    :initform 0.0)
   (u4ResL
    :reader u4ResL
    :initarg :u4ResL
    :type cl:integer
    :initform 0)
   (u4ResV
    :reader u4ResV
    :initarg :u4ResV
    :type cl:integer
    :initform 0)
   (u4SenSizeL
    :reader u4SenSizeL
    :initarg :u4SenSizeL
    :type cl:float
    :initform 0.0)
   (u4SenSizeW
    :reader u4SenSizeW
    :initarg :u4SenSizeW
    :type cl:float
    :initform 0.0)
   (u4LenFd
    :reader u4LenFd
    :initarg :u4LenFd
    :type cl:float
    :initform 0.0)
   (u4DistCenL
    :reader u4DistCenL
    :initarg :u4DistCenL
    :type cl:float
    :initform 0.0)
   (u4DistCenW
    :reader u4DistCenW
    :initarg :u4DistCenW
    :type cl:float
    :initform 0.0)
   (u4DistParK1
    :reader u4DistParK1
    :initarg :u4DistParK1
    :type cl:float
    :initform 0.0)
   (u4DistParK2
    :reader u4DistParK2
    :initarg :u4DistParK2
    :type cl:float
    :initform 0.0))
)

(cl:defclass sensor_info (<sensor_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<sensor_info> is deprecated: use RosAdapter-msg:sensor_info instead.")))

(cl:ensure-generic-function 'sPos-val :lambda-list '(m))
(cl:defmethod sPos-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sPos-val is deprecated.  Use RosAdapter-msg:sPos instead.")
  (sPos m))

(cl:ensure-generic-function 'sOriginCoordSys-val :lambda-list '(m))
(cl:defmethod sOriginCoordSys-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:sOriginCoordSys-val is deprecated.  Use RosAdapter-msg:sOriginCoordSys instead.")
  (sOriginCoordSys m))

(cl:ensure-generic-function 'au1Name-val :lambda-list '(m))
(cl:defmethod au1Name-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1Name-val is deprecated.  Use RosAdapter-msg:au1Name instead.")
  (au1Name m))

(cl:ensure-generic-function 'u8HostId-val :lambda-list '(m))
(cl:defmethod u8HostId-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8HostId-val is deprecated.  Use RosAdapter-msg:u8HostId instead.")
  (u8HostId m))

(cl:ensure-generic-function 'u8Id-val :lambda-list '(m))
(cl:defmethod u8Id-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8Id-val is deprecated.  Use RosAdapter-msg:u8Id instead.")
  (u8Id m))

(cl:ensure-generic-function 'au4FovHV-val :lambda-list '(m))
(cl:defmethod au4FovHV-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au4FovHV-val is deprecated.  Use RosAdapter-msg:au4FovHV instead.")
  (au4FovHV m))

(cl:ensure-generic-function 'au4ClipNF-val :lambda-list '(m))
(cl:defmethod au4ClipNF-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au4ClipNF-val is deprecated.  Use RosAdapter-msg:au4ClipNF instead.")
  (au4ClipNF m))

(cl:ensure-generic-function 'au4FovOffHV-val :lambda-list '(m))
(cl:defmethod au4FovOffHV-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au4FovOffHV-val is deprecated.  Use RosAdapter-msg:au4FovOffHV instead.")
  (au4FovOffHV m))

(cl:ensure-generic-function 'u1Type-val :lambda-list '(m))
(cl:defmethod u1Type-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Type-val is deprecated.  Use RosAdapter-msg:u1Type instead.")
  (u1Type m))

(cl:ensure-generic-function 'u1ModelType-val :lambda-list '(m))
(cl:defmethod u1ModelType-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1ModelType-val is deprecated.  Use RosAdapter-msg:u1ModelType instead.")
  (u1ModelType m))

(cl:ensure-generic-function 'u4IdealFreq-val :lambda-list '(m))
(cl:defmethod u4IdealFreq-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4IdealFreq-val is deprecated.  Use RosAdapter-msg:u4IdealFreq instead.")
  (u4IdealFreq m))

(cl:ensure-generic-function 'u4ResL-val :lambda-list '(m))
(cl:defmethod u4ResL-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ResL-val is deprecated.  Use RosAdapter-msg:u4ResL instead.")
  (u4ResL m))

(cl:ensure-generic-function 'u4ResV-val :lambda-list '(m))
(cl:defmethod u4ResV-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ResV-val is deprecated.  Use RosAdapter-msg:u4ResV instead.")
  (u4ResV m))

(cl:ensure-generic-function 'u4SenSizeL-val :lambda-list '(m))
(cl:defmethod u4SenSizeL-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4SenSizeL-val is deprecated.  Use RosAdapter-msg:u4SenSizeL instead.")
  (u4SenSizeL m))

(cl:ensure-generic-function 'u4SenSizeW-val :lambda-list '(m))
(cl:defmethod u4SenSizeW-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4SenSizeW-val is deprecated.  Use RosAdapter-msg:u4SenSizeW instead.")
  (u4SenSizeW m))

(cl:ensure-generic-function 'u4LenFd-val :lambda-list '(m))
(cl:defmethod u4LenFd-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4LenFd-val is deprecated.  Use RosAdapter-msg:u4LenFd instead.")
  (u4LenFd m))

(cl:ensure-generic-function 'u4DistCenL-val :lambda-list '(m))
(cl:defmethod u4DistCenL-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistCenL-val is deprecated.  Use RosAdapter-msg:u4DistCenL instead.")
  (u4DistCenL m))

(cl:ensure-generic-function 'u4DistCenW-val :lambda-list '(m))
(cl:defmethod u4DistCenW-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistCenW-val is deprecated.  Use RosAdapter-msg:u4DistCenW instead.")
  (u4DistCenW m))

(cl:ensure-generic-function 'u4DistParK1-val :lambda-list '(m))
(cl:defmethod u4DistParK1-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistParK1-val is deprecated.  Use RosAdapter-msg:u4DistParK1 instead.")
  (u4DistParK1 m))

(cl:ensure-generic-function 'u4DistParK2-val :lambda-list '(m))
(cl:defmethod u4DistParK2-val ((m <sensor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4DistParK2-val is deprecated.  Use RosAdapter-msg:u4DistParK2 instead.")
  (u4DistParK2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor_info>) ostream)
  "Serializes a message object of type '<sensor_info>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sOriginCoordSys) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1Name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8HostId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8HostId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8HostId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8HostId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8Id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8Id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au4FovHV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'au4FovHV))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au4ClipNF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'au4ClipNF))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au4FovOffHV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'au4FovOffHV))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1ModelType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4IdealFreq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ResL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ResL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ResL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ResL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ResV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ResV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ResV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ResV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4SenSizeL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4SenSizeW))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4LenFd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4DistCenL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4DistCenW))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4DistParK1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u4DistParK2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor_info>) istream)
  "Deserializes a message object of type '<sensor_info>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sOriginCoordSys) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8HostId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8HostId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8HostId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8HostId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u8Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u8Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u8Id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u8Id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au4FovHV) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au4FovHV)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au4ClipNF) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au4ClipNF)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au4FovOffHV) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au4FovOffHV)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1Type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u1ModelType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4IdealFreq) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ResL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ResL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ResL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ResL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ResV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ResV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ResV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ResV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4SenSizeL) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4SenSizeW) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4LenFd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistCenL) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistCenW) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistParK1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4DistParK2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor_info>)))
  "Returns string type for a message object of type '<sensor_info>"
  "RosAdapter/sensor_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor_info)))
  "Returns string type for a message object of type 'sensor_info"
  "RosAdapter/sensor_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor_info>)))
  "Returns md5sum for a message object of type '<sensor_info>"
  "e18318bc223ad24176de445906b697bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor_info)))
  "Returns md5sum for a message object of type 'sensor_info"
  "e18318bc223ad24176de445906b697bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor_info>)))
  "Returns full string definition for message of type '<sensor_info>"
  (cl:format cl:nil "# /** ------ 传感器定义和状态 ------ */~%coord      sPos~%coord      sOriginCoordSys~%string     au1Name~%uint32     u8HostId~%uint32     u8Id~%float32[]  au4FovHV~%float32[]  au4ClipNF~%float32[]  au4FovOffHV~%uint8      u1Type                   ~%uint8      u1ModelType~%float64	   u4IdealFreq~%uint32	   u4ResL~%uint32     u4ResV~%float64	   u4SenSizeL~%float64	   u4SenSizeW~%float64	   u4LenFd~%float64	   u4DistCenL~%float64	   u4DistCenW~%float64	   u4DistParK1~%float64	   u4DistParK2~%~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor_info)))
  "Returns full string definition for message of type 'sensor_info"
  (cl:format cl:nil "# /** ------ 传感器定义和状态 ------ */~%coord      sPos~%coord      sOriginCoordSys~%string     au1Name~%uint32     u8HostId~%uint32     u8Id~%float32[]  au4FovHV~%float32[]  au4ClipNF~%float32[]  au4FovOffHV~%uint8      u1Type                   ~%uint8      u1ModelType~%float64	   u4IdealFreq~%uint32	   u4ResL~%uint32     u4ResV~%float64	   u4SenSizeL~%float64	   u4SenSizeW~%float64	   u4LenFd~%float64	   u4DistCenL~%float64	   u4DistCenW~%float64	   u4DistParK1~%float64	   u4DistParK2~%~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor_info>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sOriginCoordSys))
     4 (cl:length (cl:slot-value msg 'au1Name))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au4FovHV) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au4ClipNF) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au4FovOffHV) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     8
     4
     4
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor_info>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor_info
    (cl:cons ':sPos (sPos msg))
    (cl:cons ':sOriginCoordSys (sOriginCoordSys msg))
    (cl:cons ':au1Name (au1Name msg))
    (cl:cons ':u8HostId (u8HostId msg))
    (cl:cons ':u8Id (u8Id msg))
    (cl:cons ':au4FovHV (au4FovHV msg))
    (cl:cons ':au4ClipNF (au4ClipNF msg))
    (cl:cons ':au4FovOffHV (au4FovOffHV msg))
    (cl:cons ':u1Type (u1Type msg))
    (cl:cons ':u1ModelType (u1ModelType msg))
    (cl:cons ':u4IdealFreq (u4IdealFreq msg))
    (cl:cons ':u4ResL (u4ResL msg))
    (cl:cons ':u4ResV (u4ResV msg))
    (cl:cons ':u4SenSizeL (u4SenSizeL msg))
    (cl:cons ':u4SenSizeW (u4SenSizeW msg))
    (cl:cons ':u4LenFd (u4LenFd msg))
    (cl:cons ':u4DistCenL (u4DistCenL msg))
    (cl:cons ':u4DistCenW (u4DistCenW msg))
    (cl:cons ':u4DistParK1 (u4DistParK1 msg))
    (cl:cons ':u4DistParK2 (u4DistParK2 msg))
))
