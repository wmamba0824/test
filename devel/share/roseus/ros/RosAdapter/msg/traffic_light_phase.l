;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::traffic_light_phase)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'traffic_light_phase (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::TRAFFIC_LIGHT_PHASE")
  (make-package "ROSADAPTER::TRAFFIC_LIGHT_PHASE"))

(in-package "ROS")
;;//! \htmlinclude traffic_light_phase.msg.html


(defclass RosAdapter::traffic_light_phase
  :super ros::object
  :slots (_u4Duration _u1Status ))

(defmethod RosAdapter::traffic_light_phase
  (:init
   (&key
    ((:u4Duration __u4Duration) 0.0)
    ((:u1Status __u1Status) 0)
    )
   (send-super :init)
   (setq _u4Duration (float __u4Duration))
   (setq _u1Status (round __u1Status))
   self)
  (:u4Duration
   (&optional __u4Duration)
   (if __u4Duration (setq _u4Duration __u4Duration)) _u4Duration)
  (:u1Status
   (&optional __u1Status)
   (if __u1Status (setq _u1Status __u1Status)) _u1Status)
  (:serialization-length
   ()
   (+
    ;; float32 _u4Duration
    4
    ;; uint8 _u1Status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u4Duration
       (sys::poke _u4Duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _u1Status
       (write-byte _u1Status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u4Duration
     (setq _u4Duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _u1Status
     (setq _u1Status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::traffic_light_phase :md5sum-) "b1ac58ef8e89d4655dd7a1a78a5c64d9")
(setf (get RosAdapter::traffic_light_phase :datatype-) "RosAdapter/traffic_light_phase")
(setf (get RosAdapter::traffic_light_phase :definition-)
      "# /** ------ 交通灯相位信息 ------ */

float32     u4Duration
uint8       u1Status   
")



(provide :RosAdapter/traffic_light_phase "b1ac58ef8e89d4655dd7a1a78a5c64d9")


