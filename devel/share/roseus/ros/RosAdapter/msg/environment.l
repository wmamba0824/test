;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::environment)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'environment (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ENVIRONMENT")
  (make-package "ROSADAPTER::ENVIRONMENT"))

(in-package "ROS")
;;//! \htmlinclude environment.msg.html


(defclass RosAdapter::environment
  :super ros::object
  :slots (_u8RainIntensity _u8SnowIntensity _u8FogIntensity _u8FogVisualRange _u4TimeOfDay _u2TimeZoneMinutesWest _u2Year _u1CloudState _u1Day _u1Month ))

(defmethod RosAdapter::environment
  (:init
   (&key
    ((:u8RainIntensity __u8RainIntensity) 0.0)
    ((:u8SnowIntensity __u8SnowIntensity) 0.0)
    ((:u8FogIntensity __u8FogIntensity) 0.0)
    ((:u8FogVisualRange __u8FogVisualRange) 0.0)
    ((:u4TimeOfDay __u4TimeOfDay) 0)
    ((:u2TimeZoneMinutesWest __u2TimeZoneMinutesWest) 0)
    ((:u2Year __u2Year) 0)
    ((:u1CloudState __u1CloudState) 0)
    ((:u1Day __u1Day) 0)
    ((:u1Month __u1Month) 0)
    )
   (send-super :init)
   (setq _u8RainIntensity (float __u8RainIntensity))
   (setq _u8SnowIntensity (float __u8SnowIntensity))
   (setq _u8FogIntensity (float __u8FogIntensity))
   (setq _u8FogVisualRange (float __u8FogVisualRange))
   (setq _u4TimeOfDay (round __u4TimeOfDay))
   (setq _u2TimeZoneMinutesWest (round __u2TimeZoneMinutesWest))
   (setq _u2Year (round __u2Year))
   (setq _u1CloudState (round __u1CloudState))
   (setq _u1Day (round __u1Day))
   (setq _u1Month (round __u1Month))
   self)
  (:u8RainIntensity
   (&optional __u8RainIntensity)
   (if __u8RainIntensity (setq _u8RainIntensity __u8RainIntensity)) _u8RainIntensity)
  (:u8SnowIntensity
   (&optional __u8SnowIntensity)
   (if __u8SnowIntensity (setq _u8SnowIntensity __u8SnowIntensity)) _u8SnowIntensity)
  (:u8FogIntensity
   (&optional __u8FogIntensity)
   (if __u8FogIntensity (setq _u8FogIntensity __u8FogIntensity)) _u8FogIntensity)
  (:u8FogVisualRange
   (&optional __u8FogVisualRange)
   (if __u8FogVisualRange (setq _u8FogVisualRange __u8FogVisualRange)) _u8FogVisualRange)
  (:u4TimeOfDay
   (&optional __u4TimeOfDay)
   (if __u4TimeOfDay (setq _u4TimeOfDay __u4TimeOfDay)) _u4TimeOfDay)
  (:u2TimeZoneMinutesWest
   (&optional __u2TimeZoneMinutesWest)
   (if __u2TimeZoneMinutesWest (setq _u2TimeZoneMinutesWest __u2TimeZoneMinutesWest)) _u2TimeZoneMinutesWest)
  (:u2Year
   (&optional __u2Year)
   (if __u2Year (setq _u2Year __u2Year)) _u2Year)
  (:u1CloudState
   (&optional __u1CloudState)
   (if __u1CloudState (setq _u1CloudState __u1CloudState)) _u1CloudState)
  (:u1Day
   (&optional __u1Day)
   (if __u1Day (setq _u1Day __u1Day)) _u1Day)
  (:u1Month
   (&optional __u1Month)
   (if __u1Month (setq _u1Month __u1Month)) _u1Month)
  (:serialization-length
   ()
   (+
    ;; float64 _u8RainIntensity
    8
    ;; float64 _u8SnowIntensity
    8
    ;; float64 _u8FogIntensity
    8
    ;; float64 _u8FogVisualRange
    8
    ;; uint32 _u4TimeOfDay
    4
    ;; int16 _u2TimeZoneMinutesWest
    2
    ;; uint16 _u2Year
    2
    ;; uint8 _u1CloudState
    1
    ;; uint8 _u1Day
    1
    ;; uint8 _u1Month
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u8RainIntensity
       (sys::poke _u8RainIntensity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8SnowIntensity
       (sys::poke _u8SnowIntensity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8FogIntensity
       (sys::poke _u8FogIntensity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8FogVisualRange
       (sys::poke _u8FogVisualRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _u4TimeOfDay
       (write-long _u4TimeOfDay s)
     ;; int16 _u2TimeZoneMinutesWest
       (write-word _u2TimeZoneMinutesWest s)
     ;; uint16 _u2Year
       (write-word _u2Year s)
     ;; uint8 _u1CloudState
       (write-byte _u1CloudState s)
     ;; uint8 _u1Day
       (write-byte _u1Day s)
     ;; uint8 _u1Month
       (write-byte _u1Month s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8RainIntensity
     (setq _u8RainIntensity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8SnowIntensity
     (setq _u8SnowIntensity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8FogIntensity
     (setq _u8FogIntensity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8FogVisualRange
     (setq _u8FogVisualRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _u4TimeOfDay
     (setq _u4TimeOfDay (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _u2TimeZoneMinutesWest
     (setq _u2TimeZoneMinutesWest (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _u2Year
     (setq _u2Year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _u1CloudState
     (setq _u1CloudState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Day
     (setq _u1Day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1Month
     (setq _u1Month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::environment :md5sum-) "dd90b74b2548174d66e34a98a2d7dbde")
(setf (get RosAdapter::environment :datatype-) "RosAdapter/environment")
(setf (get RosAdapter::environment :definition-)
      "# /** ------ 环境信息 ------ */
float64      u8RainIntensity
float64      u8SnowIntensity
float64      u8FogIntensity
float64      u8FogVisualRange
uint32       u4TimeOfDay
int16        u2TimeZoneMinutesWest
uint16       u2Year
uint8        u1CloudState
uint8        u1Day
uint8        u1Month
")



(provide :RosAdapter/environment "dd90b74b2548174d66e34a98a2d7dbde")


