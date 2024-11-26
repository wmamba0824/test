;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::mil_object_state)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'mil_object_state (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MIL_OBJECT_STATE")
  (make-package "ROSADAPTER::MIL_OBJECT_STATE"))

(in-package "ROS")
;;//! \htmlinclude mil_object_state.msg.html


(defclass RosAdapter::mil_object_state
  :super ros::object
  :slots (_sObjectState _sMilBase ))

(defmethod RosAdapter::mil_object_state
  (:init
   (&key
    ((:sObjectState __sObjectState) (instance RosAdapter::object_state :init))
    ((:sMilBase __sMilBase) (instance RosAdapter::mil_object_state_base :init))
    )
   (send-super :init)
   (setq _sObjectState __sObjectState)
   (setq _sMilBase __sMilBase)
   self)
  (:sObjectState
   (&rest __sObjectState)
   (if (keywordp (car __sObjectState))
       (send* _sObjectState __sObjectState)
     (progn
       (if __sObjectState (setq _sObjectState (car __sObjectState)))
       _sObjectState)))
  (:sMilBase
   (&rest __sMilBase)
   (if (keywordp (car __sMilBase))
       (send* _sMilBase __sMilBase)
     (progn
       (if __sMilBase (setq _sMilBase (car __sMilBase)))
       _sMilBase)))
  (:serialization-length
   ()
   (+
    ;; RosAdapter/object_state _sObjectState
    (send _sObjectState :serialization-length)
    ;; RosAdapter/mil_object_state_base _sMilBase
    (send _sMilBase :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/object_state _sObjectState
       (send _sObjectState :serialize s)
     ;; RosAdapter/mil_object_state_base _sMilBase
       (send _sMilBase :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/object_state _sObjectState
     (send _sObjectState :deserialize buf ptr-) (incf ptr- (send _sObjectState :serialization-length))
   ;; RosAdapter/mil_object_state_base _sMilBase
     (send _sMilBase :deserialize buf ptr-) (incf ptr- (send _sMilBase :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::mil_object_state :md5sum-) "f5c77edb401c9c12e68a0c159480ce25")
(setf (get RosAdapter::mil_object_state :datatype-) "RosAdapter/mil_object_state")
(setf (get RosAdapter::mil_object_state :definition-)
      "# /** ------ MIL测试环境车、行人、障碍物信息 ------ */
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



(provide :RosAdapter/mil_object_state "f5c77edb401c9c12e68a0c159480ce25")


