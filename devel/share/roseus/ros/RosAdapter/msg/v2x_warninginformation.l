;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::v2x_warninginformation)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'v2x_warninginformation (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::V2X_WARNINGINFORMATION")
  (make-package "ROSADAPTER::V2X_WARNINGINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude v2x_warninginformation.msg.html


(defclass RosAdapter::v2x_warninginformation
  :super ros::object
  :slots (_u4Type ))

(defmethod RosAdapter::v2x_warninginformation
  (:init
   (&key
    ((:u4Type __u4Type) 0)
    )
   (send-super :init)
   (setq _u4Type (round __u4Type))
   self)
  (:u4Type
   (&optional __u4Type)
   (if __u4Type (setq _u4Type __u4Type)) _u4Type)
  (:serialization-length
   ()
   (+
    ;; uint32 _u4Type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4Type
       (write-long _u4Type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4Type
     (setq _u4Type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::v2x_warninginformation :md5sum-) "d0ebee8563c45127e3636d2e914f1c30")
(setf (get RosAdapter::v2x_warninginformation :datatype-) "RosAdapter/v2x_warninginformation")
(setf (get RosAdapter::v2x_warninginformation :definition-)
      "# /** ------ V2X 告警信息 ------ */

uint32 u4Type
")



(provide :RosAdapter/v2x_warninginformation "d0ebee8563c45127e3636d2e914f1c30")


