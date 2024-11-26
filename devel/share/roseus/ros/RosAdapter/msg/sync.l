;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::sync)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'sync (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::SYNC")
  (make-package "ROSADAPTER::SYNC"))

(in-package "ROS")
;;//! \htmlinclude sync.msg.html


(defclass RosAdapter::sync
  :super ros::object
  :slots (_u4CmdMask _u4UserData ))

(defmethod RosAdapter::sync
  (:init
   (&key
    ((:u4CmdMask __u4CmdMask) 0)
    ((:u4UserData __u4UserData) 0)
    )
   (send-super :init)
   (setq _u4CmdMask (round __u4CmdMask))
   (setq _u4UserData (round __u4UserData))
   self)
  (:u4CmdMask
   (&optional __u4CmdMask)
   (if __u4CmdMask (setq _u4CmdMask __u4CmdMask)) _u4CmdMask)
  (:u4UserData
   (&optional __u4UserData)
   (if __u4UserData (setq _u4UserData __u4UserData)) _u4UserData)
  (:serialization-length
   ()
   (+
    ;; uint32 _u4CmdMask
    4
    ;; uint32 _u4UserData
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4CmdMask
       (write-long _u4CmdMask s)
     ;; uint32 _u4UserData
       (write-long _u4UserData s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4CmdMask
     (setq _u4CmdMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4UserData
     (setq _u4UserData (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::sync :md5sum-) "404a13d7ef42e664a8f190745b98093b")
(setf (get RosAdapter::sync :datatype-) "RosAdapter/sync")
(setf (get RosAdapter::sync :definition-)
      "# /** ------ 同步信号 ------ */
uint32 u4CmdMask
uint32 u4UserData
")



(provide :RosAdapter/sync "404a13d7ef42e664a8f190745b98093b")


