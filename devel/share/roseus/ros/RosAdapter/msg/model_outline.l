;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::model_outline)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'model_outline (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MODEL_OUTLINE")
  (make-package "ROSADAPTER::MODEL_OUTLINE"))

(in-package "ROS")
;;//! \htmlinclude model_outline.msg.html


(defclass RosAdapter::model_outline
  :super ros::object
  :slots (_au1ModelName _au8OutlinePoints ))

(defmethod RosAdapter::model_outline
  (:init
   (&key
    ((:au1ModelName __au1ModelName) "")
    ((:au8OutlinePoints __au8OutlinePoints) ())
    )
   (send-super :init)
   (setq _au1ModelName (string __au1ModelName))
   (setq _au8OutlinePoints __au8OutlinePoints)
   self)
  (:au1ModelName
   (&optional __au1ModelName)
   (if __au1ModelName (setq _au1ModelName __au1ModelName)) _au1ModelName)
  (:au8OutlinePoints
   (&rest __au8OutlinePoints)
   (if (keywordp (car __au8OutlinePoints))
       (send* _au8OutlinePoints __au8OutlinePoints)
     (progn
       (if __au8OutlinePoints (setq _au8OutlinePoints (car __au8OutlinePoints)))
       _au8OutlinePoints)))
  (:serialization-length
   ()
   (+
    ;; string _au1ModelName
    4 (length _au1ModelName)
    ;; RosAdapter/double_array[] _au8OutlinePoints
    (apply #'+ (send-all _au8OutlinePoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1ModelName
       (write-long (length _au1ModelName) s) (princ _au1ModelName s)
     ;; RosAdapter/double_array[] _au8OutlinePoints
     (write-long (length _au8OutlinePoints) s)
     (dolist (elem _au8OutlinePoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1ModelName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1ModelName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; RosAdapter/double_array[] _au8OutlinePoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au8OutlinePoints (let (r) (dotimes (i n) (push (instance RosAdapter::double_array :init) r)) r))
     (dolist (elem- _au8OutlinePoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get RosAdapter::model_outline :md5sum-) "21a3ac0ff6ce066332bb8e9a1448b5b3")
(setf (get RosAdapter::model_outline :datatype-) "RosAdapter/model_outline")
(setf (get RosAdapter::model_outline :definition-)
      "string                au1ModelName
double_array[]        au8OutlinePoints    
================================================================================
MSG: RosAdapter/double_array
float64[]  data
")



(provide :RosAdapter/model_outline "21a3ac0ff6ce066332bb8e9a1448b5b3")


