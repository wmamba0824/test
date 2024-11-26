;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::road_state)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'road_state (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ROAD_STATE")
  (make-package "ROSADAPTER::ROAD_STATE"))

(in-package "ROS")
;;//! \htmlinclude road_state.msg.html


(defclass RosAdapter::road_state
  :super ros::object
  :slots (_u8RoadId _u4ObjectId _u4DefaultSpeed _u4WaterLevel _u4DistToJunc ))

(defmethod RosAdapter::road_state
  (:init
   (&key
    ((:u8RoadId __u8RoadId) 0)
    ((:u4ObjectId __u4ObjectId) 0)
    ((:u4DefaultSpeed __u4DefaultSpeed) 0.0)
    ((:u4WaterLevel __u4WaterLevel) 0.0)
    ((:u4DistToJunc __u4DistToJunc) 0.0)
    )
   (send-super :init)
   (setq _u8RoadId (round __u8RoadId))
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _u4DefaultSpeed (float __u4DefaultSpeed))
   (setq _u4WaterLevel (float __u4WaterLevel))
   (setq _u4DistToJunc (float __u4DistToJunc))
   self)
  (:u8RoadId
   (&optional __u8RoadId)
   (if __u8RoadId (setq _u8RoadId __u8RoadId)) _u8RoadId)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:u4DefaultSpeed
   (&optional __u4DefaultSpeed)
   (if __u4DefaultSpeed (setq _u4DefaultSpeed __u4DefaultSpeed)) _u4DefaultSpeed)
  (:u4WaterLevel
   (&optional __u4WaterLevel)
   (if __u4WaterLevel (setq _u4WaterLevel __u4WaterLevel)) _u4WaterLevel)
  (:u4DistToJunc
   (&optional __u4DistToJunc)
   (if __u4DistToJunc (setq _u4DistToJunc __u4DistToJunc)) _u4DistToJunc)
  (:serialization-length
   ()
   (+
    ;; uint64 _u8RoadId
    8
    ;; uint32 _u4ObjectId
    4
    ;; float32 _u4DefaultSpeed
    4
    ;; float32 _u4WaterLevel
    4
    ;; float32 _u4DistToJunc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _u8RoadId
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _u8RoadId (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _u8RoadId) (= (length (_u8RoadId . bv)) 2)) ;; bignum
              (write-long (ash (elt (_u8RoadId . bv) 0) 0) s)
              (write-long (ash (elt (_u8RoadId . bv) 1) -1) s))
             ((and (class _u8RoadId) (= (length (_u8RoadId . bv)) 1)) ;; big1
              (write-long (elt (_u8RoadId . bv) 0) s)
              (write-long (if (>= _u8RoadId 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _u8RoadId s)(write-long (if (>= _u8RoadId 0) 0 #xffffffff) s)))
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; float32 _u4DefaultSpeed
       (sys::poke _u4DefaultSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4WaterLevel
       (sys::poke _u4WaterLevel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4DistToJunc
       (sys::poke _u4DistToJunc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _u8RoadId
     
#+(or :alpha :irix6 :x86_64)
      (setf _u8RoadId (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _u8RoadId (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _u4DefaultSpeed
     (setq _u4DefaultSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4WaterLevel
     (setq _u4WaterLevel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4DistToJunc
     (setq _u4DistToJunc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::road_state :md5sum-) "7b99771b3b0714bf50c28d1e2e932612")
(setf (get RosAdapter::road_state :datatype-) "RosAdapter/road_state")
(setf (get RosAdapter::road_state :definition-)
      "#/** ------ 车辆对应的道路状态 ------ */
uint64  u8RoadId
uint32  u4ObjectId
float32 u4DefaultSpeed
float32 u4WaterLevel
float32 u4DistToJunc
")



(provide :RosAdapter/road_state "7b99771b3b0714bf50c28d1e2e932612")


