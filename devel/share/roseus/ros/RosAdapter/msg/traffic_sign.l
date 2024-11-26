;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::traffic_sign)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'traffic_sign (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::TRAFFIC_SIGN")
  (make-package "ROSADAPTER::TRAFFIC_SIGN"))

(in-package "ROS")
;;//! \htmlinclude traffic_sign.msg.html


(defclass RosAdapter::traffic_sign
  :super ros::object
  :slots (_au1Type _sPos _u4TrafficSignId _u4ObjectId _au1SubType _u4RoadDist _u4Value _u1MinLane _u1MaxLane ))

(defmethod RosAdapter::traffic_sign
  (:init
   (&key
    ((:au1Type __au1Type) "")
    ((:sPos __sPos) (instance RosAdapter::coord :init))
    ((:u4TrafficSignId __u4TrafficSignId) 0)
    ((:u4ObjectId __u4ObjectId) 0)
    ((:au1SubType __au1SubType) "")
    ((:u4RoadDist __u4RoadDist) 0.0)
    ((:u4Value __u4Value) 0.0)
    ((:u1MinLane __u1MinLane) 0)
    ((:u1MaxLane __u1MaxLane) 0)
    )
   (send-super :init)
   (setq _au1Type (string __au1Type))
   (setq _sPos __sPos)
   (setq _u4TrafficSignId (round __u4TrafficSignId))
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _au1SubType (string __au1SubType))
   (setq _u4RoadDist (float __u4RoadDist))
   (setq _u4Value (float __u4Value))
   (setq _u1MinLane (round __u1MinLane))
   (setq _u1MaxLane (round __u1MaxLane))
   self)
  (:au1Type
   (&optional __au1Type)
   (if __au1Type (setq _au1Type __au1Type)) _au1Type)
  (:sPos
   (&rest __sPos)
   (if (keywordp (car __sPos))
       (send* _sPos __sPos)
     (progn
       (if __sPos (setq _sPos (car __sPos)))
       _sPos)))
  (:u4TrafficSignId
   (&optional __u4TrafficSignId)
   (if __u4TrafficSignId (setq _u4TrafficSignId __u4TrafficSignId)) _u4TrafficSignId)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:au1SubType
   (&optional __au1SubType)
   (if __au1SubType (setq _au1SubType __au1SubType)) _au1SubType)
  (:u4RoadDist
   (&optional __u4RoadDist)
   (if __u4RoadDist (setq _u4RoadDist __u4RoadDist)) _u4RoadDist)
  (:u4Value
   (&optional __u4Value)
   (if __u4Value (setq _u4Value __u4Value)) _u4Value)
  (:u1MinLane
   (&optional __u1MinLane)
   (if __u1MinLane (setq _u1MinLane __u1MinLane)) _u1MinLane)
  (:u1MaxLane
   (&optional __u1MaxLane)
   (if __u1MaxLane (setq _u1MaxLane __u1MaxLane)) _u1MaxLane)
  (:serialization-length
   ()
   (+
    ;; string _au1Type
    4 (length _au1Type)
    ;; RosAdapter/coord _sPos
    (send _sPos :serialization-length)
    ;; uint32 _u4TrafficSignId
    4
    ;; uint32 _u4ObjectId
    4
    ;; string _au1SubType
    4 (length _au1SubType)
    ;; float32 _u4RoadDist
    4
    ;; float32 _u4Value
    4
    ;; int8 _u1MinLane
    1
    ;; int8 _u1MaxLane
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1Type
       (write-long (length _au1Type) s) (princ _au1Type s)
     ;; RosAdapter/coord _sPos
       (send _sPos :serialize s)
     ;; uint32 _u4TrafficSignId
       (write-long _u4TrafficSignId s)
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; string _au1SubType
       (write-long (length _au1SubType) s) (princ _au1SubType s)
     ;; float32 _u4RoadDist
       (sys::poke _u4RoadDist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4Value
       (sys::poke _u4Value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _u1MinLane
       (write-byte _u1MinLane s)
     ;; int8 _u1MaxLane
       (write-byte _u1MaxLane s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1Type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; RosAdapter/coord _sPos
     (send _sPos :deserialize buf ptr-) (incf ptr- (send _sPos :serialization-length))
   ;; uint32 _u4TrafficSignId
     (setq _u4TrafficSignId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _au1SubType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1SubType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _u4RoadDist
     (setq _u4RoadDist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4Value
     (setq _u4Value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _u1MinLane
     (setq _u1MinLane (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1MinLane 127) (setq _u1MinLane (- _u1MinLane 256)))
   ;; int8 _u1MaxLane
     (setq _u1MaxLane (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1MaxLane 127) (setq _u1MaxLane (- _u1MaxLane 256)))
   ;;
   self)
  )

(setf (get RosAdapter::traffic_sign :md5sum-) "b667ebe94f436bba109192fd54360970")
(setf (get RosAdapter::traffic_sign :datatype-) "RosAdapter/traffic_sign")
(setf (get RosAdapter::traffic_sign :definition-)
      "# /** ------ 交通标志信息 ------ */
string  au1Type
coord   sPos
uint32  u4TrafficSignId
uint32  u4ObjectId
string  au1SubType
float32 u4RoadDist
float32 u4Value
int8    u1MinLane
int8    u1MaxLane
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



(provide :RosAdapter/traffic_sign "b667ebe94f436bba109192fd54360970")


