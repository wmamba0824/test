; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude mark_object.msg.html

(cl:defclass <mark_object> (roslisp-msg-protocol:ros-message)
  ((au8RoadMarkCoeffL
    :reader au8RoadMarkCoeffL
    :initarg :au8RoadMarkCoeffL
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (au8RoadMarkCoeffR
    :reader au8RoadMarkCoeffR
    :initarg :au8RoadMarkCoeffR
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass mark_object (<mark_object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mark_object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mark_object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<mark_object> is deprecated: use RosAdapter-msg:mark_object instead.")))

(cl:ensure-generic-function 'au8RoadMarkCoeffL-val :lambda-list '(m))
(cl:defmethod au8RoadMarkCoeffL-val ((m <mark_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au8RoadMarkCoeffL-val is deprecated.  Use RosAdapter-msg:au8RoadMarkCoeffL instead.")
  (au8RoadMarkCoeffL m))

(cl:ensure-generic-function 'au8RoadMarkCoeffR-val :lambda-list '(m))
(cl:defmethod au8RoadMarkCoeffR-val ((m <mark_object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:au8RoadMarkCoeffR-val is deprecated.  Use RosAdapter-msg:au8RoadMarkCoeffR instead.")
  (au8RoadMarkCoeffR m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mark_object>) ostream)
  "Serializes a message object of type '<mark_object>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au8RoadMarkCoeffL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'au8RoadMarkCoeffL))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au8RoadMarkCoeffR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'au8RoadMarkCoeffR))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mark_object>) istream)
  "Deserializes a message object of type '<mark_object>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au8RoadMarkCoeffL) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au8RoadMarkCoeffL)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au8RoadMarkCoeffR) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au8RoadMarkCoeffR)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mark_object>)))
  "Returns string type for a message object of type '<mark_object>"
  "RosAdapter/mark_object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mark_object)))
  "Returns string type for a message object of type 'mark_object"
  "RosAdapter/mark_object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mark_object>)))
  "Returns md5sum for a message object of type '<mark_object>"
  "e24fb0ae50c06f023e6ce66991b164da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mark_object)))
  "Returns md5sum for a message object of type 'mark_object"
  "e24fb0ae50c06f023e6ce66991b164da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mark_object>)))
  "Returns full string definition for message of type '<mark_object>"
  (cl:format cl:nil "# 车道线~%~%float64[]	 au8RoadMarkCoeffL~%float64[]	 au8RoadMarkCoeffR~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mark_object)))
  "Returns full string definition for message of type 'mark_object"
  (cl:format cl:nil "# 车道线~%~%float64[]	 au8RoadMarkCoeffL~%float64[]	 au8RoadMarkCoeffR~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mark_object>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au8RoadMarkCoeffL) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au8RoadMarkCoeffR) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mark_object>))
  "Converts a ROS message object to a list"
  (cl:list 'mark_object
    (cl:cons ':au8RoadMarkCoeffL (au8RoadMarkCoeffL msg))
    (cl:cons ':au8RoadMarkCoeffR (au8RoadMarkCoeffR msg))
))
