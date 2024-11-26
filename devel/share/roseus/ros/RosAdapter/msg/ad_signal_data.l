;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::ad_signal_data)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'ad_signal_data (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::AD_SIGNAL_DATA")
  (make-package "ROSADAPTER::AD_SIGNAL_DATA"))

(in-package "ROS")
;;//! \htmlinclude ad_signal_data.msg.html


(defclass RosAdapter::ad_signal_data
  :super ros::object
  :slots (_au1SignalName _u8SignalValue ))

(defmethod RosAdapter::ad_signal_data
  (:init
   (&key
    ((:au1SignalName __au1SignalName) "")
    ((:u8SignalValue __u8SignalValue) 0.0)
    )
   (send-super :init)
   (setq _au1SignalName (string __au1SignalName))
   (setq _u8SignalValue (float __u8SignalValue))
   self)
  (:au1SignalName
   (&optional __au1SignalName)
   (if __au1SignalName (setq _au1SignalName __au1SignalName)) _au1SignalName)
  (:u8SignalValue
   (&optional __u8SignalValue)
   (if __u8SignalValue (setq _u8SignalValue __u8SignalValue)) _u8SignalValue)
  (:serialization-length
   ()
   (+
    ;; string _au1SignalName
    4 (length _au1SignalName)
    ;; float64 _u8SignalValue
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1SignalName
       (write-long (length _au1SignalName) s) (princ _au1SignalName s)
     ;; float64 _u8SignalValue
       (sys::poke _u8SignalValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1SignalName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1SignalName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _u8SignalValue
     (setq _u8SignalValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get RosAdapter::ad_signal_data :md5sum-) "8ff39b1451a3fcf44b37435ff12fa37b")
(setf (get RosAdapter::ad_signal_data :datatype-) "RosAdapter/ad_signal_data")
(setf (get RosAdapter::ad_signal_data :definition-)
      "string      au1SignalName
float64     u8SignalValue
")



(provide :RosAdapter/ad_signal_data "8ff39b1451a3fcf44b37435ff12fa37b")


