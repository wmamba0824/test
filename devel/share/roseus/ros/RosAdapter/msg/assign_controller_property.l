;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::assign_controller_property)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'assign_controller_property (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ASSIGN_CONTROLLER_PROPERTY")
  (make-package "ROSADAPTER::ASSIGN_CONTROLLER_PROPERTY"))

(in-package "ROS")
;;//! \htmlinclude assign_controller_property.msg.html


(defclass RosAdapter::assign_controller_property
  :super ros::object
  :slots (_au1Name _au1Value ))

(defmethod RosAdapter::assign_controller_property
  (:init
   (&key
    ((:au1Name __au1Name) "")
    ((:au1Value __au1Value) "")
    )
   (send-super :init)
   (setq _au1Name (string __au1Name))
   (setq _au1Value (string __au1Value))
   self)
  (:au1Name
   (&optional __au1Name)
   (if __au1Name (setq _au1Name __au1Name)) _au1Name)
  (:au1Value
   (&optional __au1Value)
   (if __au1Value (setq _au1Value __au1Value)) _au1Value)
  (:serialization-length
   ()
   (+
    ;; string _au1Name
    4 (length _au1Name)
    ;; string _au1Value
    4 (length _au1Value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1Name
       (write-long (length _au1Name) s) (princ _au1Name s)
     ;; string _au1Value
       (write-long (length _au1Value) s) (princ _au1Value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _au1Value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get RosAdapter::assign_controller_property :md5sum-) "8c8abeff0815c54344be4ebcd153b4cb")
(setf (get RosAdapter::assign_controller_property :datatype-) "RosAdapter/assign_controller_property")
(setf (get RosAdapter::assign_controller_property :definition-)
      "# /** ------分配控制器的属性信息 ------ */

string   au1Name
string   au1Value
")



(provide :RosAdapter/assign_controller_property "8c8abeff0815c54344be4ebcd153b4cb")


