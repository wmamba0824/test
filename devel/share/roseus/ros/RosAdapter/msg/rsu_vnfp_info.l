;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::rsu_vnfp_info)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'rsu_vnfp_info (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::RSU_VNFP_INFO")
  (make-package "ROSADAPTER::RSU_VNFP_INFO"))

(in-package "ROS")
;;//! \htmlinclude rsu_vnfp_info.msg.html


(defclass RosAdapter::rsu_vnfp_info
  :super ros::object
  :slots (_type ))

(defmethod RosAdapter::rsu_vnfp_info
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::rsu_vnfp_info :md5sum-) "fddb7a9f6752fdb043992b8a34032ae9")
(setf (get RosAdapter::rsu_vnfp_info :datatype-) "RosAdapter/rsu_vnfp_info")
(setf (get RosAdapter::rsu_vnfp_info :definition-)
      "uint32    type
")



(provide :RosAdapter/rsu_vnfp_info "fddb7a9f6752fdb043992b8a34032ae9")


