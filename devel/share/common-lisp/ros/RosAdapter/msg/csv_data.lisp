; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude csv_data.msg.html

(cl:defclass <csv_data> (roslisp-msg-protocol:ros-message)
  ((u4AccelTgt
    :reader u4AccelTgt
    :initarg :u4AccelTgt
    :type cl:float
    :initform 0.0)
   (u4SteeringWheel
    :reader u4SteeringWheel
    :initarg :u4SteeringWheel
    :type cl:float
    :initform 0.0)
   (u4ADStatus
    :reader u4ADStatus
    :initarg :u4ADStatus
    :type cl:integer
    :initform 0))
)

(cl:defclass csv_data (<csv_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csv_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csv_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<csv_data> is deprecated: use RosAdapter-msg:csv_data instead.")))

(cl:ensure-generic-function 'u4AccelTgt-val :lambda-list '(m))
(cl:defmethod u4AccelTgt-val ((m <csv_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4AccelTgt-val is deprecated.  Use RosAdapter-msg:u4AccelTgt instead.")
  (u4AccelTgt m))

(cl:ensure-generic-function 'u4SteeringWheel-val :lambda-list '(m))
(cl:defmethod u4SteeringWheel-val ((m <csv_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4SteeringWheel-val is deprecated.  Use RosAdapter-msg:u4SteeringWheel instead.")
  (u4SteeringWheel m))

(cl:ensure-generic-function 'u4ADStatus-val :lambda-list '(m))
(cl:defmethod u4ADStatus-val ((m <csv_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ADStatus-val is deprecated.  Use RosAdapter-msg:u4ADStatus instead.")
  (u4ADStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csv_data>) ostream)
  "Serializes a message object of type '<csv_data>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4AccelTgt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u4SteeringWheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ADStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ADStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ADStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ADStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csv_data>) istream)
  "Deserializes a message object of type '<csv_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4AccelTgt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u4SteeringWheel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ADStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ADStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ADStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ADStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csv_data>)))
  "Returns string type for a message object of type '<csv_data>"
  "RosAdapter/csv_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csv_data)))
  "Returns string type for a message object of type 'csv_data"
  "RosAdapter/csv_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csv_data>)))
  "Returns md5sum for a message object of type '<csv_data>"
  "83835cec71cad0ec066fba30fc82c5c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csv_data)))
  "Returns md5sum for a message object of type 'csv_data"
  "83835cec71cad0ec066fba30fc82c5c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csv_data>)))
  "Returns full string definition for message of type '<csv_data>"
  (cl:format cl:nil "# /** ------ AD发送给simpro的CSV数据 ------ */~%~%float32  u4AccelTgt~%float32  u4SteeringWheel~%uint32   u4ADStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csv_data)))
  "Returns full string definition for message of type 'csv_data"
  (cl:format cl:nil "# /** ------ AD发送给simpro的CSV数据 ------ */~%~%float32  u4AccelTgt~%float32  u4SteeringWheel~%uint32   u4ADStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csv_data>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csv_data>))
  "Converts a ROS message object to a list"
  (cl:list 'csv_data
    (cl:cons ':u4AccelTgt (u4AccelTgt msg))
    (cl:cons ':u4SteeringWheel (u4SteeringWheel msg))
    (cl:cons ':u4ADStatus (u4ADStatus msg))
))
