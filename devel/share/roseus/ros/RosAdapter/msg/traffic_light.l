;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::traffic_light)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'traffic_light (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::TRAFFIC_LIGHT")
  (make-package "ROSADAPTER::TRAFFIC_LIGHT"))

(in-package "ROS")
;;//! \htmlinclude traffic_light.msg.html


(defclass RosAdapter::traffic_light
  :super ros::object
  :slots (_u4Id _u4CtrlId _u4NoPhases _u4DataSize _u4State _u4CycleTime _phases ))

(defmethod RosAdapter::traffic_light
  (:init
   (&key
    ((:u4Id __u4Id) 0)
    ((:u4CtrlId __u4CtrlId) 0)
    ((:u4NoPhases __u4NoPhases) 0)
    ((:u4DataSize __u4DataSize) 0)
    ((:u4State __u4State) 0.0)
    ((:u4CycleTime __u4CycleTime) 0.0)
    ((:phases __phases) ())
    )
   (send-super :init)
   (setq _u4Id (round __u4Id))
   (setq _u4CtrlId (round __u4CtrlId))
   (setq _u4NoPhases (round __u4NoPhases))
   (setq _u4DataSize (round __u4DataSize))
   (setq _u4State (float __u4State))
   (setq _u4CycleTime (float __u4CycleTime))
   (setq _phases __phases)
   self)
  (:u4Id
   (&optional __u4Id)
   (if __u4Id (setq _u4Id __u4Id)) _u4Id)
  (:u4CtrlId
   (&optional __u4CtrlId)
   (if __u4CtrlId (setq _u4CtrlId __u4CtrlId)) _u4CtrlId)
  (:u4NoPhases
   (&optional __u4NoPhases)
   (if __u4NoPhases (setq _u4NoPhases __u4NoPhases)) _u4NoPhases)
  (:u4DataSize
   (&optional __u4DataSize)
   (if __u4DataSize (setq _u4DataSize __u4DataSize)) _u4DataSize)
  (:u4State
   (&optional __u4State)
   (if __u4State (setq _u4State __u4State)) _u4State)
  (:u4CycleTime
   (&optional __u4CycleTime)
   (if __u4CycleTime (setq _u4CycleTime __u4CycleTime)) _u4CycleTime)
  (:phases
   (&rest __phases)
   (if (keywordp (car __phases))
       (send* _phases __phases)
     (progn
       (if __phases (setq _phases (car __phases)))
       _phases)))
  (:serialization-length
   ()
   (+
    ;; int32 _u4Id
    4
    ;; int32 _u4CtrlId
    4
    ;; uint32 _u4NoPhases
    4
    ;; uint32 _u4DataSize
    4
    ;; float32 _u4State
    4
    ;; float32 _u4CycleTime
    4
    ;; RosAdapter/traffic_light_phase[] _phases
    (apply #'+ (send-all _phases :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _u4Id
       (write-long _u4Id s)
     ;; int32 _u4CtrlId
       (write-long _u4CtrlId s)
     ;; uint32 _u4NoPhases
       (write-long _u4NoPhases s)
     ;; uint32 _u4DataSize
       (write-long _u4DataSize s)
     ;; float32 _u4State
       (sys::poke _u4State (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4CycleTime
       (sys::poke _u4CycleTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; RosAdapter/traffic_light_phase[] _phases
     (write-long (length _phases) s)
     (dolist (elem _phases)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _u4Id
     (setq _u4Id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _u4CtrlId
     (setq _u4CtrlId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4NoPhases
     (setq _u4NoPhases (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4DataSize
     (setq _u4DataSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _u4State
     (setq _u4State (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4CycleTime
     (setq _u4CycleTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; RosAdapter/traffic_light_phase[] _phases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _phases (let (r) (dotimes (i n) (push (instance RosAdapter::traffic_light_phase :init) r)) r))
     (dolist (elem- _phases)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get RosAdapter::traffic_light :md5sum-) "05f765de27ecea681bdb9de73fefe6a1")
(setf (get RosAdapter::traffic_light :datatype-) "RosAdapter/traffic_light")
(setf (get RosAdapter::traffic_light :definition-)
      "# /** ------ 交通灯信息 ------ */
int32                    u4Id
int32                    u4CtrlId
uint32                   u4NoPhases
uint32                   u4DataSize
float32                  u4State
float32                  u4CycleTime
traffic_light_phase[]    phases
================================================================================
MSG: RosAdapter/traffic_light_phase
# /** ------ 交通灯相位信息 ------ */

float32     u4Duration
uint8       u1Status   
")



(provide :RosAdapter/traffic_light "05f765de27ecea681bdb9de73fefe6a1")


