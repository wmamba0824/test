;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::custom_command)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'custom_command (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::CUSTOM_COMMAND")
  (make-package "ROSADAPTER::CUSTOM_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude custom_command.msg.html


(defclass RosAdapter::custom_command
  :super ros::object
  :slots (_au1Type _au1Command _u4ObjectId ))

(defmethod RosAdapter::custom_command
  (:init
   (&key
    ((:au1Type __au1Type) "")
    ((:au1Command __au1Command) "")
    ((:u4ObjectId __u4ObjectId) 0)
    )
   (send-super :init)
   (setq _au1Type (string __au1Type))
   (setq _au1Command (string __au1Command))
   (setq _u4ObjectId (round __u4ObjectId))
   self)
  (:au1Type
   (&optional __au1Type)
   (if __au1Type (setq _au1Type __au1Type)) _au1Type)
  (:au1Command
   (&optional __au1Command)
   (if __au1Command (setq _au1Command __au1Command)) _au1Command)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:serialization-length
   ()
   (+
    ;; string _au1Type
    4 (length _au1Type)
    ;; string _au1Command
    4 (length _au1Command)
    ;; uint32 _u4ObjectId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1Type
       (write-long (length _au1Type) s) (princ _au1Type s)
     ;; string _au1Command
       (write-long (length _au1Command) s) (princ _au1Command s)
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1Type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _au1Command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::custom_command :md5sum-) "90841668178727efd240bbb0c9edb09b")
(setf (get RosAdapter::custom_command :datatype-) "RosAdapter/custom_command")
(setf (get RosAdapter::custom_command :definition-)
      "# /** ------自定义指令 ------ */

string   au1Type
string   au1Command
uint32   u4ObjectId
")



(provide :RosAdapter/custom_command "90841668178727efd240bbb0c9edb09b")


