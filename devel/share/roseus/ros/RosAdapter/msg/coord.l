;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::coord)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'coord (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::COORD")
  (make-package "ROSADAPTER::COORD"))

(in-package "ROS")
;;//! \htmlinclude coord.msg.html


(defclass RosAdapter::coord
  :super ros::object
  :slots (_u8X _u8Y _u8Z _u4H _u4P _u4R _u1Type ))

(defmethod RosAdapter::coord
  (:init
   (&key
    ((:u8X __u8X) 0.0)
    ((:u8Y __u8Y) 0.0)
    ((:u8Z __u8Z) 0.0)
    ((:u4H __u4H) 0.0)
    ((:u4P __u4P) 0.0)
    ((:u4R __u4R) 0.0)
    ((:u1Type __u1Type) 0)
    )
   (send-super :init)
   (setq _u8X (float __u8X))
   (setq _u8Y (float __u8Y))
   (setq _u8Z (float __u8Z))
   (setq _u4H (float __u4H))
   (setq _u4P (float __u4P))
   (setq _u4R (float __u4R))
   (setq _u1Type (round __u1Type))
   self)
  (:u8X
   (&optional __u8X)
   (if __u8X (setq _u8X __u8X)) _u8X)
  (:u8Y
   (&optional __u8Y)
   (if __u8Y (setq _u8Y __u8Y)) _u8Y)
  (:u8Z
   (&optional __u8Z)
   (if __u8Z (setq _u8Z __u8Z)) _u8Z)
  (:u4H
   (&optional __u4H)
   (if __u4H (setq _u4H __u4H)) _u4H)
  (:u4P
   (&optional __u4P)
   (if __u4P (setq _u4P __u4P)) _u4P)
  (:u4R
   (&optional __u4R)
   (if __u4R (setq _u4R __u4R)) _u4R)
  (:u1Type
   (&optional __u1Type)
   (if __u1Type (setq _u1Type __u1Type)) _u1Type)
  (:serialization-length
   ()
   (+
    ;; float64 _u8X
    8
    ;; float64 _u8Y
    8
    ;; float64 _u8Z
    8
    ;; float32 _u4H
    4
    ;; float32 _u4P
    4
    ;; float32 _u4R
    4
    ;; uint8 _u1Type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u8X
       (sys::poke _u8X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Y
       (sys::poke _u8Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Z
       (sys::poke _u8Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _u4H
       (sys::poke _u4H (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4P
       (sys::poke _u4P (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4R
       (sys::poke _u4R (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _u1Type
       (write-byte _u1Type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8X
     (setq _u8X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Y
     (setq _u8Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Z
     (setq _u8Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _u4H
     (setq _u4H (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4P
     (setq _u4P (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4R
     (setq _u4R (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _u1Type
     (setq _u1Type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::coord :md5sum-) "b91c4545f116a70c5f09e1d7ccb453d9")
(setf (get RosAdapter::coord :datatype-) "RosAdapter/coord")
(setf (get RosAdapter::coord :definition-)
      "# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type
")



(provide :RosAdapter/coord "b91c4545f116a70c5f09e1d7ccb453d9")


