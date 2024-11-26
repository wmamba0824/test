;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::activate_controller)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'activate_controller (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ACTIVATE_CONTROLLER")
  (make-package "ROSADAPTER::ACTIVATE_CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude activate_controller.msg.html


(defclass RosAdapter::activate_controller
  :super ros::object
  :slots (_u4ObjectId _u1Lateral _u1Longitudinal ))

(defmethod RosAdapter::activate_controller
  (:init
   (&key
    ((:u4ObjectId __u4ObjectId) 0)
    ((:u1Lateral __u1Lateral) nil)
    ((:u1Longitudinal __u1Longitudinal) nil)
    )
   (send-super :init)
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _u1Lateral __u1Lateral)
   (setq _u1Longitudinal __u1Longitudinal)
   self)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:u1Lateral
   (&optional (__u1Lateral :null))
   (if (not (eq __u1Lateral :null)) (setq _u1Lateral __u1Lateral)) _u1Lateral)
  (:u1Longitudinal
   (&optional (__u1Longitudinal :null))
   (if (not (eq __u1Longitudinal :null)) (setq _u1Longitudinal __u1Longitudinal)) _u1Longitudinal)
  (:serialization-length
   ()
   (+
    ;; uint32 _u4ObjectId
    4
    ;; bool _u1Lateral
    1
    ;; bool _u1Longitudinal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; bool _u1Lateral
       (if _u1Lateral (write-byte -1 s) (write-byte 0 s))
     ;; bool _u1Longitudinal
       (if _u1Longitudinal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _u1Lateral
     (setq _u1Lateral (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _u1Longitudinal
     (setq _u1Longitudinal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::activate_controller :md5sum-) "5767c52dad068fee51764b887eed08ec")
(setf (get RosAdapter::activate_controller :datatype-) "RosAdapter/activate_controller")
(setf (get RosAdapter::activate_controller :definition-)
      "# /** ------激活控制器 ------ */

uint32          u4ObjectId
bool            u1Lateral
bool            u1Longitudinal
")



(provide :RosAdapter/activate_controller "5767c52dad068fee51764b887eed08ec")


