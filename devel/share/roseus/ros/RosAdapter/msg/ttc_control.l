;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::ttc_control)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'ttc_control (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::TTC_CONTROL")
  (make-package "ROSADAPTER::TTC_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude ttc_control.msg.html


(defclass RosAdapter::ttc_control
  :super ros::object
  :slots (_u4Status ))

(defmethod RosAdapter::ttc_control
  (:init
   (&key
    ((:u4Status __u4Status) 0)
    )
   (send-super :init)
   (setq _u4Status (round __u4Status))
   self)
  (:u4Status
   (&optional __u4Status)
   (if __u4Status (setq _u4Status __u4Status)) _u4Status)
  (:serialization-length
   ()
   (+
    ;; uint32 _u4Status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4Status
       (write-long _u4Status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4Status
     (setq _u4Status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::ttc_control :md5sum-) "4a9adebec45df2e6ca13379191df618a")
(setf (get RosAdapter::ttc_control :datatype-) "RosAdapter/ttc_control")
(setf (get RosAdapter::ttc_control :definition-)
      "uint32  u4Status
")



(provide :RosAdapter/ttc_control "4a9adebec45df2e6ca13379191df618a")


