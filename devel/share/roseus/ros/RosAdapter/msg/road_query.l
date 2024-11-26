;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::road_query)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'road_query (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ROAD_QUERY")
  (make-package "ROSADAPTER::ROAD_QUERY"))

(in-package "ROS")
;;//! \htmlinclude road_query.msg.html


(defclass RosAdapter::road_query
  :super ros::object
  :slots (_u8X _u8Y _u2Id ))

(defmethod RosAdapter::road_query
  (:init
   (&key
    ((:u8X __u8X) 0.0)
    ((:u8Y __u8Y) 0.0)
    ((:u2Id __u2Id) 0)
    )
   (send-super :init)
   (setq _u8X (float __u8X))
   (setq _u8Y (float __u8Y))
   (setq _u2Id (round __u2Id))
   self)
  (:u8X
   (&optional __u8X)
   (if __u8X (setq _u8X __u8X)) _u8X)
  (:u8Y
   (&optional __u8Y)
   (if __u8Y (setq _u8Y __u8Y)) _u8Y)
  (:u2Id
   (&optional __u2Id)
   (if __u2Id (setq _u2Id __u2Id)) _u2Id)
  (:serialization-length
   ()
   (+
    ;; float32 _u8X
    4
    ;; float32 _u8Y
    4
    ;; uint16 _u2Id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u8X
       (sys::poke _u8X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u8Y
       (sys::poke _u8Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _u2Id
       (write-word _u2Id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u8X
     (setq _u8X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u8Y
     (setq _u8Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _u2Id
     (setq _u2Id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get RosAdapter::road_query :md5sum-) "197c272ebc790a868b90d572669363c5")
(setf (get RosAdapter::road_query :datatype-) "RosAdapter/road_query")
(setf (get RosAdapter::road_query :definition-)
      "# /** ------ 查询道路点 ------ */
float32 u8X
float32 u8Y
uint16  u2Id
")



(provide :RosAdapter/road_query "197c272ebc790a868b90d572669363c5")


