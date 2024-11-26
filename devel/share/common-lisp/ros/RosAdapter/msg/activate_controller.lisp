; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude activate_controller.msg.html

(cl:defclass <activate_controller> (roslisp-msg-protocol:ros-message)
  ((u4ObjectId
    :reader u4ObjectId
    :initarg :u4ObjectId
    :type cl:integer
    :initform 0)
   (u1Lateral
    :reader u1Lateral
    :initarg :u1Lateral
    :type cl:boolean
    :initform cl:nil)
   (u1Longitudinal
    :reader u1Longitudinal
    :initarg :u1Longitudinal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass activate_controller (<activate_controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <activate_controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'activate_controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<activate_controller> is deprecated: use RosAdapter-msg:activate_controller instead.")))

(cl:ensure-generic-function 'u4ObjectId-val :lambda-list '(m))
(cl:defmethod u4ObjectId-val ((m <activate_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u4ObjectId-val is deprecated.  Use RosAdapter-msg:u4ObjectId instead.")
  (u4ObjectId m))

(cl:ensure-generic-function 'u1Lateral-val :lambda-list '(m))
(cl:defmethod u1Lateral-val ((m <activate_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Lateral-val is deprecated.  Use RosAdapter-msg:u1Lateral instead.")
  (u1Lateral m))

(cl:ensure-generic-function 'u1Longitudinal-val :lambda-list '(m))
(cl:defmethod u1Longitudinal-val ((m <activate_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:u1Longitudinal-val is deprecated.  Use RosAdapter-msg:u1Longitudinal instead.")
  (u1Longitudinal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <activate_controller>) ostream)
  "Serializes a message object of type '<activate_controller>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1Lateral) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'u1Longitudinal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <activate_controller>) istream)
  "Deserializes a message object of type '<activate_controller>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u4ObjectId)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u1Lateral) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'u1Longitudinal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<activate_controller>)))
  "Returns string type for a message object of type '<activate_controller>"
  "RosAdapter/activate_controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'activate_controller)))
  "Returns string type for a message object of type 'activate_controller"
  "RosAdapter/activate_controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<activate_controller>)))
  "Returns md5sum for a message object of type '<activate_controller>"
  "5767c52dad068fee51764b887eed08ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'activate_controller)))
  "Returns md5sum for a message object of type 'activate_controller"
  "5767c52dad068fee51764b887eed08ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<activate_controller>)))
  "Returns full string definition for message of type '<activate_controller>"
  (cl:format cl:nil "# /** ------激活控制器 ------ */~%~%uint32          u4ObjectId~%bool            u1Lateral~%bool            u1Longitudinal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'activate_controller)))
  "Returns full string definition for message of type 'activate_controller"
  (cl:format cl:nil "# /** ------激活控制器 ------ */~%~%uint32          u4ObjectId~%bool            u1Lateral~%bool            u1Longitudinal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <activate_controller>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <activate_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'activate_controller
    (cl:cons ':u4ObjectId (u4ObjectId msg))
    (cl:cons ':u1Lateral (u1Lateral msg))
    (cl:cons ':u1Longitudinal (u1Longitudinal msg))
))
