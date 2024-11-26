;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::contact_point)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'contact_point (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::CONTACT_POINT")
  (make-package "ROSADAPTER::CONTACT_POINT"))

(in-package "ROS")
;;//! \htmlinclude contact_point.msg.html


(defclass RosAdapter::contact_point
  :super ros::object
  :slots (_sRoadDataIn _u2Id ))

(defmethod RosAdapter::contact_point
  (:init
   (&key
    ((:sRoadDataIn __sRoadDataIn) (instance RosAdapter::coord :init))
    ((:u2Id __u2Id) 0)
    )
   (send-super :init)
   (setq _sRoadDataIn __sRoadDataIn)
   (setq _u2Id (round __u2Id))
   self)
  (:sRoadDataIn
   (&rest __sRoadDataIn)
   (if (keywordp (car __sRoadDataIn))
       (send* _sRoadDataIn __sRoadDataIn)
     (progn
       (if __sRoadDataIn (setq _sRoadDataIn (car __sRoadDataIn)))
       _sRoadDataIn)))
  (:u2Id
   (&optional __u2Id)
   (if __u2Id (setq _u2Id __u2Id)) _u2Id)
  (:serialization-length
   ()
   (+
    ;; RosAdapter/coord _sRoadDataIn
    (send _sRoadDataIn :serialization-length)
    ;; uint16 _u2Id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/coord _sRoadDataIn
       (send _sRoadDataIn :serialize s)
     ;; uint16 _u2Id
       (write-word _u2Id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/coord _sRoadDataIn
     (send _sRoadDataIn :deserialize buf ptr-) (incf ptr- (send _sRoadDataIn :serialization-length))
   ;; uint16 _u2Id
     (setq _u2Id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get RosAdapter::contact_point :md5sum-) "41a840108b4df99218eaa97f9aa87ec5")
(setf (get RosAdapter::contact_point :datatype-) "RosAdapter/contact_point")
(setf (get RosAdapter::contact_point :definition-)
      "# /** ------ 接触点信息 ------ */
coord  sRoadDataIn
uint16 u2Id
================================================================================
MSG: RosAdapter/coord
# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type
")



(provide :RosAdapter/contact_point "41a840108b4df99218eaa97f9aa87ec5")


