;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::rosADToSimproTrigger)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'rosADToSimproTrigger (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ROSADTOSIMPROTRIGGER")
  (make-package "ROSADAPTER::ROSADTOSIMPROTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude rosADToSimproTrigger.msg.html


(defclass RosAdapter::rosADToSimproTrigger
  :super ros::object
  :slots (_head _adTrigger ))

(defmethod RosAdapter::rosADToSimproTrigger
  (:init
   (&key
    ((:head __head) (instance RosAdapter::header :init))
    ((:adTrigger __adTrigger) (instance RosAdapter::sync :init))
    )
   (send-super :init)
   (setq _head __head)
   (setq _adTrigger __adTrigger)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:adTrigger
   (&rest __adTrigger)
   (if (keywordp (car __adTrigger))
       (send* _adTrigger __adTrigger)
     (progn
       (if __adTrigger (setq _adTrigger (car __adTrigger)))
       _adTrigger)))
  (:serialization-length
   ()
   (+
    ;; RosAdapter/header _head
    (send _head :serialization-length)
    ;; RosAdapter/sync _adTrigger
    (send _adTrigger :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/header _head
       (send _head :serialize s)
     ;; RosAdapter/sync _adTrigger
       (send _adTrigger :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; RosAdapter/sync _adTrigger
     (send _adTrigger :deserialize buf ptr-) (incf ptr- (send _adTrigger :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::rosADToSimproTrigger :md5sum-) "2da15b25b1d5918bbf88a5b655854d59")
(setf (get RosAdapter::rosADToSimproTrigger :datatype-) "RosAdapter/rosADToSimproTrigger")
(setf (get RosAdapter::rosADToSimproTrigger :definition-)
      "header head
sync   adTrigger
================================================================================
MSG: RosAdapter/header
# /** ------ Msg header ------ */
float64 u8SimTime
uint32  u4HeaderSize
uint32  u4DataSize
uint32  u4FrameNo
================================================================================
MSG: RosAdapter/sync
# /** ------ 同步信号 ------ */
uint32 u4CmdMask
uint32 u4UserData
")



(provide :RosAdapter/rosADToSimproTrigger "2da15b25b1d5918bbf88a5b655854d59")


