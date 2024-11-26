;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::sign_object)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'sign_object (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::SIGN_OBJECT")
  (make-package "ROSADAPTER::SIGN_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude sign_object.msg.html


(defclass RosAdapter::sign_object
  :super ros::object
  :slots (_u8Dist _u8NearestDist _u8TrafficSignDistX _u8TrafficSignDistY _sSensorPos _sNearestSensorPos _u1TrafficSignType ))

(defmethod RosAdapter::sign_object
  (:init
   (&key
    ((:u8Dist __u8Dist) 0.0)
    ((:u8NearestDist __u8NearestDist) 0.0)
    ((:u8TrafficSignDistX __u8TrafficSignDistX) 0.0)
    ((:u8TrafficSignDistY __u8TrafficSignDistY) 0.0)
    ((:sSensorPos __sSensorPos) (instance RosAdapter::coord :init))
    ((:sNearestSensorPos __sNearestSensorPos) (instance RosAdapter::coord :init))
    ((:u1TrafficSignType __u1TrafficSignType) 0)
    )
   (send-super :init)
   (setq _u8Dist (float __u8Dist))
   (setq _u8NearestDist (float __u8NearestDist))
   (setq _u8TrafficSignDistX (float __u8TrafficSignDistX))
   (setq _u8TrafficSignDistY (float __u8TrafficSignDistY))
   (setq _sSensorPos __sSensorPos)
   (setq _sNearestSensorPos __sNearestSensorPos)
   (setq _u1TrafficSignType (round __u1TrafficSignType))
   self)
  (:u8Dist
   (&optional __u8Dist)
   (if __u8Dist (setq _u8Dist __u8Dist)) _u8Dist)
  (:u8NearestDist
   (&optional __u8NearestDist)
   (if __u8NearestDist (setq _u8NearestDist __u8NearestDist)) _u8NearestDist)
  (:u8TrafficSignDistX
   (&optional __u8TrafficSignDistX)
   (if __u8TrafficSignDistX (setq _u8TrafficSignDistX __u8TrafficSignDistX)) _u8TrafficSignDistX)
  (:u8TrafficSignDistY
   (&optional __u8TrafficSignDistY)
   (if __u8TrafficSignDistY (setq _u8TrafficSignDistY __u8TrafficSignDistY)) _u8TrafficSignDistY)
  (:sSensorPos
   (&rest __sSensorPos)
   (if (keywordp (car __sSensorPos))
       (send* _sSensorPos __sSensorPos)
     (progn
       (if __sSensorPos (setq _sSensorPos (car __sSensorPos)))
       _sSensorPos)))
  (:sNearestSensorPos
   (&rest __sNearestSensorPos)
   (if (keywordp (car __sNearestSensorPos))
       (send* _sNearestSensorPos __sNearestSensorPos)
     (progn
       (if __sNearestSensorPos (setq _sNearestSensorPos (car __sNearestSensorPos)))
       _sNearestSensorPos)))
  (:u1TrafficSignType
   (&optional __u1TrafficSignType)
   (if __u1TrafficSignType (setq _u1TrafficSignType __u1TrafficSignType)) _u1TrafficSignType)
  (:serialization-length
   ()
   (+
    ;; float64 _u8Dist
    8
    ;; float64 _u8NearestDist
    8
    ;; float64 _u8TrafficSignDistX
    8
    ;; float64 _u8TrafficSignDistY
    8
    ;; RosAdapter/coord _sSensorPos
    (send _sSensorPos :serialization-length)
    ;; RosAdapter/coord _sNearestSensorPos
    (send _sNearestSensorPos :serialization-length)
    ;; uint8 _u1TrafficSignType
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u8Dist
       (sys::poke _u8Dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8NearestDist
       (sys::poke _u8NearestDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8TrafficSignDistX
       (sys::poke _u8TrafficSignDistX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8TrafficSignDistY
       (sys::poke _u8TrafficSignDistY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; RosAdapter/coord _sSensorPos
       (send _sSensorPos :serialize s)
     ;; RosAdapter/coord _sNearestSensorPos
       (send _sNearestSensorPos :serialize s)
     ;; uint8 _u1TrafficSignType
       (write-byte _u1TrafficSignType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8Dist
     (setq _u8Dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8NearestDist
     (setq _u8NearestDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8TrafficSignDistX
     (setq _u8TrafficSignDistX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8TrafficSignDistY
     (setq _u8TrafficSignDistY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; RosAdapter/coord _sSensorPos
     (send _sSensorPos :deserialize buf ptr-) (incf ptr- (send _sSensorPos :serialization-length))
   ;; RosAdapter/coord _sNearestSensorPos
     (send _sNearestSensorPos :deserialize buf ptr-) (incf ptr- (send _sNearestSensorPos :serialization-length))
   ;; uint8 _u1TrafficSignType
     (setq _u1TrafficSignType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::sign_object :md5sum-) "126cf5cd9bff85cc03e9822c09ab25cf")
(setf (get RosAdapter::sign_object :datatype-) "RosAdapter/sign_object")
(setf (get RosAdapter::sign_object :definition-)
      "# 交通标志

float64   u8Dist
float64   u8NearestDist
float64   u8TrafficSignDistX
float64   u8TrafficSignDistY
coord     sSensorPos
coord     sNearestSensorPos
uint8     u1TrafficSignType
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
")



(provide :RosAdapter/sign_object "126cf5cd9bff85cc03e9822c09ab25cf")


