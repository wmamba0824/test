;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::header)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'header (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::HEADER")
  (make-package "ROSADAPTER::HEADER"))

(in-package "ROS")
;;//! \htmlinclude header.msg.html


(defclass RosAdapter::header
  :super ros::object
  :slots (_u8SimTime _u4HeaderSize _u4DataSize _u4FrameNo ))

(defmethod RosAdapter::header
  (:init
   (&key
    ((:u8SimTime __u8SimTime) 0.0)
    ((:u4HeaderSize __u4HeaderSize) 0)
    ((:u4DataSize __u4DataSize) 0)
    ((:u4FrameNo __u4FrameNo) 0)
    )
   (send-super :init)
   (setq _u8SimTime (float __u8SimTime))
   (setq _u4HeaderSize (round __u4HeaderSize))
   (setq _u4DataSize (round __u4DataSize))
   (setq _u4FrameNo (round __u4FrameNo))
   self)
  (:u8SimTime
   (&optional __u8SimTime)
   (if __u8SimTime (setq _u8SimTime __u8SimTime)) _u8SimTime)
  (:u4HeaderSize
   (&optional __u4HeaderSize)
   (if __u4HeaderSize (setq _u4HeaderSize __u4HeaderSize)) _u4HeaderSize)
  (:u4DataSize
   (&optional __u4DataSize)
   (if __u4DataSize (setq _u4DataSize __u4DataSize)) _u4DataSize)
  (:u4FrameNo
   (&optional __u4FrameNo)
   (if __u4FrameNo (setq _u4FrameNo __u4FrameNo)) _u4FrameNo)
  (:serialization-length
   ()
   (+
    ;; float64 _u8SimTime
    8
    ;; uint32 _u4HeaderSize
    4
    ;; uint32 _u4DataSize
    4
    ;; uint32 _u4FrameNo
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u8SimTime
       (sys::poke _u8SimTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _u4HeaderSize
       (write-long _u4HeaderSize s)
     ;; uint32 _u4DataSize
       (write-long _u4DataSize s)
     ;; uint32 _u4FrameNo
       (write-long _u4FrameNo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8SimTime
     (setq _u8SimTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _u4HeaderSize
     (setq _u4HeaderSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4DataSize
     (setq _u4DataSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4FrameNo
     (setq _u4FrameNo (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::header :md5sum-) "029ca86f5dd4b29bcf12cb8af905ab90")
(setf (get RosAdapter::header :datatype-) "RosAdapter/header")
(setf (get RosAdapter::header :definition-)
      "# /** ------ Msg header ------ */
float64 u8SimTime
uint32  u4HeaderSize
uint32  u4DataSize
uint32  u4FrameNo
")



(provide :RosAdapter/header "029ca86f5dd4b29bcf12cb8af905ab90")


