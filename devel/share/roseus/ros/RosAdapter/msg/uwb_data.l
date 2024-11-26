;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::uwb_data)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'uwb_data (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::UWB_DATA")
  (make-package "ROSADAPTER::UWB_DATA"))

(in-package "ROS")
;;//! \htmlinclude uwb_data.msg.html


(defclass RosAdapter::uwb_data
  :super ros::object
  :slots (_msgcnt _u8x _u8y _u8z ))

(defmethod RosAdapter::uwb_data
  (:init
   (&key
    ((:msgcnt __msgcnt) 0)
    ((:u8x __u8x) 0.0)
    ((:u8y __u8y) 0.0)
    ((:u8z __u8z) 0.0)
    )
   (send-super :init)
   (setq _msgcnt (round __msgcnt))
   (setq _u8x (float __u8x))
   (setq _u8y (float __u8y))
   (setq _u8z (float __u8z))
   self)
  (:msgcnt
   (&optional __msgcnt)
   (if __msgcnt (setq _msgcnt __msgcnt)) _msgcnt)
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
    ;; uint8 _msgcnt
    1
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
     ;; uint8 _msgcnt
       (write-byte _msgcnt s)
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
   ;; uint8 _msgcnt
     (setq _msgcnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _u8x
     (setq _u8x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8y
     (setq _u8y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8z
     (setq _u8z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get RosAdapter::uwb_data :md5sum-) "2a9d6b1915268c02dadd546cc26931a6")
(setf (get RosAdapter::uwb_data :datatype-) "RosAdapter/uwb_data")
(setf (get RosAdapter::uwb_data :definition-)
      "uint8         msgcnt
float64       u8x
float64       u8y
float64       u8z
")



(provide :RosAdapter/uwb_data "2a9d6b1915268c02dadd546cc26931a6")


