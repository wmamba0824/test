;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::object_uion)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'object_uion (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::OBJECT_UION")
  (make-package "ROSADAPTER::OBJECT_UION"))

(in-package "ROS")
;;//! \htmlinclude object_uion.msg.html


(defclass RosAdapter::object_uion
  :super ros::object
  :slots (_sDynamicObj _sMarkObj _sSignObj ))

(defmethod RosAdapter::object_uion
  (:init
   (&key
    ((:sDynamicObj __sDynamicObj) (instance RosAdapter::dynamic_object :init))
    ((:sMarkObj __sMarkObj) (instance RosAdapter::mark_object :init))
    ((:sSignObj __sSignObj) (instance RosAdapter::sign_object :init))
    )
   (send-super :init)
   (setq _sDynamicObj __sDynamicObj)
   (setq _sMarkObj __sMarkObj)
   (setq _sSignObj __sSignObj)
   self)
  (:sDynamicObj
   (&rest __sDynamicObj)
   (if (keywordp (car __sDynamicObj))
       (send* _sDynamicObj __sDynamicObj)
     (progn
       (if __sDynamicObj (setq _sDynamicObj (car __sDynamicObj)))
       _sDynamicObj)))
  (:sMarkObj
   (&rest __sMarkObj)
   (if (keywordp (car __sMarkObj))
       (send* _sMarkObj __sMarkObj)
     (progn
       (if __sMarkObj (setq _sMarkObj (car __sMarkObj)))
       _sMarkObj)))
  (:sSignObj
   (&rest __sSignObj)
   (if (keywordp (car __sSignObj))
       (send* _sSignObj __sSignObj)
     (progn
       (if __sSignObj (setq _sSignObj (car __sSignObj)))
       _sSignObj)))
  (:serialization-length
   ()
   (+
    ;; RosAdapter/dynamic_object _sDynamicObj
    (send _sDynamicObj :serialization-length)
    ;; RosAdapter/mark_object _sMarkObj
    (send _sMarkObj :serialization-length)
    ;; RosAdapter/sign_object _sSignObj
    (send _sSignObj :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/dynamic_object _sDynamicObj
       (send _sDynamicObj :serialize s)
     ;; RosAdapter/mark_object _sMarkObj
       (send _sMarkObj :serialize s)
     ;; RosAdapter/sign_object _sSignObj
       (send _sSignObj :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/dynamic_object _sDynamicObj
     (send _sDynamicObj :deserialize buf ptr-) (incf ptr- (send _sDynamicObj :serialization-length))
   ;; RosAdapter/mark_object _sMarkObj
     (send _sMarkObj :deserialize buf ptr-) (incf ptr- (send _sMarkObj :serialization-length))
   ;; RosAdapter/sign_object _sSignObj
     (send _sSignObj :deserialize buf ptr-) (incf ptr- (send _sSignObj :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::object_uion :md5sum-) "7852172eb40c908fcc049083af8007a0")
(setf (get RosAdapter::object_uion :datatype-) "RosAdapter/object_uion")
(setf (get RosAdapter::object_uion :definition-)
      "dynamic_object sDynamicObj
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



(provide :RosAdapter/object_uion "7852172eb40c908fcc049083af8007a0")


