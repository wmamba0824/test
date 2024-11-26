;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::LocalObsPose)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'LocalObsPose (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::LOCALOBSPOSE")
  (make-package "ROSADAPTER::LOCALOBSPOSE"))

(in-package "ROS")
;;//! \htmlinclude LocalObsPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass RosAdapter::LocalObsPose
  :super ros::object
  :slots (_local_pose _milObjStates ))

(defmethod RosAdapter::LocalObsPose
  (:init
   (&key
    ((:local_pose __local_pose) (instance geometry_msgs::PoseStamped :init))
    ((:milObjStates __milObjStates) ())
    )
   (send-super :init)
   (setq _local_pose __local_pose)
   (setq _milObjStates __milObjStates)
   self)
  (:local_pose
   (&rest __local_pose)
   (if (keywordp (car __local_pose))
       (send* _local_pose __local_pose)
     (progn
       (if __local_pose (setq _local_pose (car __local_pose)))
       _local_pose)))
  (:milObjStates
   (&rest __milObjStates)
   (if (keywordp (car __milObjStates))
       (send* _milObjStates __milObjStates)
     (progn
       (if __milObjStates (setq _milObjStates (car __milObjStates)))
       _milObjStates)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _local_pose
    (send _local_pose :serialization-length)
    ;; RosAdapter/mil_object_state[] _milObjStates
    (apply #'+ (send-all _milObjStates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _local_pose
       (send _local_pose :serialize s)
     ;; RosAdapter/mil_object_state[] _milObjStates
     (write-long (length _milObjStates) s)
     (dolist (elem _milObjStates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _local_pose
     (send _local_pose :deserialize buf ptr-) (incf ptr- (send _local_pose :serialization-length))
   ;; RosAdapter/mil_object_state[] _milObjStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _milObjStates (let (r) (dotimes (i n) (push (instance RosAdapter::mil_object_state :init) r)) r))
     (dolist (elem- _milObjStates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get RosAdapter::LocalObsPose :md5sum-) "fffebcc9c1d1377772720009d7127435")
(setf (get RosAdapter::LocalObsPose :datatype-) "RosAdapter/LocalObsPose")
(setf (get RosAdapter::LocalObsPose :definition-)
      "# 自定义信息 主车位姿和传感器监测物体所有信息

geometry_msgs/PoseStamped       local_pose      #主车位置姿态
mil_object_state[]              milObjStates    #障碍物位置姿态, simpro接口提供 
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: RosAdapter/mil_object_state
# /** ------ MIL测试环境车、行人、障碍物信息 ------ */
object_state           sObjectState
mil_object_state_base  sMilBase
================================================================================
MSG: RosAdapter/object_state
# /** ------ 对象信息 ------ */
coord           sSpeed
coord           sAccel
geometry        sGeo
coord           sPos
string          au1Name
string          au1ModelFileName
string          au1ModelName
float64[]       au8ParamScale
uint64          u8RoadId
float64         u8SpeedLimit
uint32          u4Id
float32         u4RoadS
float32         u4RoadT
float32         u4HdgRel
float32         u4LaneOffset
float32         u4TraveledDist
uint16          u2visMask
uint8           u1Type
int8            u1LaneId
uint8           u1Dir
bool            u1IsOnRoad
uint8           u1category
================================================================================
MSG: RosAdapter/coord
# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type
================================================================================
MSG: RosAdapter/geometry
# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ
================================================================================
MSG: RosAdapter/mil_object_state_base
#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */

uint32     u4LightMask
float32    u4DistanceX
float32    u4DistanceY
float32    u4VelocityX
float32    u4VelocityY
float32    u4AccelerationX
float32    u4AccelerationY
float32    u4YawRate
float32    u4Dist
float32    u4Angle
uint8      u1ObjClass
uint8      u1Flag_detected
uint8      u1Movable
uint8      u1Moving
uint8      u1Obj_Age
")



(provide :RosAdapter/LocalObsPose "fffebcc9c1d1377772720009d7127435")


