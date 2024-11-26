;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::init_param)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'init_param (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::INIT_PARAM")
  (make-package "ROSADAPTER::INIT_PARAM"))

(in-package "ROS")
;;//! \htmlinclude init_param.msg.html


(defclass RosAdapter::init_param
  :super ros::object
  :slots (_au1OpenScenario _au1OpenDrive _u8StartRoadId _u8EndRoadId _u4StartRoadS _u4EndRoadS _u4Speed _u2ScenarioId _u1StartLaneId _u1EndLaneId ))

(defmethod RosAdapter::init_param
  (:init
   (&key
    ((:au1OpenScenario __au1OpenScenario) "")
    ((:au1OpenDrive __au1OpenDrive) "")
    ((:u8StartRoadId __u8StartRoadId) 0)
    ((:u8EndRoadId __u8EndRoadId) 0)
    ((:u4StartRoadS __u4StartRoadS) 0.0)
    ((:u4EndRoadS __u4EndRoadS) 0.0)
    ((:u4Speed __u4Speed) 0.0)
    ((:u2ScenarioId __u2ScenarioId) 0)
    ((:u1StartLaneId __u1StartLaneId) 0)
    ((:u1EndLaneId __u1EndLaneId) 0)
    )
   (send-super :init)
   (setq _au1OpenScenario (string __au1OpenScenario))
   (setq _au1OpenDrive (string __au1OpenDrive))
   (setq _u8StartRoadId (round __u8StartRoadId))
   (setq _u8EndRoadId (round __u8EndRoadId))
   (setq _u4StartRoadS (float __u4StartRoadS))
   (setq _u4EndRoadS (float __u4EndRoadS))
   (setq _u4Speed (float __u4Speed))
   (setq _u2ScenarioId (round __u2ScenarioId))
   (setq _u1StartLaneId (round __u1StartLaneId))
   (setq _u1EndLaneId (round __u1EndLaneId))
   self)
  (:au1OpenScenario
   (&optional __au1OpenScenario)
   (if __au1OpenScenario (setq _au1OpenScenario __au1OpenScenario)) _au1OpenScenario)
  (:au1OpenDrive
   (&optional __au1OpenDrive)
   (if __au1OpenDrive (setq _au1OpenDrive __au1OpenDrive)) _au1OpenDrive)
  (:u8StartRoadId
   (&optional __u8StartRoadId)
   (if __u8StartRoadId (setq _u8StartRoadId __u8StartRoadId)) _u8StartRoadId)
  (:u8EndRoadId
   (&optional __u8EndRoadId)
   (if __u8EndRoadId (setq _u8EndRoadId __u8EndRoadId)) _u8EndRoadId)
  (:u4StartRoadS
   (&optional __u4StartRoadS)
   (if __u4StartRoadS (setq _u4StartRoadS __u4StartRoadS)) _u4StartRoadS)
  (:u4EndRoadS
   (&optional __u4EndRoadS)
   (if __u4EndRoadS (setq _u4EndRoadS __u4EndRoadS)) _u4EndRoadS)
  (:u4Speed
   (&optional __u4Speed)
   (if __u4Speed (setq _u4Speed __u4Speed)) _u4Speed)
  (:u2ScenarioId
   (&optional __u2ScenarioId)
   (if __u2ScenarioId (setq _u2ScenarioId __u2ScenarioId)) _u2ScenarioId)
  (:u1StartLaneId
   (&optional __u1StartLaneId)
   (if __u1StartLaneId (setq _u1StartLaneId __u1StartLaneId)) _u1StartLaneId)
  (:u1EndLaneId
   (&optional __u1EndLaneId)
   (if __u1EndLaneId (setq _u1EndLaneId __u1EndLaneId)) _u1EndLaneId)
  (:serialization-length
   ()
   (+
    ;; string _au1OpenScenario
    4 (length _au1OpenScenario)
    ;; string _au1OpenDrive
    4 (length _au1OpenDrive)
    ;; uint64 _u8StartRoadId
    8
    ;; uint64 _u8EndRoadId
    8
    ;; float32 _u4StartRoadS
    4
    ;; float32 _u4EndRoadS
    4
    ;; float32 _u4Speed
    4
    ;; uint16 _u2ScenarioId
    2
    ;; int8 _u1StartLaneId
    1
    ;; int8 _u1EndLaneId
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _au1OpenScenario
       (write-long (length _au1OpenScenario) s) (princ _au1OpenScenario s)
     ;; string _au1OpenDrive
       (write-long (length _au1OpenDrive) s) (princ _au1OpenDrive s)
     ;; uint64 _u8StartRoadId
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _u8StartRoadId (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _u8StartRoadId) (= (length (_u8StartRoadId . bv)) 2)) ;; bignum
              (write-long (ash (elt (_u8StartRoadId . bv) 0) 0) s)
              (write-long (ash (elt (_u8StartRoadId . bv) 1) -1) s))
             ((and (class _u8StartRoadId) (= (length (_u8StartRoadId . bv)) 1)) ;; big1
              (write-long (elt (_u8StartRoadId . bv) 0) s)
              (write-long (if (>= _u8StartRoadId 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _u8StartRoadId s)(write-long (if (>= _u8StartRoadId 0) 0 #xffffffff) s)))
     ;; uint64 _u8EndRoadId
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _u8EndRoadId (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _u8EndRoadId) (= (length (_u8EndRoadId . bv)) 2)) ;; bignum
              (write-long (ash (elt (_u8EndRoadId . bv) 0) 0) s)
              (write-long (ash (elt (_u8EndRoadId . bv) 1) -1) s))
             ((and (class _u8EndRoadId) (= (length (_u8EndRoadId . bv)) 1)) ;; big1
              (write-long (elt (_u8EndRoadId . bv) 0) s)
              (write-long (if (>= _u8EndRoadId 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _u8EndRoadId s)(write-long (if (>= _u8EndRoadId 0) 0 #xffffffff) s)))
     ;; float32 _u4StartRoadS
       (sys::poke _u4StartRoadS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4EndRoadS
       (sys::poke _u4EndRoadS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u4Speed
       (sys::poke _u4Speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _u2ScenarioId
       (write-word _u2ScenarioId s)
     ;; int8 _u1StartLaneId
       (write-byte _u1StartLaneId s)
     ;; int8 _u1EndLaneId
       (write-byte _u1EndLaneId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _au1OpenScenario
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1OpenScenario (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _au1OpenDrive
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1OpenDrive (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _u8StartRoadId
     
#+(or :alpha :irix6 :x86_64)
      (setf _u8StartRoadId (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _u8StartRoadId (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _u8EndRoadId
     
#+(or :alpha :irix6 :x86_64)
      (setf _u8EndRoadId (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _u8EndRoadId (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _u4StartRoadS
     (setq _u4StartRoadS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4EndRoadS
     (setq _u4EndRoadS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u4Speed
     (setq _u4Speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _u2ScenarioId
     (setq _u2ScenarioId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _u1StartLaneId
     (setq _u1StartLaneId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1StartLaneId 127) (setq _u1StartLaneId (- _u1StartLaneId 256)))
   ;; int8 _u1EndLaneId
     (setq _u1EndLaneId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1EndLaneId 127) (setq _u1EndLaneId (- _u1EndLaneId 256)))
   ;;
   self)
  )

(setf (get RosAdapter::init_param :md5sum-) "d1c91c53dd3d6cc4f662b216093d05ec")
(setf (get RosAdapter::init_param :datatype-) "RosAdapter/init_param")
(setf (get RosAdapter::init_param :definition-)
      "# /** ------ 初始化参数 ------ */

string             au1OpenScenario
string             au1OpenDrive
uint64             u8StartRoadId
uint64             u8EndRoadId
float32            u4StartRoadS
float32            u4EndRoadS
float32            u4Speed
uint16             u2ScenarioId
int8               u1StartLaneId
int8               u1EndLaneId
")



(provide :RosAdapter/init_param "d1c91c53dd3d6cc4f662b216093d05ec")


