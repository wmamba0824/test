;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::rosADToSimproEgoState)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'rosADToSimproEgoState (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ROSADTOSIMPROEGOSTATE")
  (make-package "ROSADAPTER::ROSADTOSIMPROEGOSTATE"))

(in-package "ROS")
;;//! \htmlinclude rosADToSimproEgoState.msg.html


(defclass RosAdapter::rosADToSimproEgoState
  :super ros::object
  :slots (_head _egoState _csvData _v2xWarning _adSignalData _ttcControl ))

(defmethod RosAdapter::rosADToSimproEgoState
  (:init
   (&key
    ((:head __head) (instance RosAdapter::header :init))
    ((:egoState __egoState) (instance RosAdapter::mil_ego_state :init))
    ((:csvData __csvData) (instance RosAdapter::csv_data :init))
    ((:v2xWarning __v2xWarning) (instance RosAdapter::v2x_warninginformation :init))
    ((:adSignalData __adSignalData) (instance RosAdapter::ad_signal_data :init))
    ((:ttcControl __ttcControl) (instance RosAdapter::ttc_control :init))
    )
   (send-super :init)
   (setq _head __head)
   (setq _egoState __egoState)
   (setq _csvData __csvData)
   (setq _v2xWarning __v2xWarning)
   (setq _adSignalData __adSignalData)
   (setq _ttcControl __ttcControl)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:egoState
   (&rest __egoState)
   (if (keywordp (car __egoState))
       (send* _egoState __egoState)
     (progn
       (if __egoState (setq _egoState (car __egoState)))
       _egoState)))
  (:csvData
   (&rest __csvData)
   (if (keywordp (car __csvData))
       (send* _csvData __csvData)
     (progn
       (if __csvData (setq _csvData (car __csvData)))
       _csvData)))
  (:v2xWarning
   (&rest __v2xWarning)
   (if (keywordp (car __v2xWarning))
       (send* _v2xWarning __v2xWarning)
     (progn
       (if __v2xWarning (setq _v2xWarning (car __v2xWarning)))
       _v2xWarning)))
  (:adSignalData
   (&rest __adSignalData)
   (if (keywordp (car __adSignalData))
       (send* _adSignalData __adSignalData)
     (progn
       (if __adSignalData (setq _adSignalData (car __adSignalData)))
       _adSignalData)))
  (:ttcControl
   (&rest __ttcControl)
   (if (keywordp (car __ttcControl))
       (send* _ttcControl __ttcControl)
     (progn
       (if __ttcControl (setq _ttcControl (car __ttcControl)))
       _ttcControl)))
  (:serialization-length
   ()
   (+
    ;; RosAdapter/header _head
    (send _head :serialization-length)
    ;; RosAdapter/mil_ego_state _egoState
    (send _egoState :serialization-length)
    ;; RosAdapter/csv_data _csvData
    (send _csvData :serialization-length)
    ;; RosAdapter/v2x_warninginformation _v2xWarning
    (send _v2xWarning :serialization-length)
    ;; RosAdapter/ad_signal_data _adSignalData
    (send _adSignalData :serialization-length)
    ;; RosAdapter/ttc_control _ttcControl
    (send _ttcControl :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/header _head
       (send _head :serialize s)
     ;; RosAdapter/mil_ego_state _egoState
       (send _egoState :serialize s)
     ;; RosAdapter/csv_data _csvData
       (send _csvData :serialize s)
     ;; RosAdapter/v2x_warninginformation _v2xWarning
       (send _v2xWarning :serialize s)
     ;; RosAdapter/ad_signal_data _adSignalData
       (send _adSignalData :serialize s)
     ;; RosAdapter/ttc_control _ttcControl
       (send _ttcControl :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; RosAdapter/mil_ego_state _egoState
     (send _egoState :deserialize buf ptr-) (incf ptr- (send _egoState :serialization-length))
   ;; RosAdapter/csv_data _csvData
     (send _csvData :deserialize buf ptr-) (incf ptr- (send _csvData :serialization-length))
   ;; RosAdapter/v2x_warninginformation _v2xWarning
     (send _v2xWarning :deserialize buf ptr-) (incf ptr- (send _v2xWarning :serialization-length))
   ;; RosAdapter/ad_signal_data _adSignalData
     (send _adSignalData :deserialize buf ptr-) (incf ptr- (send _adSignalData :serialization-length))
   ;; RosAdapter/ttc_control _ttcControl
     (send _ttcControl :deserialize buf ptr-) (incf ptr- (send _ttcControl :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::rosADToSimproEgoState :md5sum-) "e0da0920f294e5888d789ea87518cbc4")
(setf (get RosAdapter::rosADToSimproEgoState :datatype-) "RosAdapter/rosADToSimproEgoState")
(setf (get RosAdapter::rosADToSimproEgoState :definition-)
      "header                            head
mil_ego_state                     egoState
csv_data                          csvData
v2x_warninginformation            v2xWarning
ad_signal_data                    adSignalData
ttc_control                       ttcControl
================================================================================
MSG: RosAdapter/header
# /** ------ Msg header ------ */
float64 u8SimTime
uint32  u4HeaderSize
uint32  u4DataSize
uint32  u4FrameNo
================================================================================
MSG: RosAdapter/mil_ego_state
# /** ------ MIL测试主车信息描述包 ------ */

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
================================================================================
MSG: RosAdapter/csv_data
# /** ------ AD发送给simpro的CSV数据 ------ */

float32  u4AccelTgt
float32  u4SteeringWheel
uint32   u4ADStatus
================================================================================
MSG: RosAdapter/v2x_warninginformation
# /** ------ V2X 告警信息 ------ */

uint32 u4Type
================================================================================
MSG: RosAdapter/ad_signal_data
string      au1SignalName
float64     u8SignalValue
================================================================================
MSG: RosAdapter/ttc_control
uint32  u4Status
")



(provide :RosAdapter/rosADToSimproEgoState "e0da0920f294e5888d789ea87518cbc4")


