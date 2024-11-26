;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::mil_amesim_signal)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'mil_amesim_signal (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::MIL_AMESIM_SIGNAL")
  (make-package "ROSADAPTER::MIL_AMESIM_SIGNAL"))

(in-package "ROS")
;;//! \htmlinclude mil_amesim_signal.msg.html


(defclass RosAdapter::mil_amesim_signal
  :super ros::object
  :slots (_u4LeftLen _u4NextLen _u4NextAgeSpeed _u4NextMinSpeed _u4NextMaxSpeed _u4NextGradient _u4NextCongest _u1RoadType _u4DisLimit _u1IsFarAwayLimit _u4LimitSpeed _ulIsJunction _u4DisJunction _ulIsFarAwayJunc _ultrafficLightStat _u4Curvity _u4RelativeVel _u4RelativeDis ))

(defmethod RosAdapter::mil_amesim_signal
  (:init
   (&key
    ((:u4LeftLen __u4LeftLen) 0.0)
    ((:u4NextLen __u4NextLen) 0.0)
    ((:u4NextAgeSpeed __u4NextAgeSpeed) 0.0)
    ((:u4NextMinSpeed __u4NextMinSpeed) 0.0)
    ((:u4NextMaxSpeed __u4NextMaxSpeed) 0.0)
    ((:u4NextGradient __u4NextGradient) 0.0)
    ((:u4NextCongest __u4NextCongest) 0.0)
    ((:u1RoadType __u1RoadType) 0)
    ((:u4DisLimit __u4DisLimit) 0.0)
    ((:u1IsFarAwayLimit __u1IsFarAwayLimit) nil)
    ((:u4LimitSpeed __u4LimitSpeed) 0.0)
    ((:ulIsJunction __ulIsJunction) nil)
    ((:u4DisJunction __u4DisJunction) 0.0)
    ((:ulIsFarAwayJunc __ulIsFarAwayJunc) nil)
    ((:ultrafficLightStat __ultrafficLightStat) 0)
    ((:u4Curvity __u4Curvity) 0.0)
    ((:u4RelativeVel __u4RelativeVel) 0.0)
    ((:u4RelativeDis __u4RelativeDis) 0.0)
    )
   (send-super :init)
   (setq _u4LeftLen (float __u4LeftLen))
   (setq _u4NextLen (float __u4NextLen))
   (setq _u4NextAgeSpeed (float __u4NextAgeSpeed))
   (setq _u4NextMinSpeed (float __u4NextMinSpeed))
   (setq _u4NextMaxSpeed (float __u4NextMaxSpeed))
   (setq _u4NextGradient (float __u4NextGradient))
   (setq _u4NextCongest (float __u4NextCongest))
   (setq _u1RoadType (round __u1RoadType))
   (setq _u4DisLimit (float __u4DisLimit))
   (setq _u1IsFarAwayLimit __u1IsFarAwayLimit)
   (setq _u4LimitSpeed (float __u4LimitSpeed))
   (setq _ulIsJunction __ulIsJunction)
   (setq _u4DisJunction (float __u4DisJunction))
   (setq _ulIsFarAwayJunc __ulIsFarAwayJunc)
   (setq _ultrafficLightStat (round __ultrafficLightStat))
   (setq _u4Curvity (float __u4Curvity))
   (setq _u4RelativeVel (float __u4RelativeVel))
   (setq _u4RelativeDis (float __u4RelativeDis))
   self)
  (:u4LeftLen
   (&optional __u4LeftLen)
   (if __u4LeftLen (setq _u4LeftLen __u4LeftLen)) _u4LeftLen)
  (:u4NextLen
   (&optional __u4NextLen)
   (if __u4NextLen (setq _u4NextLen __u4NextLen)) _u4NextLen)
  (:u4NextAgeSpeed
   (&optional __u4NextAgeSpeed)
   (if __u4NextAgeSpeed (setq _u4NextAgeSpeed __u4NextAgeSpeed)) _u4NextAgeSpeed)
  (:u4NextMinSpeed
   (&optional __u4NextMinSpeed)
   (if __u4NextMinSpeed (setq _u4NextMinSpeed __u4NextMinSpeed)) _u4NextMinSpeed)
  (:u4NextMaxSpeed
   (&optional __u4NextMaxSpeed)
   (if __u4NextMaxSpeed (setq _u4NextMaxSpeed __u4NextMaxSpeed)) _u4NextMaxSpeed)
  (:u4NextGradient
   (&optional __u4NextGradient)
   (if __u4NextGradient (setq _u4NextGradient __u4NextGradient)) _u4NextGradient)
  (:u4NextCongest
   (&optional __u4NextCongest)
   (if __u4NextCongest (setq _u4NextCongest __u4NextCongest)) _u4NextCongest)
  (:u1RoadType
   (&optional __u1RoadType)
   (if __u1RoadType (setq _u1RoadType __u1RoadType)) _u1RoadType)
  (:u4DisLimit
   (&optional __u4DisLimit)
   (if __u4DisLimit (setq _u4DisLimit __u4DisLimit)) _u4DisLimit)
  (:u1IsFarAwayLimit
   (&optional (__u1IsFarAwayLimit :null))
   (if (not (eq __u1IsFarAwayLimit :null)) (setq _u1IsFarAwayLimit __u1IsFarAwayLimit)) _u1IsFarAwayLimit)
  (:u4LimitSpeed
   (&optional __u4LimitSpeed)
   (if __u4LimitSpeed (setq _u4LimitSpeed __u4LimitSpeed)) _u4LimitSpeed)
  (:ulIsJunction
   (&optional (__ulIsJunction :null))
   (if (not (eq __ulIsJunction :null)) (setq _ulIsJunction __ulIsJunction)) _ulIsJunction)
  (:u4DisJunction
   (&optional __u4DisJunction)
   (if __u4DisJunction (setq _u4DisJunction __u4DisJunction)) _u4DisJunction)
  (:ulIsFarAwayJunc
   (&optional (__ulIsFarAwayJunc :null))
   (if (not (eq __ulIsFarAwayJunc :null)) (setq _ulIsFarAwayJunc __ulIsFarAwayJunc)) _ulIsFarAwayJunc)
  (:ultrafficLightStat
   (&optional __ultrafficLightStat)
   (if __ultrafficLightStat (setq _ultrafficLightStat __ultrafficLightStat)) _ultrafficLightStat)
  (:u4Curvity
   (&optional __u4Curvity)
   (if __u4Curvity (setq _u4Curvity __u4Curvity)) _u4Curvity)
  (:u4RelativeVel
   (&optional __u4RelativeVel)
   (if __u4RelativeVel (setq _u4RelativeVel __u4RelativeVel)) _u4RelativeVel)
  (:u4RelativeDis
   (&optional __u4RelativeDis)
   (if __u4RelativeDis (setq _u4RelativeDis __u4RelativeDis)) _u4RelativeDis)
  (:serialization-length
   ()
   (+
    ;; float32 _u4LeftLen
    4
    ;; float32 _u4NextLen
    4
    ;; float32 _u4NextAgeSpeed
    4
    ;; float32 _u4NextMinSpeed
    4
    ;; float32 _u4NextMaxSpeed
    4
    ;; float32 _u4NextGradient
    4
    ;; float32 _u4NextCongest
    4
    ;; uint8 _u1RoadType
    1
    ;; float32 _u4DisLimit
    4
    ;; bool _u1IsFarAwayLimit
    1
    ;; float32 _u4LimitSpeed
    4
    ;; bool _ulIsJunction
    1
    ;; float32 _u4DisJunction
    4
    ;; bool _ulIsFarAwayJunc
    1
    ;; uint8 _ultrafficLightStat
    1
    ;; float32 _u4Curvity
    4
    ;; float32 _u4RelativeVel
    4
    ;; float32 _u4RelativeDis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u4LeftLen
       (sys::poke _u4LeftLen (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4NextLen
       (sys::poke _u4NextLen (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4NextAgeSpeed
       (sys::poke _u4NextAgeSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4NextMinSpeed
       (sys::poke _u4NextMinSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4NextMaxSpeed
       (sys::poke _u4NextMaxSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4NextGradient
       (sys::poke _u4NextGradient (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4NextCongest
       (sys::poke _u4NextCongest (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _u1RoadType
       (write-byte _u1RoadType s)
     ;; float32 _u4DisLimit
       (sys::poke _u4DisLimit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _u1IsFarAwayLimit
       (if _u1IsFarAwayLimit (write-byte -1 s) (write-byte 0 s))
     ;; float32 _u4LimitSpeed
       (sys::poke _u4LimitSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _ulIsJunction
       (if _ulIsJunction (write-byte -1 s) (write-byte 0 s))
     ;; float32 _u4DisJunction
       (sys::poke _u4DisJunction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _ulIsFarAwayJunc
       (if _ulIsFarAwayJunc (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _ultrafficLightStat
       (write-byte _ultrafficLightStat s)
     ;; float32 _u4Curvity
       (sys::poke _u4Curvity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4RelativeVel
       (sys::poke _u4RelativeVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4RelativeDis
       (sys::poke _u4RelativeDis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u4LeftLen
     (setq _u4LeftLen (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4NextLen
     (setq _u4NextLen (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4NextAgeSpeed
     (setq _u4NextAgeSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4NextMinSpeed
     (setq _u4NextMinSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4NextMaxSpeed
     (setq _u4NextMaxSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4NextGradient
     (setq _u4NextGradient (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4NextCongest
     (setq _u4NextCongest (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _u1RoadType
     (setq _u1RoadType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _u4DisLimit
     (setq _u4DisLimit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _u1IsFarAwayLimit
     (setq _u1IsFarAwayLimit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _u4LimitSpeed
     (setq _u4LimitSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _ulIsJunction
     (setq _ulIsJunction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _u4DisJunction
     (setq _u4DisJunction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _ulIsFarAwayJunc
     (setq _ulIsFarAwayJunc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _ultrafficLightStat
     (setq _ultrafficLightStat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _u4Curvity
     (setq _u4Curvity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4RelativeVel
     (setq _u4RelativeVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4RelativeDis
     (setq _u4RelativeDis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get RosAdapter::mil_amesim_signal :md5sum-) "b272e0120e62408b4b47d6764b084b50")
(setf (get RosAdapter::mil_amesim_signal :datatype-) "RosAdapter/mil_amesim_signal")
(setf (get RosAdapter::mil_amesim_signal :definition-)
      "# /** ------ MIL AMESim 测试信息描述包 ------ */

float32       u4LeftLen
float32       u4NextLen
float32       u4NextAgeSpeed
float32       u4NextMinSpeed
float32       u4NextMaxSpeed
float32       u4NextGradient
float32       u4NextCongest
uint8         u1RoadType
float32       u4DisLimit
bool          u1IsFarAwayLimit
float32       u4LimitSpeed
bool          ulIsJunction
float32       u4DisJunction
bool          ulIsFarAwayJunc
uint8         ultrafficLightStat
float32       u4Curvity
float32       u4RelativeVel
float32       u4RelativeDis
")



(provide :RosAdapter/mil_amesim_signal "b272e0120e62408b4b47d6764b084b50")


