;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::sensor_detection_info)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'sensor_detection_info (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::SENSOR_DETECTION_INFO")
  (make-package "ROSADAPTER::SENSOR_DETECTION_INFO"))

(in-package "ROS")
;;//! \htmlinclude sensor_detection_info.msg.html


(defclass RosAdapter::sensor_detection_info
  :super ros::object
  :slots (_u4Id _u4SensorId _u2Flags _u1Type _u1Occlusion _u1DeltaLanePos _u1ValidFlag _u8ExistProb _u8TypeIdProb _sExtraInfo ))

(defmethod RosAdapter::sensor_detection_info
  (:init
   (&key
    ((:u4Id __u4Id) 0)
    ((:u4SensorId __u4SensorId) 0)
    ((:u2Flags __u2Flags) 0)
    ((:u1Type __u1Type) 0)
    ((:u1Occlusion __u1Occlusion) 0)
    ((:u1DeltaLanePos __u1DeltaLanePos) 0)
    ((:u1ValidFlag __u1ValidFlag) 0)
    ((:u8ExistProb __u8ExistProb) 0.0)
    ((:u8TypeIdProb __u8TypeIdProb) 0.0)
    ((:sExtraInfo __sExtraInfo) (instance RosAdapter::object_uion :init))
    )
   (send-super :init)
   (setq _u4Id (round __u4Id))
   (setq _u4SensorId (round __u4SensorId))
   (setq _u2Flags (round __u2Flags))
   (setq _u1Type (round __u1Type))
   (setq _u1Occlusion (round __u1Occlusion))
   (setq _u1DeltaLanePos (round __u1DeltaLanePos))
   (setq _u1ValidFlag (round __u1ValidFlag))
   (setq _u8ExistProb (float __u8ExistProb))
   (setq _u8TypeIdProb (float __u8TypeIdProb))
   (setq _sExtraInfo __sExtraInfo)
   self)
  (:u4Id
   (&optional __u4Id)
   (if __u4Id (setq _u4Id __u4Id)) _u4Id)
  (:u4SensorId
   (&optional __u4SensorId)
   (if __u4SensorId (setq _u4SensorId __u4SensorId)) _u4SensorId)
  (:u2Flags
   (&optional __u2Flags)
   (if __u2Flags (setq _u2Flags __u2Flags)) _u2Flags)
  (:u1Type
   (&optional __u1Type)
   (if __u1Type (setq _u1Type __u1Type)) _u1Type)
  (:u1Occlusion
   (&optional __u1Occlusion)
   (if __u1Occlusion (setq _u1Occlusion __u1Occlusion)) _u1Occlusion)
  (:u1DeltaLanePos
   (&optional __u1DeltaLanePos)
   (if __u1DeltaLanePos (setq _u1DeltaLanePos __u1DeltaLanePos)) _u1DeltaLanePos)
  (:u1ValidFlag
   (&optional __u1ValidFlag)
   (if __u1ValidFlag (setq _u1ValidFlag __u1ValidFlag)) _u1ValidFlag)
  (:u8ExistProb
   (&optional __u8ExistProb)
   (if __u8ExistProb (setq _u8ExistProb __u8ExistProb)) _u8ExistProb)
  (:u8TypeIdProb
   (&optional __u8TypeIdProb)
   (if __u8TypeIdProb (setq _u8TypeIdProb __u8TypeIdProb)) _u8TypeIdProb)
  (:sExtraInfo
   (&rest __sExtraInfo)
   (if (keywordp (car __sExtraInfo))
       (send* _sExtraInfo __sExtraInfo)
     (progn
       (if __sExtraInfo (setq _sExtraInfo (car __sExtraInfo)))
       _sExtraInfo)))
  (:serialization-length
   ()
   (+
    ;; uint32 _u4Id
    4
    ;; uint32 _u4SensorId
    4
    ;; uint16 _u2Flags
    2
    ;; uint8 _u1Type
    1
    ;; int8 _u1Occlusion
    1
    ;; int8 _u1DeltaLanePos
    1
    ;; uint8 _u1ValidFlag
    1
    ;; float64 _u8ExistProb
    8
    ;; float64 _u8TypeIdProb
    8
    ;; RosAdapter/object_uion _sExtraInfo
    (send _sExtraInfo :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4Id
       (write-long _u4Id s)
     ;; uint32 _u4SensorId
       (write-long _u4SensorId s)
     ;; uint16 _u2Flags
       (write-word _u2Flags s)
     ;; uint8 _u1Type
       (write-byte _u1Type s)
     ;; int8 _u1Occlusion
       (write-byte _u1Occlusion s)
     ;; int8 _u1DeltaLanePos
       (write-byte _u1DeltaLanePos s)
     ;; uint8 _u1ValidFlag
       (write-byte _u1ValidFlag s)
     ;; float64 _u8ExistProb
       (sys::poke _u8ExistProb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8TypeIdProb
       (sys::poke _u8TypeIdProb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; RosAdapter/object_uion _sExtraInfo
       (send _sExtraInfo :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4Id
     (setq _u4Id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4SensorId
     (setq _u4SensorId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _u2Flags
     (setq _u2Flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _u1Type
     (setq _u1Type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _u1Occlusion
     (setq _u1Occlusion (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1Occlusion 127) (setq _u1Occlusion (- _u1Occlusion 256)))
   ;; int8 _u1DeltaLanePos
     (setq _u1DeltaLanePos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1DeltaLanePos 127) (setq _u1DeltaLanePos (- _u1DeltaLanePos 256)))
   ;; uint8 _u1ValidFlag
     (setq _u1ValidFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _u8ExistProb
     (setq _u8ExistProb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8TypeIdProb
     (setq _u8TypeIdProb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; RosAdapter/object_uion _sExtraInfo
     (send _sExtraInfo :deserialize buf ptr-) (incf ptr- (send _sExtraInfo :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::sensor_detection_info :md5sum-) "3c1cb322c1ecab3b195230dfd2011618")
(setf (get RosAdapter::sensor_detection_info :datatype-) "RosAdapter/sensor_detection_info")
(setf (get RosAdapter::sensor_detection_info :definition-)
      "# 传感器监测物体所有信息

uint32            u4Id
uint32            u4SensorId
uint16            u2Flags
uint8             u1Type
int8              u1Occlusion
int8              u1DeltaLanePos
uint8             u1ValidFlag
float64           u8ExistProb
float64           u8TypeIdProb
object_uion       sExtraInfo
================================================================================
MSG: RosAdapter/object_uion
dynamic_object sDynamicObj
mark_object    sMarkObj
sign_object    sSignObj 
================================================================================
MSG: RosAdapter/dynamic_object
# /** ------ 传感器探测到的对象信息 ------ */

float64    u8Dist
float64    u8NearestDist
float64    u8RelativeVelx
float64    u8RelativeVely
float64    u8RelativeAccx
float64    u8RelativeAccy
float64    u8HeadingAngle
coord      sSensorPos
coord      sNearestSensorPos
coord      sSenNearestPosXL
coord      sSenNearestPosXR
coord      sSenNearestPosYL
coord      sSenNearestPosYR
point3d[]  sBoundingBox
uint8      u1MovingSt
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
MSG: RosAdapter/point3d
float64      u8x
float64      u8y
float64      u8z
================================================================================
MSG: RosAdapter/mark_object
# 车道线

float64[]	 au8RoadMarkCoeffL
float64[]	 au8RoadMarkCoeffR
================================================================================
MSG: RosAdapter/sign_object
# 交通标志

float64   u8Dist
float64   u8NearestDist
float64   u8TrafficSignDistX
float64   u8TrafficSignDistY
coord     sSensorPos
coord     sNearestSensorPos
uint8     u1TrafficSignType
")



(provide :RosAdapter/sensor_detection_info "3c1cb322c1ecab3b195230dfd2011618")


