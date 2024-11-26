;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::mil_roadmark)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'mil_roadmark (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MIL_ROADMARK")
  (make-package "ROSADAPTER::MIL_ROADMARK"))

(in-package "ROS")
;;//! \htmlinclude mil_roadmark.msg.html


(defclass RosAdapter::mil_roadmark
  :super ros::object
  :slots (_u8RoadId _curvVert _u4StartDx _u4Width _u4ViewRangeStart _u4ViewRangeEnd _u4MeasuredVREnd _u4C0 _u4C1 _u4C2 _u4C3 _u2LaneChange _u1LaneId _u1Quality _u1Type _u1Color _u1LeftCrossing _u1RightCrossing ))

(defmethod RosAdapter::mil_roadmark
  (:init
   (&key
    ((:u8RoadId __u8RoadId) 0)
    ((:curvVert __curvVert) 0.0)
    ((:u4StartDx __u4StartDx) 0.0)
    ((:u4Width __u4Width) 0.0)
    ((:u4ViewRangeStart __u4ViewRangeStart) 0.0)
    ((:u4ViewRangeEnd __u4ViewRangeEnd) 0.0)
    ((:u4MeasuredVREnd __u4MeasuredVREnd) 0.0)
    ((:u4C0 __u4C0) 0.0)
    ((:u4C1 __u4C1) 0.0)
    ((:u4C2 __u4C2) 0.0)
    ((:u4C3 __u4C3) 0.0)
    ((:u2LaneChange __u2LaneChange) 0)
    ((:u1LaneId __u1LaneId) 0)
    ((:u1Quality __u1Quality) 0)
    ((:u1Type __u1Type) 0)
    ((:u1Color __u1Color) 0)
    ((:u1LeftCrossing __u1LeftCrossing) 0)
    ((:u1RightCrossing __u1RightCrossing) 0)
    )
   (send-super :init)
   (setq _u8RoadId (round __u8RoadId))
   (setq _curvVert (float __curvVert))
   (setq _u4StartDx (float __u4StartDx))
   (setq _u4Width (float __u4Width))
   (setq _u4ViewRangeStart (float __u4ViewRangeStart))
   (setq _u4ViewRangeEnd (float __u4ViewRangeEnd))
   (setq _u4MeasuredVREnd (float __u4MeasuredVREnd))
   (setq _u4C0 (float __u4C0))
   (setq _u4C1 (float __u4C1))
   (setq _u4C2 (float __u4C2))
   (setq _u4C3 (float __u4C3))
   (setq _u2LaneChange (round __u2LaneChange))
   (setq _u1LaneId (round __u1LaneId))
   (setq _u1Quality (round __u1Quality))
   (setq _u1Type (round __u1Type))
   (setq _u1Color (round __u1Color))
   (setq _u1LeftCrossing (round __u1LeftCrossing))
   (setq _u1RightCrossing (round __u1RightCrossing))
   self)
  (:u8RoadId
   (&optional __u8RoadId)
   (if __u8RoadId (setq _u8RoadId __u8RoadId)) _u8RoadId)
  (:curvVert
   (&optional __curvVert)
   (if __curvVert (setq _curvVert __curvVert)) _curvVert)
  (:u4StartDx
   (&optional __u4StartDx)
   (if __u4StartDx (setq _u4StartDx __u4StartDx)) _u4StartDx)
  (:u4Width
   (&optional __u4Width)
   (if __u4Width (setq _u4Width __u4Width)) _u4Width)
  (:u4ViewRangeStart
   (&optional __u4ViewRangeStart)
   (if __u4ViewRangeStart (setq _u4ViewRangeStart __u4ViewRangeStart)) _u4ViewRangeStart)
  (:u4ViewRangeEnd
   (&optional __u4ViewRangeEnd)
   (if __u4ViewRangeEnd (setq _u4ViewRangeEnd __u4ViewRangeEnd)) _u4ViewRangeEnd)
  (:u4MeasuredVREnd
   (&optional __u4MeasuredVREnd)
   (if __u4MeasuredVREnd (setq _u4MeasuredVREnd __u4MeasuredVREnd)) _u4MeasuredVREnd)
  (:u4C0
   (&optional __u4C0)
   (if __u4C0 (setq _u4C0 __u4C0)) _u4C0)
  (:u4C1
   (&optional __u4C1)
   (if __u4C1 (setq _u4C1 __u4C1)) _u4C1)
  (:u4C2
   (&optional __u4C2)
   (if __u4C2 (setq _u4C2 __u4C2)) _u4C2)
  (:u4C3
   (&optional __u4C3)
   (if __u4C3 (setq _u4C3 __u4C3)) _u4C3)
  (:u2LaneChange
   (&optional __u2LaneChange)
   (if __u2LaneChange (setq _u2LaneChange __u2LaneChange)) _u2LaneChange)
  (:u1LaneId
   (&optional __u1LaneId)
   (if __u1LaneId (setq _u1LaneId __u1LaneId)) _u1LaneId)
  (:u1Quality
   (&optional __u1Quality)
   (if __u1Quality (setq _u1Quality __u1Quality)) _u1Quality)
  (:u1Type
   (&optional __u1Type)
   (if __u1Type (setq _u1Type __u1Type)) _u1Type)
  (:u1Color
   (&optional __u1Color)
   (if __u1Color (setq _u1Color __u1Color)) _u1Color)
  (:u1LeftCrossing
   (&optional __u1LeftCrossing)
   (if __u1LeftCrossing (setq _u1LeftCrossing __u1LeftCrossing)) _u1LeftCrossing)
  (:u1RightCrossing
   (&optional __u1RightCrossing)
   (if __u1RightCrossing (setq _u1RightCrossing __u1RightCrossing)) _u1RightCrossing)
  (:serialization-length
   ()
   (+
    ;; uint64 _u8RoadId
    8
    ;; float64 _curvVert
    8
    ;; float32 _u4StartDx
    4
    ;; float32 _u4Width
    4
    ;; float32 _u4ViewRangeStart
    4
    ;; float32 _u4ViewRangeEnd
    4
    ;; float32 _u4MeasuredVREnd
    4
    ;; float32 _u4C0
    4
    ;; float32 _u4C1
    4
    ;; float32 _u4C2
    4
    ;; float32 _u4C3
    4
    ;; uint16 _u2LaneChange
    2
    ;; int8 _u1LaneId
    1
    ;; uint8 _u1Quality
    1
    ;; uint8 _u1Type
    1
    ;; uint8 _u1Color
    1
    ;; uint8 _u1LeftCrossing
    1
    ;; uint8 _u1RightCrossing
    1
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
     ;; float64 _curvVert
       (sys::poke _curvVert (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _u4StartDx
       (sys::poke _u4StartDx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4Width
       (sys::poke _u4Width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4ViewRangeStart
       (sys::poke _u4ViewRangeStart (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4ViewRangeEnd
       (sys::poke _u4ViewRangeEnd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4MeasuredVREnd
       (sys::poke _u4MeasuredVREnd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4C0
       (sys::poke _u4C0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4C1
       (sys::poke _u4C1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4C2
       (sys::poke _u4C2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4C3
       (sys::poke _u4C3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _u2LaneChange
       (write-word _u2LaneChange s)
     ;; int8 _u1LaneId
       (write-byte _u1LaneId s)
     ;; uint8 _u1Quality
       (write-byte _u1Quality s)
     ;; uint8 _u1Type
       (write-byte _u1Type s)
     ;; uint8 _u1Color
       (write-byte _u1Color s)
     ;; uint8 _u1LeftCrossing
       (write-byte _u1LeftCrossing s)
     ;; uint8 _u1RightCrossing
       (write-byte _u1RightCrossing s)
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
   ;; float64 _curvVert
     (setq _curvVert (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _u4StartDx
     (setq _u4StartDx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4Width
     (setq _u4Width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4ViewRangeStart
     (setq _u4ViewRangeStart (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4ViewRangeEnd
     (setq _u4ViewRangeEnd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4MeasuredVREnd
     (setq _u4MeasuredVREnd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4C0
     (setq _u4C0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4C1
     (setq _u4C1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4C2
     (setq _u4C2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4C3
     (setq _u4C3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _u2LaneChange
     (setq _u2LaneChange (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _u1LaneId
     (setq _u1LaneId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1LaneId 127) (setq _u1LaneId (- _u1LaneId 256)))
   ;; uint8 _u1Quality
     (setq _u1Quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Type
     (setq _u1Type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Color
     (setq _u1Color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1LeftCrossing
     (setq _u1LeftCrossing (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1RightCrossing
     (setq _u1RightCrossing (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::mil_roadmark :md5sum-) "7aee4a86eef20d62dcd9e9c417a01ceb")
(setf (get RosAdapter::mil_roadmark :datatype-) "RosAdapter/mil_roadmark")
(setf (get RosAdapter::mil_roadmark :definition-)
      " # /** ------ MIL测试车道线信息描述包 ------ */

uint64  u8RoadId
float64 curvVert
float32 u4StartDx
float32 u4Width
float32 u4ViewRangeStart
float32 u4ViewRangeEnd
float32 u4MeasuredVREnd
float32 u4C0
float32 u4C1
float32 u4C2
float32 u4C3
uint16  u2LaneChange
int8    u1LaneId
uint8   u1Quality
uint8   u1Type
uint8   u1Color
uint8   u1LeftCrossing
uint8   u1RightCrossing
")



(provide :RosAdapter/mil_roadmark "7aee4a86eef20d62dcd9e9c417a01ceb")


