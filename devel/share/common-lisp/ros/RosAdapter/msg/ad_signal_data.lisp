; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude ad_signal_data.msg.html

(cl:defclass <ad_signal_data> (roslisp-msg-protocol:ros-message)
  ((au1SignalName
    :reader au1SignalName
    :initarg :au1SignalName
    :type cl:string
    :initform "")
   (u8SignalValue
    :reader u8SignalValue
    :initarg :u8SignalValue
    :type cl:float
    :initform 0.0))
)

(cl:defclass ad_signal_data (<ad_signal_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ad_signal_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ad_signal_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<ad_signal_data> is deprecated: use RosAdapter-msg:ad_signal_data instead.")))

(cl:ensure-generic-function 'au1SignalName-val :lambda-list '(m))
(cl:defmethod au1SignalName-val ((m <ad_signal_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1SignalName-val is deprecated.  Use RosAdapter-msg:au1SignalName instead.")
  (au1SignalName m))

(cl:ensure-generic-function 'u8SignalValue-val :lambda-list '(m))
(cl:defmethod u8SignalValue-val ((m <ad_signal_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u8SignalValue-val is deprecated.  Use RosAdapter-msg:u8SignalValue instead.")
  (u8SignalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ad_signal_data>) ostream)
  "Serializes a message object of type '<ad_signal_data>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1SignalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1SignalName))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u8SignalValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ad_signal_data>) istream)
  "Deserializes a message object of type '<ad_signal_data>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1SignalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1SignalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u8SignalValue) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ad_signal_data>)))
  "Returns string type for a message object of type '<ad_signal_data>"
  "RosAdapter/ad_signal_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ad_signal_data)))
  "Returns string type for a message object of type 'ad_signal_data"
  "RosAdapter/ad_signal_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ad_signal_data>)))
  "Returns md5sum for a message object of type '<ad_signal_data>"
  "8ff39b1451a3fcf44b37435ff12fa37b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ad_signal_data)))
  "Returns md5sum for a message object of type 'ad_signal_data"
  "8ff39b1451a3fcf44b37435ff12fa37b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ad_signal_data>)))
  "Returns full string definition for message of type '<ad_signal_data>"
  (cl:format cl:nil "string      au1SignalName~%float64     u8SignalValue~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ad_signal_data)))
  "Returns full string definition for message of type 'ad_signal_data"
  (cl:format cl:nil "string      au1SignalName~%float64     u8SignalValue~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ad_signal_data>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1SignalName))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ad_signal_data>))
  "Converts a ROS message object to a list"
  (cl:list 'ad_signal_data
    (cl:cons ':au1SignalName (au1SignalName msg))
    (cl:cons ':u8SignalValue (u8SignalValue msg))
))
