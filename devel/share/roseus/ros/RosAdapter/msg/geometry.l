;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::geometry)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'geometry (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::GEOMETRY")
  (make-package "ROSADAPTER::GEOMETRY"))

(in-package "ROS")
;;//! \htmlinclude geometry.msg.html


(defclass RosAdapter::geometry
  :super ros::object
  :slots (_u4DimX _u4DimY _u4DimZ _u4OffX _u4OffY _u4OffZ ))

(defmethod RosAdapter::geometry
  (:init
   (&key
    ((:u4DimX __u4DimX) 0.0)
    ((:u4DimY __u4DimY) 0.0)
    ((:u4DimZ __u4DimZ) 0.0)
    ((:u4OffX __u4OffX) 0.0)
    ((:u4OffY __u4OffY) 0.0)
    ((:u4OffZ __u4OffZ) 0.0)
    )
   (send-super :init)
   (setq _u4DimX (float __u4DimX))
   (setq _u4DimY (float __u4DimY))
   (setq _u4DimZ (float __u4DimZ))
   (setq _u4OffX (float __u4OffX))
   (setq _u4OffY (float __u4OffY))
   (setq _u4OffZ (float __u4OffZ))
   self)
  (:u4DimX
   (&optional __u4DimX)
   (if __u4DimX (setq _u4DimX __u4DimX)) _u4DimX)
  (:u4DimY
   (&optional __u4DimY)
   (if __u4DimY (setq _u4DimY __u4DimY)) _u4DimY)
  (:u4DimZ
   (&optional __u4DimZ)
   (if __u4DimZ (setq _u4DimZ __u4DimZ)) _u4DimZ)
  (:u4OffX
   (&optional __u4OffX)
   (if __u4OffX (setq _u4OffX __u4OffX)) _u4OffX)
  (:u4OffY
   (&optional __u4OffY)
   (if __u4OffY (setq _u4OffY __u4OffY)) _u4OffY)
  (:u4OffZ
   (&optional __u4OffZ)
   (if __u4OffZ (setq _u4OffZ __u4OffZ)) _u4OffZ)
  (:serialization-length
   ()
   (+
    ;; float32 _u4DimX
    4
    ;; float32 _u4DimY
    4
    ;; float32 _u4DimZ
    4
    ;; float32 _u4OffX
    4
    ;; float32 _u4OffY
    4
    ;; float32 _u4OffZ
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u4DimX
       (sys::poke _u4DimX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4DimY
       (sys::poke _u4DimY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4DimZ
       (sys::poke _u4DimZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4OffX
       (sys::poke _u4OffX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4OffY
       (sys::poke _u4OffY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4OffZ
       (sys::poke _u4OffZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u4DimX
     (setq _u4DimX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4DimY
     (setq _u4DimY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4DimZ
     (setq _u4DimZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4OffX
     (setq _u4OffX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4OffY
     (setq _u4OffY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4OffZ
     (setq _u4OffZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::geometry :md5sum-) "dd5e9e63f2d15bb3fd1e5ec306048461")
(setf (get RosAdapter::geometry :datatype-) "RosAdapter/geometry")
(setf (get RosAdapter::geometry :definition-)
      "# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ
")



(provide :RosAdapter/geometry "dd5e9e63f2d15bb3fd1e5ec306048461")


