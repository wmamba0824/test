;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::assign_controller)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'assign_controller (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ASSIGN_CONTROLLER")
  (make-package "ROSADAPTER::ASSIGN_CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude assign_controller.msg.html


(defclass RosAdapter::assign_controller
  :super ros::object
  :slots (_au1ControllerName _u4ObjectId _u4PropertyNum _properties ))

(defmethod RosAdapter::assign_controller
  (:init
   (&key
    ((:au1ControllerName __au1ControllerName) "")
    ((:u4ObjectId __u4ObjectId) 0)
    ((:u4PropertyNum __u4PropertyNum) 0)
    ((:properties __properties) ())
    )
   (send-super :init)
   (setq _au1ControllerName (string __au1ControllerName))
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _u4PropertyNum (round __u4PropertyNum))
   (setq _properties __properties)
   self)
  (:au1ControllerName
   (&optional __au1ControllerName)
   (if __au1ControllerName (setq _au1ControllerName __au1ControllerName)) _au1ControllerName)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:u4PropertyNum
   (&optional __u4PropertyNum)
   (if __u4PropertyNum (setq _u4PropertyNum __u4PropertyNum)) _u4PropertyNum)
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:serialization-length
   ()
   (+
    ;; string _au1ControllerName
    4 (length _au1ControllerName)
    ;; uint32 _u4ObjectId
    4
    ;; uint32 _u4PropertyNum
    4
    ;; RosAdapter/assign_controller_property[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1ControllerName
       (write-long (length _au1ControllerName) s) (princ _au1ControllerName s)
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; uint32 _u4PropertyNum
       (write-long _u4PropertyNum s)
     ;; RosAdapter/assign_controller_property[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1ControllerName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1ControllerName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4PropertyNum
     (setq _u4PropertyNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; RosAdapter/assign_controller_property[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (let (r) (dotimes (i n) (push (instance RosAdapter::assign_controller_property :init) r)) r))
     (dolist (elem- _properties)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get RosAdapter::assign_controller :md5sum-) "b69f794058ba5b23b8c59db3ddbf21fb")
(setf (get RosAdapter::assign_controller :datatype-) "RosAdapter/assign_controller")
(setf (get RosAdapter::assign_controller :definition-)
      "# /** ------分配控制器 ------ */

string                               au1ControllerName
uint32                               u4ObjectId
uint32                               u4PropertyNum
assign_controller_property[]         properties
================================================================================
MSG: RosAdapter/assign_controller_property
# /** ------分配控制器的属性信息 ------ */

string   au1Name
string   au1Value
")



(provide :RosAdapter/assign_controller "b69f794058ba5b23b8c59db3ddbf21fb")


