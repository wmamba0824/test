;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::object_state)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'object_state (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::OBJECT_STATE")
  (make-package "ROSADAPTER::OBJECT_STATE"))

(in-package "ROS")
;;//! \htmlinclude object_state.msg.html


(defclass RosAdapter::object_state
  :super ros::object
  :slots (_sSpeed _sAccel _sGeo _sPos _au1Name _au1ModelFileName _au1ModelName _au8ParamScale _u8RoadId _u8SpeedLimit _u4Id _u4RoadS _u4RoadT _u4HdgRel _u4LaneOffset _u4TraveledDist _u2visMask _u1Type _u1LaneId _u1Dir _u1IsOnRoad _u1category ))

(defmethod RosAdapter::object_state
  (:init
   (&key
    ((:sSpeed __sSpeed) (instance RosAdapter::coord :init))
    ((:sAccel __sAccel) (instance RosAdapter::coord :init))
    ((:sGeo __sGeo) (instance RosAdapter::geometry :init))
    ((:sPos __sPos) (instance RosAdapter::coord :init))
    ((:au1Name __au1Name) "")
    ((:au1ModelFileName __au1ModelFileName) "")
    ((:au1ModelName __au1ModelName) "")
    ((:au8ParamScale __au8ParamScale) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:u8RoadId __u8RoadId) 0)
    ((:u8SpeedLimit __u8SpeedLimit) 0.0)
    ((:u4Id __u4Id) 0)
    ((:u4RoadS __u4RoadS) 0.0)
    ((:u4RoadT __u4RoadT) 0.0)
    ((:u4HdgRel __u4HdgRel) 0.0)
    ((:u4LaneOffset __u4LaneOffset) 0.0)
    ((:u4TraveledDist __u4TraveledDist) 0.0)
    ((:u2visMask __u2visMask) 0)
    ((:u1Type __u1Type) 0)
    ((:u1LaneId __u1LaneId) 0)
    ((:u1Dir __u1Dir) 0)
    ((:u1IsOnRoad __u1IsOnRoad) nil)
    ((:u1category __u1category) 0)
    )
   (send-super :init)
   (setq _sSpeed __sSpeed)
   (setq _sAccel __sAccel)
   (setq _sGeo __sGeo)
   (setq _sPos __sPos)
   (setq _au1Name (string __au1Name))
   (setq _au1ModelFileName (string __au1ModelFileName))
   (setq _au1ModelName (string __au1ModelName))
   (setq _au8ParamScale __au8ParamScale)
   (setq _u8RoadId (round __u8RoadId))
   (setq _u8SpeedLimit (float __u8SpeedLimit))
   (setq _u4Id (round __u4Id))
   (setq _u4RoadS (float __u4RoadS))
   (setq _u4RoadT (float __u4RoadT))
   (setq _u4HdgRel (float __u4HdgRel))
   (setq _u4LaneOffset (float __u4LaneOffset))
   (setq _u4TraveledDist (float __u4TraveledDist))
   (setq _u2visMask (round __u2visMask))
   (setq _u1Type (round __u1Type))
   (setq _u1LaneId (round __u1LaneId))
   (setq _u1Dir (round __u1Dir))
   (setq _u1IsOnRoad __u1IsOnRoad)
   (setq _u1category (round __u1category))
   self)
  (:sSpeed
   (&rest __sSpeed)
   (if (keywordp (car __sSpeed))
       (send* _sSpeed __sSpeed)
     (progn
       (if __sSpeed (setq _sSpeed (car __sSpeed)))
       _sSpeed)))
  (:sAccel
   (&rest __sAccel)
   (if (keywordp (car __sAccel))
       (send* _sAccel __sAccel)
     (progn
       (if __sAccel (setq _sAccel (car __sAccel)))
       _sAccel)))
  (:sGeo
   (&rest __sGeo)
   (if (keywordp (car __sGeo))
       (send* _sGeo __sGeo)
     (progn
       (if __sGeo (setq _sGeo (car __sGeo)))
       _sGeo)))
  (:sPos
   (&rest __sPos)
   (if (keywordp (car __sPos))
       (send* _sPos __sPos)
     (progn
       (if __sPos (setq _sPos (car __sPos)))
       _sPos)))
  (:au1Name
   (&optional __au1Name)
   (if __au1Name (setq _au1Name __au1Name)) _au1Name)
  (:au1ModelFileName
   (&optional __au1ModelFileName)
   (if __au1ModelFileName (setq _au1ModelFileName __au1ModelFileName)) _au1ModelFileName)
  (:au1ModelName
   (&optional __au1ModelName)
   (if __au1ModelName (setq _au1ModelName __au1ModelName)) _au1ModelName)
  (:au8ParamScale
   (&optional __au8ParamScale)
   (if __au8ParamScale (setq _au8ParamScale __au8ParamScale)) _au8ParamScale)
  (:u8RoadId
   (&optional __u8RoadId)
   (if __u8RoadId (setq _u8RoadId __u8RoadId)) _u8RoadId)
  (:u8SpeedLimit
   (&optional __u8SpeedLimit)
   (if __u8SpeedLimit (setq _u8SpeedLimit __u8SpeedLimit)) _u8SpeedLimit)
  (:u4Id
   (&optional __u4Id)
   (if __u4Id (setq _u4Id __u4Id)) _u4Id)
  (:u4RoadS
   (&optional __u4RoadS)
   (if __u4RoadS (setq _u4RoadS __u4RoadS)) _u4RoadS)
  (:u4RoadT
   (&optional __u4RoadT)
   (if __u4RoadT (setq _u4RoadT __u4RoadT)) _u4RoadT)
  (:u4HdgRel
   (&optional __u4HdgRel)
   (if __u4HdgRel (setq _u4HdgRel __u4HdgRel)) _u4HdgRel)
  (:u4LaneOffset
   (&optional __u4LaneOffset)
   (if __u4LaneOffset (setq _u4LaneOffset __u4LaneOffset)) _u4LaneOffset)
  (:u4TraveledDist
   (&optional __u4TraveledDist)
   (if __u4TraveledDist (setq _u4TraveledDist __u4TraveledDist)) _u4TraveledDist)
  (:u2visMask
   (&optional __u2visMask)
   (if __u2visMask (setq _u2visMask __u2visMask)) _u2visMask)
  (:u1Type
   (&optional __u1Type)
   (if __u1Type (setq _u1Type __u1Type)) _u1Type)
  (:u1LaneId
   (&optional __u1LaneId)
   (if __u1LaneId (setq _u1LaneId __u1LaneId)) _u1LaneId)
  (:u1Dir
   (&optional __u1Dir)
   (if __u1Dir (setq _u1Dir __u1Dir)) _u1Dir)
  (:u1IsOnRoad
   (&optional (__u1IsOnRoad :null))
   (if (not (eq __u1IsOnRoad :null)) (setq _u1IsOnRoad __u1IsOnRoad)) _u1IsOnRoad)
  (:u1category
   (&optional __u1category)
   (if __u1category (setq _u1category __u1category)) _u1category)
  (:serialization-length
   ()
   (+
    ;; RosAdapter/coord _sSpeed
    (send _sSpeed :serialization-length)
    ;; RosAdapter/coord _sAccel
    (send _sAccel :serialization-length)
    ;; RosAdapter/geometry _sGeo
    (send _sGeo :serialization-length)
    ;; RosAdapter/coord _sPos
    (send _sPos :serialization-length)
    ;; string _au1Name
    4 (length _au1Name)
    ;; string _au1ModelFileName
    4 (length _au1ModelFileName)
    ;; string _au1ModelName
    4 (length _au1ModelName)
    ;; float64[] _au8ParamScale
    (* 8    (length _au8ParamScale)) 4
    ;; uint64 _u8RoadId
    8
    ;; float64 _u8SpeedLimit
    8
    ;; uint32 _u4Id
    4
    ;; float32 _u4RoadS
    4
    ;; float32 _u4RoadT
    4
    ;; float32 _u4HdgRel
    4
    ;; float32 _u4LaneOffset
    4
    ;; float32 _u4TraveledDist
    4
    ;; uint16 _u2visMask
    2
    ;; uint8 _u1Type
    1
    ;; int8 _u1LaneId
    1
    ;; uint8 _u1Dir
    1
    ;; bool _u1IsOnRoad
    1
    ;; uint8 _u1category
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/coord _sSpeed
       (send _sSpeed :serialize s)
     ;; RosAdapter/coord _sAccel
       (send _sAccel :serialize s)
     ;; RosAdapter/geometry _sGeo
       (send _sGeo :serialize s)
     ;; RosAdapter/coord _sPos
       (send _sPos :serialize s)
     ;; string _au1Name
       (write-long (length _au1Name) s) (princ _au1Name s)
     ;; string _au1ModelFileName
       (write-long (length _au1ModelFileName) s) (princ _au1ModelFileName s)
     ;; string _au1ModelName
       (write-long (length _au1ModelName) s) (princ _au1ModelName s)
     ;; float64[] _au8ParamScale
     (write-long (length _au8ParamScale) s)
     (dotimes (i (length _au8ParamScale))
       (sys::poke (elt _au8ParamScale i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
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
     ;; float64 _u8SpeedLimit
       (sys::poke _u8SpeedLimit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _u4Id
       (write-long _u4Id s)
     ;; float32 _u4RoadS
       (sys::poke _u4RoadS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4RoadT
       (sys::poke _u4RoadT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4HdgRel
       (sys::poke _u4HdgRel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4LaneOffset
       (sys::poke _u4LaneOffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4TraveledDist
       (sys::poke _u4TraveledDist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _u2visMask
       (write-word _u2visMask s)
     ;; uint8 _u1Type
       (write-byte _u1Type s)
     ;; int8 _u1LaneId
       (write-byte _u1LaneId s)
     ;; uint8 _u1Dir
       (write-byte _u1Dir s)
     ;; bool _u1IsOnRoad
       (if _u1IsOnRoad (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _u1category
       (write-byte _u1category s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/coord _sSpeed
     (send _sSpeed :deserialize buf ptr-) (incf ptr- (send _sSpeed :serialization-length))
   ;; RosAdapter/coord _sAccel
     (send _sAccel :deserialize buf ptr-) (incf ptr- (send _sAccel :serialization-length))
   ;; RosAdapter/geometry _sGeo
     (send _sGeo :deserialize buf ptr-) (incf ptr- (send _sGeo :serialization-length))
   ;; RosAdapter/coord _sPos
     (send _sPos :deserialize buf ptr-) (incf ptr- (send _sPos :serialization-length))
   ;; string _au1Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _au1ModelFileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1ModelFileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _au1ModelName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1ModelName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _au8ParamScale
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au8ParamScale (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _au8ParamScale i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
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
   ;; float64 _u8SpeedLimit
     (setq _u8SpeedLimit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _u4Id
     (setq _u4Id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _u4RoadS
     (setq _u4RoadS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4RoadT
     (setq _u4RoadT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4HdgRel
     (setq _u4HdgRel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4LaneOffset
     (setq _u4LaneOffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4TraveledDist
     (setq _u4TraveledDist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _u2visMask
     (setq _u2visMask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _u1Type
     (setq _u1Type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _u1LaneId
     (setq _u1LaneId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1LaneId 127) (setq _u1LaneId (- _u1LaneId 256)))
   ;; uint8 _u1Dir
     (setq _u1Dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _u1IsOnRoad
     (setq _u1IsOnRoad (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _u1category
     (setq _u1category (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::object_state :md5sum-) "487cbf303de88174ac14ecc4b4a926e9")
(setf (get RosAdapter::object_state :datatype-) "RosAdapter/object_state")
(setf (get RosAdapter::object_state :definition-)
      "# /** ------ 对象信息 ------ */
coord           sSpeed
coord           sAccel
geometry        sGeo
coord           sPos
string          au1Name
string          au1ModelFileName
string          au1ModelName
float64[]       au8ParamScale
uint64          u8RoadId
float64         u8SpeedLimit
uint32          u4Id
float32         u4RoadS
float32         u4RoadT
float32         u4HdgRel
float32         u4LaneOffset
float32         u4TraveledDist
uint16          u2visMask
uint8           u1Type
int8            u1LaneId
uint8           u1Dir
bool            u1IsOnRoad
uint8           u1category
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
================================================================================
MSG: RosAdapter/geometry
# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ
")



(provide :RosAdapter/object_state "487cbf303de88174ac14ecc4b4a926e9")


