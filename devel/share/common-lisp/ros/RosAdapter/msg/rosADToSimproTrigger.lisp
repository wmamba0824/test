; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude rosADToSimproTrigger.msg.html

(cl:defclass <rosADToSimproTrigger> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type RosAdapter-msg:header
    :initform (cl:make-instance 'RosAdapter-msg:header))
   (adTrigger
    :reader adTrigger
    :initarg :adTrigger
    :type RosAdapter-msg:sync
    :initform (cl:make-instance 'RosAdapter-msg:sync)))
)

(cl:defclass rosADToSimproTrigger (<rosADToSimproTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rosADToSimproTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rosADToSimproTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<rosADToSimproTrigger> is deprecated: use RosAdapter-msg:rosADToSimproTrigger instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <rosADToSimproTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:head-val is deprecated.  Use RosAdapter-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'adTrigger-val :lambda-list '(m))
(cl:defmethod adTrigger-val ((m <rosADToSimproTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:adTrigger-val is deprecated.  Use RosAdapter-msg:adTrigger instead.")
  (adTrigger m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rosADToSimproTrigger>) ostream)
  "Serializes a message object of type '<rosADToSimproTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adTrigger) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rosADToSimproTrigger>) istream)
  "Deserializes a message object of type '<rosADToSimproTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adTrigger) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rosADToSimproTrigger>)))
  "Returns string type for a message object of type '<rosADToSimproTrigger>"
  "RosAdapter/rosADToSimproTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rosADToSimproTrigger)))
  "Returns string type for a message object of type 'rosADToSimproTrigger"
  "RosAdapter/rosADToSimproTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rosADToSimproTrigger>)))
  "Returns md5sum for a message object of type '<rosADToSimproTrigger>"
  "2da15b25b1d5918bbf88a5b655854d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rosADToSimproTrigger)))
  "Returns md5sum for a message object of type 'rosADToSimproTrigger"
  "2da15b25b1d5918bbf88a5b655854d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rosADToSimproTrigger>)))
  "Returns full string definition for message of type '<rosADToSimproTrigger>"
  (cl:format cl:nil "header head~%sync   adTrigger~%================================================================================~%MSG: RosAdapter/header~%# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%================================================================================~%MSG: RosAdapter/sync~%# /** ------ 同步信号 ------ */~%uint32 u4CmdMask~%uint32 u4UserData~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rosADToSimproTrigger)))
  "Returns full string definition for message of type 'rosADToSimproTrigger"
  (cl:format cl:nil "header head~%sync   adTrigger~%================================================================================~%MSG: RosAdapter/header~%# /** ------ Msg header ------ */~%float64 u8SimTime~%uint32  u4HeaderSize~%uint32  u4DataSize~%uint32  u4FrameNo~%================================================================================~%MSG: RosAdapter/sync~%# /** ------ 同步信号 ------ */~%uint32 u4CmdMask~%uint32 u4UserData~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rosADToSimproTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adTrigger))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rosADToSimproTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'rosADToSimproTrigger
    (cl:cons ':head (head msg))
    (cl:cons ':adTrigger (adTrigger msg))
))
