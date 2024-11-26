; Auto-generated. Do not edit!


(cl:in-package RosAdapter-msg)


;//! \htmlinclude LocalObsPose.msg.html

(cl:defclass <LocalObsPose> (roslisp-msg-protocol:ros-message)
  ((local_pose
    :reader local_pose
    :initarg :local_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (milObjStates
    :reader milObjStates
    :initarg :milObjStates
    :type (cl:vector RosAdapter-msg:mil_object_state)
   :initform (cl:make-array 0 :element-type 'RosAdapter-msg:mil_object_state :initial-element (cl:make-instance 'RosAdapter-msg:mil_object_state))))
)

(cl:defclass LocalObsPose (<LocalObsPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalObsPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalObsPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosAdapter-msg:<LocalObsPose> is deprecated: use RosAdapter-msg:LocalObsPose instead.")))

(cl:ensure-generic-function 'local_pose-val :lambda-list '(m))
(cl:defmethod local_pose-val ((m <LocalObsPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:local_pose-val is deprecated.  Use RosAdapter-msg:local_pose instead.")
  (local_pose m))

(cl:ensure-generic-function 'milObjStates-val :lambda-list '(m))
(cl:defmethod milObjStates-val ((m <LocalObsPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosAdapter-msg:milObjStates-val is deprecated.  Use RosAdapter-msg:milObjStates instead.")
  (milObjStates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalObsPose>) ostream)
  "Serializes a message object of type '<LocalObsPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'milObjStates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'milObjStates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalObsPose>) istream)
  "Deserializes a message object of type '<LocalObsPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'milObjStates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'milObjStates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'RosAdapter-msg:mil_object_state))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalObsPose>)))
  "Returns string type for a message object of type '<LocalObsPose>"
  "RosAdapter/LocalObsPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalObsPose)))
  "Returns string type for a message object of type 'LocalObsPose"
  "RosAdapter/LocalObsPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalObsPose>)))
  "Returns md5sum for a message object of type '<LocalObsPose>"
  "fffebcc9c1d1377772720009d7127435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalObsPose)))
  "Returns md5sum for a message object of type 'LocalObsPose"
  "fffebcc9c1d1377772720009d7127435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalObsPose>)))
  "Returns full string definition for message of type '<LocalObsPose>"
  (cl:format cl:nil "# 自定义信息 主车位姿和传感器监测物体所有信息~%~%geometry_msgs/PoseStamped       local_pose      #主车位置姿态~%mil_object_state[]              milObjStates    #障碍物位置姿态, simpro接口提供 ~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: RosAdapter/mil_object_state~%# /** ------ MIL测试环境车、行人、障碍物信息 ------ */~%object_state           sObjectState~%mil_object_state_base  sMilBase~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/mil_object_state_base~%#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */~%~%uint32     u4LightMask~%float32    u4DistanceX~%float32    u4DistanceY~%float32    u4VelocityX~%float32    u4VelocityY~%float32    u4AccelerationX~%float32    u4AccelerationY~%float32    u4YawRate~%float32    u4Dist~%float32    u4Angle~%uint8      u1ObjClass~%uint8      u1Flag_detected~%uint8      u1Movable~%uint8      u1Moving~%uint8      u1Obj_Age~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalObsPose)))
  "Returns full string definition for message of type 'LocalObsPose"
  (cl:format cl:nil "# 自定义信息 主车位姿和传感器监测物体所有信息~%~%geometry_msgs/PoseStamped       local_pose      #主车位置姿态~%mil_object_state[]              milObjStates    #障碍物位置姿态, simpro接口提供 ~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: RosAdapter/mil_object_state~%# /** ------ MIL测试环境车、行人、障碍物信息 ------ */~%object_state           sObjectState~%mil_object_state_base  sMilBase~%================================================================================~%MSG: RosAdapter/object_state~%# /** ------ 对象信息 ------ */~%coord           sSpeed~%coord           sAccel~%geometry        sGeo~%coord           sPos~%string          au1Name~%string          au1ModelFileName~%string          au1ModelName~%float64[]       au8ParamScale~%uint64          u8RoadId~%float64         u8SpeedLimit~%uint32          u4Id~%float32         u4RoadS~%float32         u4RoadT~%float32         u4HdgRel~%float32         u4LaneOffset~%float32         u4TraveledDist~%uint16          u2visMask~%uint8           u1Type~%int8            u1LaneId~%uint8           u1Dir~%bool            u1IsOnRoad~%uint8           u1category~%================================================================================~%MSG: RosAdapter/coord~%# /** ------ 坐标 ------ */~%float64   u8X~%float64   u8Y~%float64   u8Z~%float32   u4H~%float32   u4P~%float32   u4R~%uint8     u1Type~%================================================================================~%MSG: RosAdapter/geometry~%# /** ------ 几何信息 ------ */~%float32 u4DimX~%float32 u4DimY~%float32 u4DimZ~%float32 u4OffX~%float32 u4OffY~%float32 u4OffZ~%================================================================================~%MSG: RosAdapter/mil_object_state_base~%#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */~%~%uint32     u4LightMask~%float32    u4DistanceX~%float32    u4DistanceY~%float32    u4VelocityX~%float32    u4VelocityY~%float32    u4AccelerationX~%float32    u4AccelerationY~%float32    u4YawRate~%float32    u4Dist~%float32    u4Angle~%uint8      u1ObjClass~%uint8      u1Flag_detected~%uint8      u1Movable~%uint8      u1Moving~%uint8      u1Obj_Age~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalObsPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'milObjStates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalObsPose>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalObsPose
    (cl:cons ':local_pose (local_pose msg))
    (cl:cons ':milObjStates (milObjStates msg))
))
