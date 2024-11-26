;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::point3d)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'point3d (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::POINT3D")
  (make-package "ROSADAPTER::POINT3D"))

(in-package "ROS")
;;//! \htmlinclude point3d.msg.html


(defclass RosAdapter::point3d
  :super ros::object
  :slots (_u8x _u8y _u8z ))

(defmethod RosAdapter::point3d
  (:init
   (&key
    ((:u8x __u8x) 0.0)
    ((:u8y __u8y) 0.0)
    ((:u8z __u8z) 0.0)
    )
   (send-super :init)
   (setq _u8x (float __u8x))
   (setq _u8y (float __u8y))
   (setq _u8z (float __u8z))
   self)
  (:u8x
   (&optional __u8x)
   (if __u8x (setq _u8x __u8x)) _u8x)
  (:u8y
   (&optional __u8y)
   (if __u8y (setq _u8y __u8y)) _u8y)
  (:u8z
   (&optional __u8z)
   (if __u8z (setq _u8z __u8z)) _u8z)
  (:serialization-length
   ()
   (+
    ;; float64 _u8x
    8
    ;; float64 _u8y
    8
    ;; float64 _u8z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u8x
       (sys::poke _u8x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8y
       (sys::poke _u8y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8z
       (sys::poke _u8z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8x
     (setq _u8x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8y
     (setq _u8y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8z
     (setq _u8z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get RosAdapter::point3d :md5sum-) "8ef76082ef9da5b9c3f0694c6fbb0753")
(setf (get RosAdapter::point3d :datatype-) "RosAdapter/point3d")
(setf (get RosAdapter::point3d :definition-)
      "float64      u8x
float64      u8y
float64      u8z
")



(provide :RosAdapter/point3d "8ef76082ef9da5b9c3f0694c6fbb0753")


