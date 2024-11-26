;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::csv_data)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'csv_data (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::CSV_DATA")
  (make-package "ROSADAPTER::CSV_DATA"))

(in-package "ROS")
;;//! \htmlinclude csv_data.msg.html


(defclass RosAdapter::csv_data
  :super ros::object
  :slots (_u4AccelTgt _u4SteeringWheel _u4ADStatus ))

(defmethod RosAdapter::csv_data
  (:init
   (&key
    ((:u4AccelTgt __u4AccelTgt) 0.0)
    ((:u4SteeringWheel __u4SteeringWheel) 0.0)
    ((:u4ADStatus __u4ADStatus) 0)
    )
   (send-super :init)
   (setq _u4AccelTgt (float __u4AccelTgt))
   (setq _u4SteeringWheel (float __u4SteeringWheel))
   (setq _u4ADStatus (round __u4ADStatus))
   self)
  (:u4AccelTgt
   (&optional __u4AccelTgt)
   (if __u4AccelTgt (setq _u4AccelTgt __u4AccelTgt)) _u4AccelTgt)
  (:u4SteeringWheel
   (&optional __u4SteeringWheel)
   (if __u4SteeringWheel (setq _u4SteeringWheel __u4SteeringWheel)) _u4SteeringWheel)
  (:u4ADStatus
   (&optional __u4ADStatus)
   (if __u4ADStatus (setq _u4ADStatus __u4ADStatus)) _u4ADStatus)
  (:serialization-length
   ()
   (+
    ;; float32 _u4AccelTgt
    4
    ;; float32 _u4SteeringWheel
    4
    ;; uint32 _u4ADStatus
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u4AccelTgt
       (sys::poke _u4AccelTgt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4SteeringWheel
       (sys::poke _u4SteeringWheel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _u4ADStatus
       (write-long _u4ADStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u4AccelTgt
     (setq _u4AccelTgt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4SteeringWheel
     (setq _u4SteeringWheel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _u4ADStatus
     (setq _u4ADStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::csv_data :md5sum-) "83835cec71cad0ec066fba30fc82c5c0")
(setf (get RosAdapter::csv_data :datatype-) "RosAdapter/csv_data")
(setf (get RosAdapter::csv_data :definition-)
      "# /** ------ AD发送给simpro的CSV数据 ------ */

float32  u4AccelTgt
float32  u4SteeringWheel
uint32   u4ADStatus
")



(provide :RosAdapter/csv_data "83835cec71cad0ec066fba30fc82c5c0")


