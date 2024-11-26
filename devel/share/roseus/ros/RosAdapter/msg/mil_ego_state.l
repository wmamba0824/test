;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::mil_ego_state)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'mil_ego_state (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MIL_EGO_STATE")
  (make-package "ROSADAPTER::MIL_EGO_STATE"))

(in-package "ROS")
;;//! \htmlinclude mil_ego_state.msg.html


(defclass RosAdapter::mil_ego_state
  :super ros::object
  :slots (_sObjectState _u4initSpeed _u8DistRoadEnd _u4LightMask _u4WheelSpeedFL _u4WheelSpeedFR _u4WheelSpeedRL _u4WheelSpeedRR _u4MasterCylinderPressure _u4WheelHeightLF _u4WheelHeightLR _u4WheelHeightRF _u4WheelHeightRR _u4SteerAngle _u1objQuantity _u1irc_id _u1irc_left_id _u1irc_right_id _u1cipv_id _u1lmc_id _u1rmc_id _u1isReachInitSpeed ))

(defmethod RosAdapter::mil_ego_state
  (:init
   (&key
    ((:sObjectState __sObjectState) (instance RosAdapter::object_state :init))
    ((:u4initSpeed __u4initSpeed) 0.0)
    ((:u8DistRoadEnd __u8DistRoadEnd) 0.0)
    ((:u4LightMask __u4LightMask) 0)
    ((:u4WheelSpeedFL __u4WheelSpeedFL) 0.0)
    ((:u4WheelSpeedFR __u4WheelSpeedFR) 0.0)
    ((:u4WheelSpeedRL __u4WheelSpeedRL) 0.0)
    ((:u4WheelSpeedRR __u4WheelSpeedRR) 0.0)
    ((:u4MasterCylinderPressure __u4MasterCylinderPressure) 0.0)
    ((:u4WheelHeightLF __u4WheelHeightLF) 0.0)
    ((:u4WheelHeightLR __u4WheelHeightLR) 0.0)
    ((:u4WheelHeightRF __u4WheelHeightRF) 0.0)
    ((:u4WheelHeightRR __u4WheelHeightRR) 0.0)
    ((:u4SteerAngle __u4SteerAngle) 0.0)
    ((:u1objQuantity __u1objQuantity) 0)
    ((:u1irc_id __u1irc_id) 0)
    ((:u1irc_left_id __u1irc_left_id) 0)
    ((:u1irc_right_id __u1irc_right_id) 0)
    ((:u1cipv_id __u1cipv_id) 0)
    ((:u1lmc_id __u1lmc_id) 0)
    ((:u1rmc_id __u1rmc_id) 0)
    ((:u1isReachInitSpeed __u1isReachInitSpeed) 0)
    )
   (send-super :init)
   (setq _sObjectState __sObjectState)
   (setq _u4initSpeed (float __u4initSpeed))
   (setq _u8DistRoadEnd (float __u8DistRoadEnd))
   (setq _u4LightMask (round __u4LightMask))
   (setq _u4WheelSpeedFL (float __u4WheelSpeedFL))
   (setq _u4WheelSpeedFR (float __u4WheelSpeedFR))
   (setq _u4WheelSpeedRL (float __u4WheelSpeedRL))
   (setq _u4WheelSpeedRR (float __u4WheelSpeedRR))
   (setq _u4MasterCylinderPressure (float __u4MasterCylinderPressure))
   (setq _u4WheelHeightLF (float __u4WheelHeightLF))
   (setq _u4WheelHeightLR (float __u4WheelHeightLR))
   (setq _u4WheelHeightRF (float __u4WheelHeightRF))
   (setq _u4WheelHeightRR (float __u4WheelHeightRR))
   (setq _u4SteerAngle (float __u4SteerAngle))
   (setq _u1objQuantity (round __u1objQuantity))
   (setq _u1irc_id (round __u1irc_id))
   (setq _u1irc_left_id (round __u1irc_left_id))
   (setq _u1irc_right_id (round __u1irc_right_id))
   (setq _u1cipv_id (round __u1cipv_id))
   (setq _u1lmc_id (round __u1lmc_id))
   (setq _u1rmc_id (round __u1rmc_id))
   (setq _u1isReachInitSpeed (round __u1isReachInitSpeed))
   self)
  (:sObjectState
   (&rest __sObjectState)
   (if (keywordp (car __sObjectState))
       (send* _sObjectState __sObjectState)
     (progn
       (if __sObjectState (setq _sObjectState (car __sObjectState)))
       _sObjectState)))
  (:u4initSpeed
   (&optional __u4initSpeed)
   (if __u4initSpeed (setq _u4initSpeed __u4initSpeed)) _u4initSpeed)
  (:u8DistRoadEnd
   (&optional __u8DistRoadEnd)
   (if __u8DistRoadEnd (setq _u8DistRoadEnd __u8DistRoadEnd)) _u8DistRoadEnd)
  (:u4LightMask
   (&optional __u4LightMask)
   (if __u4LightMask (setq _u4LightMask __u4LightMask)) _u4LightMask)
  (:u4WheelSpeedFL
   (&optional __u4WheelSpeedFL)
   (if __u4WheelSpeedFL (setq _u4WheelSpeedFL __u4WheelSpeedFL)) _u4WheelSpeedFL)
  (:u4WheelSpeedFR
   (&optional __u4WheelSpeedFR)
   (if __u4WheelSpeedFR (setq _u4WheelSpeedFR __u4WheelSpeedFR)) _u4WheelSpeedFR)
  (:u4WheelSpeedRL
   (&optional __u4WheelSpeedRL)
   (if __u4WheelSpeedRL (setq _u4WheelSpeedRL __u4WheelSpeedRL)) _u4WheelSpeedRL)
  (:u4WheelSpeedRR
   (&optional __u4WheelSpeedRR)
   (if __u4WheelSpeedRR (setq _u4WheelSpeedRR __u4WheelSpeedRR)) _u4WheelSpeedRR)
  (:u4MasterCylinderPressure
   (&optional __u4MasterCylinderPressure)
   (if __u4MasterCylinderPressure (setq _u4MasterCylinderPressure __u4MasterCylinderPressure)) _u4MasterCylinderPressure)
  (:u4WheelHeightLF
   (&optional __u4WheelHeightLF)
   (if __u4WheelHeightLF (setq _u4WheelHeightLF __u4WheelHeightLF)) _u4WheelHeightLF)
  (:u4WheelHeightLR
   (&optional __u4WheelHeightLR)
   (if __u4WheelHeightLR (setq _u4WheelHeightLR __u4WheelHeightLR)) _u4WheelHeightLR)
  (:u4WheelHeightRF
   (&optional __u4WheelHeightRF)
   (if __u4WheelHeightRF (setq _u4WheelHeightRF __u4WheelHeightRF)) _u4WheelHeightRF)
  (:u4WheelHeightRR
   (&optional __u4WheelHeightRR)
   (if __u4WheelHeightRR (setq _u4WheelHeightRR __u4WheelHeightRR)) _u4WheelHeightRR)
  (:u4SteerAngle
   (&optional __u4SteerAngle)
   (if __u4SteerAngle (setq _u4SteerAngle __u4SteerAngle)) _u4SteerAngle)
  (:u1objQuantity
   (&optional __u1objQuantity)
   (if __u1objQuantity (setq _u1objQuantity __u1objQuantity)) _u1objQuantity)
  (:u1irc_id
   (&optional __u1irc_id)
   (if __u1irc_id (setq _u1irc_id __u1irc_id)) _u1irc_id)
  (:u1irc_left_id
   (&optional __u1irc_left_id)
   (if __u1irc_left_id (setq _u1irc_left_id __u1irc_left_id)) _u1irc_left_id)
  (:u1irc_right_id
   (&optional __u1irc_right_id)
   (if __u1irc_right_id (setq _u1irc_right_id __u1irc_right_id)) _u1irc_right_id)
  (:u1cipv_id
   (&optional __u1cipv_id)
   (if __u1cipv_id (setq _u1cipv_id __u1cipv_id)) _u1cipv_id)
  (:u1lmc_id
   (&optional __u1lmc_id)
   (if __u1lmc_id (setq _u1lmc_id __u1lmc_id)) _u1lmc_id)
  (:u1rmc_id
   (&optional __u1rmc_id)
   (if __u1rmc_id (setq _u1rmc_id __u1rmc_id)) _u1rmc_id)
  (:u1isReachInitSpeed
   (&optional __u1isReachInitSpeed)
   (if __u1isReachInitSpeed (setq _u1isReachInitSpeed __u1isReachInitSpeed)) _u1isReachInitSpeed)
  (:serialization-length
   ()
   (+
    ;; RosAdapter/object_state _sObjectState
    (send _sObjectState :serialization-length)
    ;; float64 _u4initSpeed
    8
    ;; float64 _u8DistRoadEnd
    8
    ;; uint32 _u4LightMask
    4
    ;; float32 _u4WheelSpeedFL
    4
    ;; float32 _u4WheelSpeedFR
    4
    ;; float32 _u4WheelSpeedRL
    4
    ;; float32 _u4WheelSpeedRR
    4
    ;; float32 _u4MasterCylinderPressure
    4
    ;; float32 _u4WheelHeightLF
    4
    ;; float32 _u4WheelHeightLR
    4
    ;; float32 _u4WheelHeightRF
    4
    ;; float32 _u4WheelHeightRR
    4
    ;; float32 _u4SteerAngle
    4
    ;; uint8 _u1objQuantity
    1
    ;; uint8 _u1irc_id
    1
    ;; uint8 _u1irc_left_id
    1
    ;; uint8 _u1irc_right_id
    1
    ;; uint8 _u1cipv_id
    1
    ;; uint8 _u1lmc_id
    1
    ;; uint8 _u1rmc_id
    1
    ;; uint8 _u1isReachInitSpeed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/object_state _sObjectState
       (send _sObjectState :serialize s)
     ;; float64 _u4initSpeed
       (sys::poke _u4initSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8DistRoadEnd
       (sys::poke _u8DistRoadEnd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _u4LightMask
       (write-long _u4LightMask s)
     ;; float32 _u4WheelSpeedFL
       (sys::poke _u4WheelSpeedFL (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelSpeedFR
       (sys::poke _u4WheelSpeedFR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelSpeedRL
       (sys::poke _u4WheelSpeedRL (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelSpeedRR
       (sys::poke _u4WheelSpeedRR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4MasterCylinderPressure
       (sys::poke _u4MasterCylinderPressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelHeightLF
       (sys::poke _u4WheelHeightLF (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelHeightLR
       (sys::poke _u4WheelHeightLR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelHeightRF
       (sys::poke _u4WheelHeightRF (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WheelHeightRR
       (sys::poke _u4WheelHeightRR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4SteerAngle
       (sys::poke _u4SteerAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _u1objQuantity
       (write-byte _u1objQuantity s)
     ;; uint8 _u1irc_id
       (write-byte _u1irc_id s)
     ;; uint8 _u1irc_left_id
       (write-byte _u1irc_left_id s)
     ;; uint8 _u1irc_right_id
       (write-byte _u1irc_right_id s)
     ;; uint8 _u1cipv_id
       (write-byte _u1cipv_id s)
     ;; uint8 _u1lmc_id
       (write-byte _u1lmc_id s)
     ;; uint8 _u1rmc_id
       (write-byte _u1rmc_id s)
     ;; uint8 _u1isReachInitSpeed
       (write-byte _u1isReachInitSpeed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/object_state _sObjectState
     (send _sObjectState :deserialize buf ptr-) (incf ptr- (send _sObjectState :serialization-length))
   ;; float64 _u4initSpeed
     (setq _u4initSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8DistRoadEnd
     (setq _u8DistRoadEnd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _u4LightMask
     (setq _u4LightMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _u4WheelSpeedFL
     (setq _u4WheelSpeedFL (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelSpeedFR
     (setq _u4WheelSpeedFR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelSpeedRL
     (setq _u4WheelSpeedRL (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelSpeedRR
     (setq _u4WheelSpeedRR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4MasterCylinderPressure
     (setq _u4MasterCylinderPressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelHeightLF
     (setq _u4WheelHeightLF (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelHeightLR
     (setq _u4WheelHeightLR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelHeightRF
     (setq _u4WheelHeightRF (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WheelHeightRR
     (setq _u4WheelHeightRR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4SteerAngle
     (setq _u4SteerAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _u1objQuantity
     (setq _u1objQuantity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1irc_id
     (setq _u1irc_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1irc_left_id
     (setq _u1irc_left_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1irc_right_id
     (setq _u1irc_right_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1cipv_id
     (setq _u1cipv_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1lmc_id
     (setq _u1lmc_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1rmc_id
     (setq _u1rmc_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1isReachInitSpeed
     (setq _u1isReachInitSpeed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::mil_ego_state :md5sum-) "163aed62265e04fd2e9211889cc3cfd3")
(setf (get RosAdapter::mil_ego_state :datatype-) "RosAdapter/mil_ego_state")
(setf (get RosAdapter::mil_ego_state :definition-)
      "# /** ------ MIL测试主车信息描述包 ------ */

object_state   sObjectState
float64        u4initSpeed
float64        u8DistRoadEnd
uint32         u4LightMask               
float32        u4WheelSpeedFL
float32        u4WheelSpeedFR
float32        u4WheelSpeedRL
float32        u4WheelSpeedRR
float32        u4MasterCylinderPressure
float32        u4WheelHeightLF
float32        u4WheelHeightLR
float32        u4WheelHeightRF
float32        u4WheelHeightRR
float32        u4SteerAngle
uint8          u1objQuantity
uint8          u1irc_id
uint8          u1irc_left_id
uint8          u1irc_right_id
uint8          u1cipv_id
uint8          u1lmc_id
uint8          u1rmc_id
uint8          u1isReachInitSpeed
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
")



(provide :RosAdapter/mil_ego_state "163aed62265e04fd2e9211889cc3cfd3")


