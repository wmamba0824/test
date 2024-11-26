;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::mil_object_state_base)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'mil_object_state_base (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MIL_OBJECT_STATE_BASE")
  (make-package "ROSADAPTER::MIL_OBJECT_STATE_BASE"))

(in-package "ROS")
;;//! \htmlinclude mil_object_state_base.msg.html


(defclass RosAdapter::mil_object_state_base
  :super ros::object
  :slots (_u4LightMask _u4DistanceX _u4DistanceY _u4VelocityX _u4VelocityY _u4AccelerationX _u4AccelerationY _u4YawRate _u4Dist _u4Angle _u1ObjClass _u1Flag_detected _u1Movable _u1Moving _u1Obj_Age ))

(defmethod RosAdapter::mil_object_state_base
  (:init
   (&key
    ((:u4LightMask __u4LightMask) 0)
    ((:u4DistanceX __u4DistanceX) 0.0)
    ((:u4DistanceY __u4DistanceY) 0.0)
    ((:u4VelocityX __u4VelocityX) 0.0)
    ((:u4VelocityY __u4VelocityY) 0.0)
    ((:u4AccelerationX __u4AccelerationX) 0.0)
    ((:u4AccelerationY __u4AccelerationY) 0.0)
    ((:u4YawRate __u4YawRate) 0.0)
    ((:u4Dist __u4Dist) 0.0)
    ((:u4Angle __u4Angle) 0.0)
    ((:u1ObjClass __u1ObjClass) 0)
    ((:u1Flag_detected __u1Flag_detected) 0)
    ((:u1Movable __u1Movable) 0)
    ((:u1Moving __u1Moving) 0)
    ((:u1Obj_Age __u1Obj_Age) 0)
    )
   (send-super :init)
   (setq _u4LightMask (round __u4LightMask))
   (setq _u4DistanceX (float __u4DistanceX))
   (setq _u4DistanceY (float __u4DistanceY))
   (setq _u4VelocityX (float __u4VelocityX))
   (setq _u4VelocityY (float __u4VelocityY))
   (setq _u4AccelerationX (float __u4AccelerationX))
   (setq _u4AccelerationY (float __u4AccelerationY))
   (setq _u4YawRate (float __u4YawRate))
   (setq _u4Dist (float __u4Dist))
   (setq _u4Angle (float __u4Angle))
   (setq _u1ObjClass (round __u1ObjClass))
   (setq _u1Flag_detected (round __u1Flag_detected))
   (setq _u1Movable (round __u1Movable))
   (setq _u1Moving (round __u1Moving))
   (setq _u1Obj_Age (round __u1Obj_Age))
   self)
  (:u4LightMask
   (&optional __u4LightMask)
   (if __u4LightMask (setq _u4LightMask __u4LightMask)) _u4LightMask)
  (:u4DistanceX
   (&optional __u4DistanceX)
   (if __u4DistanceX (setq _u4DistanceX __u4DistanceX)) _u4DistanceX)
  (:u4DistanceY
   (&optional __u4DistanceY)
   (if __u4DistanceY (setq _u4DistanceY __u4DistanceY)) _u4DistanceY)
  (:u4VelocityX
   (&optional __u4VelocityX)
   (if __u4VelocityX (setq _u4VelocityX __u4VelocityX)) _u4VelocityX)
  (:u4VelocityY
   (&optional __u4VelocityY)
   (if __u4VelocityY (setq _u4VelocityY __u4VelocityY)) _u4VelocityY)
  (:u4AccelerationX
   (&optional __u4AccelerationX)
   (if __u4AccelerationX (setq _u4AccelerationX __u4AccelerationX)) _u4AccelerationX)
  (:u4AccelerationY
   (&optional __u4AccelerationY)
   (if __u4AccelerationY (setq _u4AccelerationY __u4AccelerationY)) _u4AccelerationY)
  (:u4YawRate
   (&optional __u4YawRate)
   (if __u4YawRate (setq _u4YawRate __u4YawRate)) _u4YawRate)
  (:u4Dist
   (&optional __u4Dist)
   (if __u4Dist (setq _u4Dist __u4Dist)) _u4Dist)
  (:u4Angle
   (&optional __u4Angle)
   (if __u4Angle (setq _u4Angle __u4Angle)) _u4Angle)
  (:u1ObjClass
   (&optional __u1ObjClass)
   (if __u1ObjClass (setq _u1ObjClass __u1ObjClass)) _u1ObjClass)
  (:u1Flag_detected
   (&optional __u1Flag_detected)
   (if __u1Flag_detected (setq _u1Flag_detected __u1Flag_detected)) _u1Flag_detected)
  (:u1Movable
   (&optional __u1Movable)
   (if __u1Movable (setq _u1Movable __u1Movable)) _u1Movable)
  (:u1Moving
   (&optional __u1Moving)
   (if __u1Moving (setq _u1Moving __u1Moving)) _u1Moving)
  (:u1Obj_Age
   (&optional __u1Obj_Age)
   (if __u1Obj_Age (setq _u1Obj_Age __u1Obj_Age)) _u1Obj_Age)
  (:serialization-length
   ()
   (+
    ;; uint32 _u4LightMask
    4
    ;; float32 _u4DistanceX
    4
    ;; float32 _u4DistanceY
    4
    ;; float32 _u4VelocityX
    4
    ;; float32 _u4VelocityY
    4
    ;; float32 _u4AccelerationX
    4
    ;; float32 _u4AccelerationY
    4
    ;; float32 _u4YawRate
    4
    ;; float32 _u4Dist
    4
    ;; float32 _u4Angle
    4
    ;; uint8 _u1ObjClass
    1
    ;; uint8 _u1Flag_detected
    1
    ;; uint8 _u1Movable
    1
    ;; uint8 _u1Moving
    1
    ;; uint8 _u1Obj_Age
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4LightMask
       (write-long _u4LightMask s)
     ;; float32 _u4DistanceX
       (sys::poke _u4DistanceX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4DistanceY
       (sys::poke _u4DistanceY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4VelocityX
       (sys::poke _u4VelocityX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4VelocityY
       (sys::poke _u4VelocityY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4AccelerationX
       (sys::poke _u4AccelerationX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4AccelerationY
       (sys::poke _u4AccelerationY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4YawRate
       (sys::poke _u4YawRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4Dist
       (sys::poke _u4Dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4Angle
       (sys::poke _u4Angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _u1ObjClass
       (write-byte _u1ObjClass s)
     ;; uint8 _u1Flag_detected
       (write-byte _u1Flag_detected s)
     ;; uint8 _u1Movable
       (write-byte _u1Movable s)
     ;; uint8 _u1Moving
       (write-byte _u1Moving s)
     ;; uint8 _u1Obj_Age
       (write-byte _u1Obj_Age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4LightMask
     (setq _u4LightMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _u4DistanceX
     (setq _u4DistanceX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4DistanceY
     (setq _u4DistanceY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4VelocityX
     (setq _u4VelocityX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4VelocityY
     (setq _u4VelocityY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4AccelerationX
     (setq _u4AccelerationX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4AccelerationY
     (setq _u4AccelerationY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4YawRate
     (setq _u4YawRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4Dist
     (setq _u4Dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4Angle
     (setq _u4Angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _u1ObjClass
     (setq _u1ObjClass (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Flag_detected
     (setq _u1Flag_detected (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Movable
     (setq _u1Movable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Moving
     (setq _u1Moving (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Obj_Age
     (setq _u1Obj_Age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::mil_object_state_base :md5sum-) "460517ddfac2850057332c48eb20e133")
(setf (get RosAdapter::mil_object_state_base :datatype-) "RosAdapter/mil_object_state_base")
(setf (get RosAdapter::mil_object_state_base :definition-)
      "#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */

uint32     u4LightMask
float32    u4DistanceX
float32    u4DistanceY
float32    u4VelocityX
float32    u4VelocityY
float32    u4AccelerationX
float32    u4AccelerationY
float32    u4YawRate
float32    u4Dist
float32    u4Angle
uint8      u1ObjClass
uint8      u1Flag_detected
uint8      u1Movable
uint8      u1Moving
uint8      u1Obj_Age
")



(provide :RosAdapter/mil_object_state_base "460517ddfac2850057332c48eb20e133")


