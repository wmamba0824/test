;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::parkingSpace)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'parkingSpace (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::PARKINGSPACE")
  (make-package "ROSADAPTER::PARKINGSPACE"))

(in-package "ROS")
;;//! \htmlinclude parkingSpace.msg.html


(defclass RosAdapter::parkingSpace
  :super ros::object
  :slots (_sGeo _sPos _u4RoadS _u4RoadT _u8SlotId ))

(defmethod RosAdapter::parkingSpace
  (:init
   (&key
    ((:sGeo __sGeo) (instance RosAdapter::geometry :init))
    ((:sPos __sPos) (instance RosAdapter::coord :init))
    ((:u4RoadS __u4RoadS) 0.0)
    ((:u4RoadT __u4RoadT) 0.0)
    ((:u8SlotId __u8SlotId) 0)
    )
   (send-super :init)
   (setq _sGeo __sGeo)
   (setq _sPos __sPos)
   (setq _u4RoadS (float __u4RoadS))
   (setq _u4RoadT (float __u4RoadT))
   (setq _u8SlotId (round __u8SlotId))
   self)
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
  (:u4RoadS
   (&optional __u4RoadS)
   (if __u4RoadS (setq _u4RoadS __u4RoadS)) _u4RoadS)
  (:u4RoadT
   (&optional __u4RoadT)
   (if __u4RoadT (setq _u4RoadT __u4RoadT)) _u4RoadT)
  (:u8SlotId
   (&optional __u8SlotId)
   (if __u8SlotId (setq _u8SlotId __u8SlotId)) _u8SlotId)
  (:serialization-length
   ()
   (+
    ;; RosAdapter/geometry _sGeo
    (send _sGeo :serialization-length)
    ;; RosAdapter/coord _sPos
    (send _sPos :serialization-length)
    ;; float32 _u4RoadS
    4
    ;; float32 _u4RoadT
    4
    ;; uint64 _u8SlotId
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/geometry _sGeo
       (send _sGeo :serialize s)
     ;; RosAdapter/coord _sPos
       (send _sPos :serialize s)
     ;; float32 _u4RoadS
       (sys::poke _u4RoadS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4RoadT
       (sys::poke _u4RoadT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _u8SlotId
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _u8SlotId (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _u8SlotId) (= (length (_u8SlotId . bv)) 2)) ;; bignum
              (write-long (ash (elt (_u8SlotId . bv) 0) 0) s)
              (write-long (ash (elt (_u8SlotId . bv) 1) -1) s))
             ((and (class _u8SlotId) (= (length (_u8SlotId . bv)) 1)) ;; big1
              (write-long (elt (_u8SlotId . bv) 0) s)
              (write-long (if (>= _u8SlotId 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _u8SlotId s)(write-long (if (>= _u8SlotId 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/geometry _sGeo
     (send _sGeo :deserialize buf ptr-) (incf ptr- (send _sGeo :serialization-length))
   ;; RosAdapter/coord _sPos
     (send _sPos :deserialize buf ptr-) (incf ptr- (send _sPos :serialization-length))
   ;; float32 _u4RoadS
     (setq _u4RoadS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4RoadT
     (setq _u4RoadT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _u8SlotId
     
#+(or :alpha :irix6 :x86_64)
      (setf _u8SlotId (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _u8SlotId (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get RosAdapter::parkingSpace :md5sum-) "3e53c23c885c726b62a62404fba515f0")
(setf (get RosAdapter::parkingSpace :datatype-) "RosAdapter/parkingSpace")
(setf (get RosAdapter::parkingSpace :definition-)
      "#/** ------ 停车位信息 ------ */
geometry  sGeo
coord     sPos
float32   u4RoadS
float32   u4RoadT
uint64    u8SlotId

================================================================================
MSG: RosAdapter/geometry
# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ
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



(provide :RosAdapter/parkingSpace "3e53c23c885c726b62a62404fba515f0")


