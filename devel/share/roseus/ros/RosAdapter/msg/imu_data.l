;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::imu_data)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'imu_data (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::IMU_DATA")
  (make-package "ROSADAPTER::IMU_DATA"))

(in-package "ROS")
;;//! \htmlinclude imu_data.msg.html


(defclass RosAdapter::imu_data
  :super ros::object
  :slots (_msgcnt _u8X _u8Y _u8Z _yaw _pitch _roll ))

(defmethod RosAdapter::imu_data
  (:init
   (&key
    ((:msgcnt __msgcnt) 0)
    ((:u8X __u8X) 0.0)
    ((:u8Y __u8Y) 0.0)
    ((:u8Z __u8Z) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _msgcnt (round __msgcnt))
   (setq _u8X (float __u8X))
   (setq _u8Y (float __u8Y))
   (setq _u8Z (float __u8Z))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   self)
  (:msgcnt
   (&optional __msgcnt)
   (if __msgcnt (setq _msgcnt __msgcnt)) _msgcnt)
  (:u8X
   (&optional __u8X)
   (if __u8X (setq _u8X __u8X)) _u8X)
  (:u8Y
   (&optional __u8Y)
   (if __u8Y (setq _u8Y __u8Y)) _u8Y)
  (:u8Z
   (&optional __u8Z)
   (if __u8Z (setq _u8Z __u8Z)) _u8Z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; uint8 _msgcnt
    1
    ;; float64 _u8X
    8
    ;; float64 _u8Y
    8
    ;; float64 _u8Z
    8
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _msgcnt
       (write-byte _msgcnt s)
     ;; float64 _u8X
       (sys::poke _u8X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Y
       (sys::poke _u8Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Z
       (sys::poke _u8Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _msgcnt
     (setq _msgcnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _u8X
     (setq _u8X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Y
     (setq _u8Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Z
     (setq _u8Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get RosAdapter::imu_data :md5sum-) "4178d59bbaf80ca00b22a79f7e80938d")
(setf (get RosAdapter::imu_data :datatype-) "RosAdapter/imu_data")
(setf (get RosAdapter::imu_data :definition-)
      "uint8         msgcnt
float64       u8X
float64       u8Y
float64       u8Z
float64       yaw
float64       pitch
float64       roll
")



(provide :RosAdapter/imu_data "4178d59bbaf80ca00b22a79f7e80938d")


