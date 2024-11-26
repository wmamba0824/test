;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::dynamic_object)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'dynamic_object (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::DYNAMIC_OBJECT")
  (make-package "ROSADAPTER::DYNAMIC_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude dynamic_object.msg.html


(defclass RosAdapter::dynamic_object
  :super ros::object
  :slots (_u8Dist _u8NearestDist _u8RelativeVelx _u8RelativeVely _u8RelativeAccx _u8RelativeAccy _u8HeadingAngle _sSensorPos _sNearestSensorPos _sSenNearestPosXL _sSenNearestPosXR _sSenNearestPosYL _sSenNearestPosYR _sBoundingBox _u1MovingSt ))

(defmethod RosAdapter::dynamic_object
  (:init
   (&key
    ((:u8Dist __u8Dist) 0.0)
    ((:u8NearestDist __u8NearestDist) 0.0)
    ((:u8RelativeVelx __u8RelativeVelx) 0.0)
    ((:u8RelativeVely __u8RelativeVely) 0.0)
    ((:u8RelativeAccx __u8RelativeAccx) 0.0)
    ((:u8RelativeAccy __u8RelativeAccy) 0.0)
    ((:u8HeadingAngle __u8HeadingAngle) 0.0)
    ((:sSensorPos __sSensorPos) (instance RosAdapter::coord :init))
    ((:sNearestSensorPos __sNearestSensorPos) (instance RosAdapter::coord :init))
    ((:sSenNearestPosXL __sSenNearestPosXL) (instance RosAdapter::coord :init))
    ((:sSenNearestPosXR __sSenNearestPosXR) (instance RosAdapter::coord :init))
    ((:sSenNearestPosYL __sSenNearestPosYL) (instance RosAdapter::coord :init))
    ((:sSenNearestPosYR __sSenNearestPosYR) (instance RosAdapter::coord :init))
    ((:sBoundingBox __sBoundingBox) ())
    ((:u1MovingSt __u1MovingSt) 0)
    )
   (send-super :init)
   (setq _u8Dist (float __u8Dist))
   (setq _u8NearestDist (float __u8NearestDist))
   (setq _u8RelativeVelx (float __u8RelativeVelx))
   (setq _u8RelativeVely (float __u8RelativeVely))
   (setq _u8RelativeAccx (float __u8RelativeAccx))
   (setq _u8RelativeAccy (float __u8RelativeAccy))
   (setq _u8HeadingAngle (float __u8HeadingAngle))
   (setq _sSensorPos __sSensorPos)
   (setq _sNearestSensorPos __sNearestSensorPos)
   (setq _sSenNearestPosXL __sSenNearestPosXL)
   (setq _sSenNearestPosXR __sSenNearestPosXR)
   (setq _sSenNearestPosYL __sSenNearestPosYL)
   (setq _sSenNearestPosYR __sSenNearestPosYR)
   (setq _sBoundingBox __sBoundingBox)
   (setq _u1MovingSt (round __u1MovingSt))
   self)
  (:u8Dist
   (&optional __u8Dist)
   (if __u8Dist (setq _u8Dist __u8Dist)) _u8Dist)
  (:u8NearestDist
   (&optional __u8NearestDist)
   (if __u8NearestDist (setq _u8NearestDist __u8NearestDist)) _u8NearestDist)
  (:u8RelativeVelx
   (&optional __u8RelativeVelx)
   (if __u8RelativeVelx (setq _u8RelativeVelx __u8RelativeVelx)) _u8RelativeVelx)
  (:u8RelativeVely
   (&optional __u8RelativeVely)
   (if __u8RelativeVely (setq _u8RelativeVely __u8RelativeVely)) _u8RelativeVely)
  (:u8RelativeAccx
   (&optional __u8RelativeAccx)
   (if __u8RelativeAccx (setq _u8RelativeAccx __u8RelativeAccx)) _u8RelativeAccx)
  (:u8RelativeAccy
   (&optional __u8RelativeAccy)
   (if __u8RelativeAccy (setq _u8RelativeAccy __u8RelativeAccy)) _u8RelativeAccy)
  (:u8HeadingAngle
   (&optional __u8HeadingAngle)
   (if __u8HeadingAngle (setq _u8HeadingAngle __u8HeadingAngle)) _u8HeadingAngle)
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
  (:sSenNearestPosXL
   (&rest __sSenNearestPosXL)
   (if (keywordp (car __sSenNearestPosXL))
       (send* _sSenNearestPosXL __sSenNearestPosXL)
     (progn
       (if __sSenNearestPosXL (setq _sSenNearestPosXL (car __sSenNearestPosXL)))
       _sSenNearestPosXL)))
  (:sSenNearestPosXR
   (&rest __sSenNearestPosXR)
   (if (keywordp (car __sSenNearestPosXR))
       (send* _sSenNearestPosXR __sSenNearestPosXR)
     (progn
       (if __sSenNearestPosXR (setq _sSenNearestPosXR (car __sSenNearestPosXR)))
       _sSenNearestPosXR)))
  (:sSenNearestPosYL
   (&rest __sSenNearestPosYL)
   (if (keywordp (car __sSenNearestPosYL))
       (send* _sSenNearestPosYL __sSenNearestPosYL)
     (progn
       (if __sSenNearestPosYL (setq _sSenNearestPosYL (car __sSenNearestPosYL)))
       _sSenNearestPosYL)))
  (:sSenNearestPosYR
   (&rest __sSenNearestPosYR)
   (if (keywordp (car __sSenNearestPosYR))
       (send* _sSenNearestPosYR __sSenNearestPosYR)
     (progn
       (if __sSenNearestPosYR (setq _sSenNearestPosYR (car __sSenNearestPosYR)))
       _sSenNearestPosYR)))
  (:sBoundingBox
   (&rest __sBoundingBox)
   (if (keywordp (car __sBoundingBox))
       (send* _sBoundingBox __sBoundingBox)
     (progn
       (if __sBoundingBox (setq _sBoundingBox (car __sBoundingBox)))
       _sBoundingBox)))
  (:u1MovingSt
   (&optional __u1MovingSt)
   (if __u1MovingSt (setq _u1MovingSt __u1MovingSt)) _u1MovingSt)
  (:serialization-length
   ()
   (+
    ;; float64 _u8Dist
    8
    ;; float64 _u8NearestDist
    8
    ;; float64 _u8RelativeVelx
    8
    ;; float64 _u8RelativeVely
    8
    ;; float64 _u8RelativeAccx
    8
    ;; float64 _u8RelativeAccy
    8
    ;; float64 _u8HeadingAngle
    8
    ;; RosAdapter/coord _sSensorPos
    (send _sSensorPos :serialization-length)
    ;; RosAdapter/coord _sNearestSensorPos
    (send _sNearestSensorPos :serialization-length)
    ;; RosAdapter/coord _sSenNearestPosXL
    (send _sSenNearestPosXL :serialization-length)
    ;; RosAdapter/coord _sSenNearestPosXR
    (send _sSenNearestPosXR :serialization-length)
    ;; RosAdapter/coord _sSenNearestPosYL
    (send _sSenNearestPosYL :serialization-length)
    ;; RosAdapter/coord _sSenNearestPosYR
    (send _sSenNearestPosYR :serialization-length)
    ;; RosAdapter/point3d[] _sBoundingBox
    (apply #'+ (send-all _sBoundingBox :serialization-length)) 4
    ;; uint8 _u1MovingSt
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
     ;; float64 _u8RelativeVelx
       (sys::poke _u8RelativeVelx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8RelativeVely
       (sys::poke _u8RelativeVely (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8RelativeAccx
       (sys::poke _u8RelativeAccx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8RelativeAccy
       (sys::poke _u8RelativeAccy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8HeadingAngle
       (sys::poke _u8HeadingAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; RosAdapter/coord _sSensorPos
       (send _sSensorPos :serialize s)
     ;; RosAdapter/coord _sNearestSensorPos
       (send _sNearestSensorPos :serialize s)
     ;; RosAdapter/coord _sSenNearestPosXL
       (send _sSenNearestPosXL :serialize s)
     ;; RosAdapter/coord _sSenNearestPosXR
       (send _sSenNearestPosXR :serialize s)
     ;; RosAdapter/coord _sSenNearestPosYL
       (send _sSenNearestPosYL :serialize s)
     ;; RosAdapter/coord _sSenNearestPosYR
       (send _sSenNearestPosYR :serialize s)
     ;; RosAdapter/point3d[] _sBoundingBox
     (write-long (length _sBoundingBox) s)
     (dolist (elem _sBoundingBox)
       (send elem :serialize s)
       )
     ;; uint8 _u1MovingSt
       (write-byte _u1MovingSt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8Dist
     (setq _u8Dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8NearestDist
     (setq _u8NearestDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8RelativeVelx
     (setq _u8RelativeVelx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8RelativeVely
     (setq _u8RelativeVely (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8RelativeAccx
     (setq _u8RelativeAccx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8RelativeAccy
     (setq _u8RelativeAccy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8HeadingAngle
     (setq _u8HeadingAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; RosAdapter/coord _sSensorPos
     (send _sSensorPos :deserialize buf ptr-) (incf ptr- (send _sSensorPos :serialization-length))
   ;; RosAdapter/coord _sNearestSensorPos
     (send _sNearestSensorPos :deserialize buf ptr-) (incf ptr- (send _sNearestSensorPos :serialization-length))
   ;; RosAdapter/coord _sSenNearestPosXL
     (send _sSenNearestPosXL :deserialize buf ptr-) (incf ptr- (send _sSenNearestPosXL :serialization-length))
   ;; RosAdapter/coord _sSenNearestPosXR
     (send _sSenNearestPosXR :deserialize buf ptr-) (incf ptr- (send _sSenNearestPosXR :serialization-length))
   ;; RosAdapter/coord _sSenNearestPosYL
     (send _sSenNearestPosYL :deserialize buf ptr-) (incf ptr- (send _sSenNearestPosYL :serialization-length))
   ;; RosAdapter/coord _sSenNearestPosYR
     (send _sSenNearestPosYR :deserialize buf ptr-) (incf ptr- (send _sSenNearestPosYR :serialization-length))
   ;; RosAdapter/point3d[] _sBoundingBox
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sBoundingBox (let (r) (dotimes (i n) (push (instance RosAdapter::point3d :init) r)) r))
     (dolist (elem- _sBoundingBox)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _u1MovingSt
     (setq _u1MovingSt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::dynamic_object :md5sum-) "f0fca4830c1def89864a68dc2897f16f")
(setf (get RosAdapter::dynamic_object :datatype-) "RosAdapter/dynamic_object")
(setf (get RosAdapter::dynamic_object :definition-)
      "# /** ------ 传感器探测到的对象信息 ------ */

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
")



(provide :RosAdapter/dynamic_object "f0fca4830c1def89864a68dc2897f16f")


