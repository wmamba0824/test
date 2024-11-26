;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::lane_info)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'lane_info (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::LANE_INFO")
  (make-package "ROSADAPTER::LANE_INFO"))

(in-package "ROS")
;;//! \htmlinclude lane_info.msg.html


(defclass RosAdapter::lane_info
  :super ros::object
  :slots (_u8RoadId _u4ObjectId _u4Width _u2Type _u1Id _u1NeighborMask _u1LeftLaneId _u1RightLaneId ))

(defmethod RosAdapter::lane_info
  (:init
   (&key
    ((:u8RoadId __u8RoadId) 0)
    ((:u4ObjectId __u4ObjectId) 0)
    ((:u4Width __u4Width) 0.0)
    ((:u2Type __u2Type) 0)
    ((:u1Id __u1Id) 0)
    ((:u1NeighborMask __u1NeighborMask) 0)
    ((:u1LeftLaneId __u1LeftLaneId) 0)
    ((:u1RightLaneId __u1RightLaneId) 0)
    )
   (send-super :init)
   (setq _u8RoadId (round __u8RoadId))
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _u4Width (float __u4Width))
   (setq _u2Type (round __u2Type))
   (setq _u1Id (round __u1Id))
   (setq _u1NeighborMask (round __u1NeighborMask))
   (setq _u1LeftLaneId (round __u1LeftLaneId))
   (setq _u1RightLaneId (round __u1RightLaneId))
   self)
  (:u8RoadId
   (&optional __u8RoadId)
   (if __u8RoadId (setq _u8RoadId __u8RoadId)) _u8RoadId)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:u4Width
   (&optional __u4Width)
   (if __u4Width (setq _u4Width __u4Width)) _u4Width)
  (:u2Type
   (&optional __u2Type)
   (if __u2Type (setq _u2Type __u2Type)) _u2Type)
  (:u1Id
   (&optional __u1Id)
   (if __u1Id (setq _u1Id __u1Id)) _u1Id)
  (:u1NeighborMask
   (&optional __u1NeighborMask)
   (if __u1NeighborMask (setq _u1NeighborMask __u1NeighborMask)) _u1NeighborMask)
  (:u1LeftLaneId
   (&optional __u1LeftLaneId)
   (if __u1LeftLaneId (setq _u1LeftLaneId __u1LeftLaneId)) _u1LeftLaneId)
  (:u1RightLaneId
   (&optional __u1RightLaneId)
   (if __u1RightLaneId (setq _u1RightLaneId __u1RightLaneId)) _u1RightLaneId)
  (:serialization-length
   ()
   (+
    ;; uint64 _u8RoadId
    8
    ;; uint32 _u4ObjectId
    4
    ;; float32 _u4Width
    4
    ;; uint16 _u2Type
    2
    ;; int8 _u1Id
    1
    ;; uint8 _u1NeighborMask
    1
    ;; int8 _u1LeftLaneId
    1
    ;; int8 _u1RightLaneId
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
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; float32 _u4Width
       (sys::poke _u4Width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _u2Type
       (write-word _u2Type s)
     ;; int8 _u1Id
       (write-byte _u1Id s)
     ;; uint8 _u1NeighborMask
       (write-byte _u1NeighborMask s)
     ;; int8 _u1LeftLaneId
       (write-byte _u1LeftLaneId s)
     ;; int8 _u1RightLaneId
       (write-byte _u1RightLaneId s)
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
   ;; float32 _u4Width
     (setq _u4Width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _u2Type
     (setq _u2Type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _u1Id
     (setq _u1Id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1Id 127) (setq _u1Id (- _u1Id 256)))
   ;; uint8 _u1NeighborMask
     (setq _u1NeighborMask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _u1LeftLaneId
     (setq _u1LeftLaneId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1LeftLaneId 127) (setq _u1LeftLaneId (- _u1LeftLaneId 256)))
   ;; int8 _u1RightLaneId
     (setq _u1RightLaneId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1RightLaneId 127) (setq _u1RightLaneId (- _u1RightLaneId 256)))
   ;;
   self)
  )

(setf (get RosAdapter::lane_info :md5sum-) "956c49218f476e72e0ba077080aff039")
(setf (get RosAdapter::lane_info :datatype-) "RosAdapter/lane_info")
(setf (get RosAdapter::lane_info :definition-)
      "# /** ------ 车道信息 ------ */
uint64   u8RoadId
uint32   u4ObjectId
float32  u4Width
uint16   u2Type
int8     u1Id
uint8    u1NeighborMask
int8     u1LeftLaneId
int8     u1RightLaneId
")



(provide :RosAdapter/lane_info "956c49218f476e72e0ba077080aff039")


