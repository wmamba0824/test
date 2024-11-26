;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::mark_object)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'mark_object (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MARK_OBJECT")
  (make-package "ROSADAPTER::MARK_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude mark_object.msg.html


(defclass RosAdapter::mark_object
  :super ros::object
  :slots (_au8RoadMarkCoeffL _au8RoadMarkCoeffR ))

(defmethod RosAdapter::mark_object
  (:init
   (&key
    ((:au8RoadMarkCoeffL __au8RoadMarkCoeffL) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:au8RoadMarkCoeffR __au8RoadMarkCoeffR) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _au8RoadMarkCoeffL __au8RoadMarkCoeffL)
   (setq _au8RoadMarkCoeffR __au8RoadMarkCoeffR)
   self)
  (:au8RoadMarkCoeffL
   (&optional __au8RoadMarkCoeffL)
   (if __au8RoadMarkCoeffL (setq _au8RoadMarkCoeffL __au8RoadMarkCoeffL)) _au8RoadMarkCoeffL)
  (:au8RoadMarkCoeffR
   (&optional __au8RoadMarkCoeffR)
   (if __au8RoadMarkCoeffR (setq _au8RoadMarkCoeffR __au8RoadMarkCoeffR)) _au8RoadMarkCoeffR)
  (:serialization-length
   ()
   (+
    ;; float64[] _au8RoadMarkCoeffL
    (* 8    (length _au8RoadMarkCoeffL)) 4
    ;; float64[] _au8RoadMarkCoeffR
    (* 8    (length _au8RoadMarkCoeffR)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _au8RoadMarkCoeffL
     (write-long (length _au8RoadMarkCoeffL) s)
     (dotimes (i (length _au8RoadMarkCoeffL))
       (sys::poke (elt _au8RoadMarkCoeffL i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _au8RoadMarkCoeffR
     (write-long (length _au8RoadMarkCoeffR) s)
     (dotimes (i (length _au8RoadMarkCoeffR))
       (sys::poke (elt _au8RoadMarkCoeffR i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _au8RoadMarkCoeffL
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au8RoadMarkCoeffL (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _au8RoadMarkCoeffL i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _au8RoadMarkCoeffR
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au8RoadMarkCoeffR (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _au8RoadMarkCoeffR i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get RosAdapter::mark_object :md5sum-) "e24fb0ae50c06f023e6ce66991b164da")
(setf (get RosAdapter::mark_object :datatype-) "RosAdapter/mark_object")
(setf (get RosAdapter::mark_object :definition-)
      "# 车道线

float64[]	 au8RoadMarkCoeffL
float64[]	 au8RoadMarkCoeffR
")



(provide :RosAdapter/mark_object "e24fb0ae50c06f023e6ce66991b164da")


