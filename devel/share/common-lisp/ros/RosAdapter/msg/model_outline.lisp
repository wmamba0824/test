; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude model_outline.msg.html

(cl:defclass <model_outline> (roslisp-msg-protocol:ros-message)
  ((au1ModelName
    :reader au1ModelName
    :initarg :au1ModelName
    :type cl:string
    :initform "")
   (au8OutlinePoints
    :reader au8OutlinePoints
    :initarg :au8OutlinePoints
    :type (cl:vector RosAdapter-msg:double_array)
   :initform (cl:make-array 0 :element-type 'RosAdapter-msg:double_array :initial-element (cl:make-instance 'RosAdapter-msg:double_array))))
)

(cl:defclass model_outline (<model_outline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <model_outline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'model_outline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<model_outline> is deprecated: use RosAdapter-msg:model_outline instead.")))

(cl:ensure-generic-function 'au1ModelName-val :lambda-list '(m))
(cl:defmethod au1ModelName-val ((m <model_outline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au1ModelName-val is deprecated.  Use RosAdapter-msg:au1ModelName instead.")
  (au1ModelName m))

(cl:ensure-generic-function 'au8OutlinePoints-val :lambda-list '(m))
(cl:defmethod au8OutlinePoints-val ((m <model_outline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au8OutlinePoints-val is deprecated.  Use RosAdapter-msg:au8OutlinePoints instead.")
  (au8OutlinePoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <model_outline>) ostream)
  "Serializes a message object of type '<model_outline>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'au1ModelName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'au1ModelName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au8OutlinePoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'au8OutlinePoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <model_outline>) istream)
  "Deserializes a message object of type '<model_outline>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au1ModelName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'au1ModelName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au8OutlinePoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au8OutlinePoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'RosAdapter-msg:double_array))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<model_outline>)))
  "Returns string type for a message object of type '<model_outline>"
  "RosAdapter/model_outline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'model_outline)))
  "Returns string type for a message object of type 'model_outline"
  "RosAdapter/model_outline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<model_outline>)))
  "Returns md5sum for a message object of type '<model_outline>"
  "21a3ac0ff6ce066332bb8e9a1448b5b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'model_outline)))
  "Returns md5sum for a message object of type 'model_outline"
  "21a3ac0ff6ce066332bb8e9a1448b5b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<model_outline>)))
  "Returns full string definition for message of type '<model_outline>"
  (cl:format cl:nil "string                au1ModelName~%double_array[]        au8OutlinePoints    ~%================================================================================~%MSG: RosAdapter/double_array~%float64[]  data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'model_outline)))
  "Returns full string definition for message of type 'model_outline"
  (cl:format cl:nil "string                au1ModelName~%double_array[]        au8OutlinePoints    ~%================================================================================~%MSG: RosAdapter/double_array~%float64[]  data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <model_outline>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'au1ModelName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au8OutlinePoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <model_outline>))
  "Converts a ROS message object to a list"
  (cl:list 'model_outline
    (cl:cons ':au1ModelName (au1ModelName msg))
    (cl:cons ':au8OutlinePoints (au8OutlinePoints msg))
))
