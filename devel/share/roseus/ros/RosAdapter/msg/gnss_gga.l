;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::gnss_gga)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'gnss_gga (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::GNSS_GGA")
  (make-package "ROSADAPTER::GNSS_GGA"))

(in-package "ROS")
;;//! \htmlinclude gnss_gga.msg.html


(defclass RosAdapter::gnss_gga
  :super ros::object
  :slots (_startChar _cmd _mTime _lat _NorS _lon _EorW _mode _count _horizonprecious _geoidalheight _meter1 _height _meter2 _dataage _basestationflag _sperator _checksum ))

(defmethod RosAdapter::gnss_gga
  (:init
   (&key
    ((:startChar __startChar) 0)
    ((:cmd __cmd) (make-array 0 :initial-element 0 :element-type :char))
    ((:mTime __mTime) (make-array 0 :initial-element 0 :element-type :char))
    ((:lat __lat) 0.0)
    ((:NorS __NorS) 0)
    ((:lon __lon) 0.0)
    ((:EorW __EorW) 0)
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :char))
    ((:count __count) 0)
    ((:horizonprecious __horizonprecious) 0.0)
    ((:geoidalheight __geoidalheight) 0.0)
    ((:meter1 __meter1) 0)
    ((:height __height) 0.0)
    ((:meter2 __meter2) 0)
    ((:dataage __dataage) 0.0)
    ((:basestationflag __basestationflag) 0)
    ((:sperator __sperator) 0)
    ((:checksum __checksum) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _startChar (round __startChar))
   (setq _cmd __cmd)
   (setq _mTime __mTime)
   (setq _lat (float __lat))
   (setq _NorS (round __NorS))
   (setq _lon (float __lon))
   (setq _EorW (round __EorW))
   (setq _mode __mode)
   (setq _count (round __count))
   (setq _horizonprecious (float __horizonprecious))
   (setq _geoidalheight (float __geoidalheight))
   (setq _meter1 (round __meter1))
   (setq _height (float __height))
   (setq _meter2 (round __meter2))
   (setq _dataage (float __dataage))
   (setq _basestationflag (round __basestationflag))
   (setq _sperator (round __sperator))
   (setq _checksum __checksum)
   self)
  (:startChar
   (&optional __startChar)
   (if __startChar (setq _startChar __startChar)) _startChar)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:mTime
   (&optional __mTime)
   (if __mTime (setq _mTime __mTime)) _mTime)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:NorS
   (&optional __NorS)
   (if __NorS (setq _NorS __NorS)) _NorS)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:EorW
   (&optional __EorW)
   (if __EorW (setq _EorW __EorW)) _EorW)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:horizonprecious
   (&optional __horizonprecious)
   (if __horizonprecious (setq _horizonprecious __horizonprecious)) _horizonprecious)
  (:geoidalheight
   (&optional __geoidalheight)
   (if __geoidalheight (setq _geoidalheight __geoidalheight)) _geoidalheight)
  (:meter1
   (&optional __meter1)
   (if __meter1 (setq _meter1 __meter1)) _meter1)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:meter2
   (&optional __meter2)
   (if __meter2 (setq _meter2 __meter2)) _meter2)
  (:dataage
   (&optional __dataage)
   (if __dataage (setq _dataage __dataage)) _dataage)
  (:basestationflag
   (&optional __basestationflag)
   (if __basestationflag (setq _basestationflag __basestationflag)) _basestationflag)
  (:sperator
   (&optional __sperator)
   (if __sperator (setq _sperator __sperator)) _sperator)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; uint8 _startChar
    1
    ;; uint8[] _cmd
    (* 1    (length _cmd)) 4
    ;; uint8[] _mTime
    (* 1    (length _mTime)) 4
    ;; float64 _lat
    8
    ;; uint8 _NorS
    1
    ;; float64 _lon
    8
    ;; uint8 _EorW
    1
    ;; uint8[] _mode
    (* 1    (length _mode)) 4
    ;; int32 _count
    4
    ;; float64 _horizonprecious
    8
    ;; float64 _geoidalheight
    8
    ;; uint8 _meter1
    1
    ;; float64 _height
    8
    ;; uint8 _meter2
    1
    ;; float64 _dataage
    8
    ;; int32 _basestationflag
    4
    ;; uint8 _sperator
    1
    ;; uint8[] _checksum
    (* 1    (length _checksum)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _startChar
       (write-byte _startChar s)
     ;; uint8[] _cmd
     (write-long (length _cmd) s)
     (princ _cmd s)
     ;; uint8[] _mTime
     (write-long (length _mTime) s)
     (princ _mTime s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _NorS
       (write-byte _NorS s)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _EorW
       (write-byte _EorW s)
     ;; uint8[] _mode
     (write-long (length _mode) s)
     (princ _mode s)
     ;; int32 _count
       (write-long _count s)
     ;; float64 _horizonprecious
       (sys::poke _horizonprecious (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _geoidalheight
       (sys::poke _geoidalheight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _meter1
       (write-byte _meter1 s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _meter2
       (write-byte _meter2 s)
     ;; float64 _dataage
       (sys::poke _dataage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _basestationflag
       (write-long _basestationflag s)
     ;; uint8 _sperator
       (write-byte _sperator s)
     ;; uint8[] _checksum
     (write-long (length _checksum) s)
     (princ _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _startChar
     (setq _startChar (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _cmd
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cmd (make-array n :element-type :char))
     (replace _cmd buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _mTime
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _mTime (make-array n :element-type :char))
     (replace _mTime buf :start2 ptr-) (incf ptr- n))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _NorS
     (setq _NorS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _EorW
     (setq _EorW (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _mode
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _mode (make-array n :element-type :char))
     (replace _mode buf :start2 ptr-) (incf ptr- n))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _horizonprecious
     (setq _horizonprecious (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _geoidalheight
     (setq _geoidalheight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _meter1
     (setq _meter1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _meter2
     (setq _meter2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _dataage
     (setq _dataage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _basestationflag
     (setq _basestationflag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _sperator
     (setq _sperator (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _checksum
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _checksum (make-array n :element-type :char))
     (replace _checksum buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get RosAdapter::gnss_gga :md5sum-) "3f522481e07bd152c1ddc9897d588fb8")
(setf (get RosAdapter::gnss_gga :datatype-) "RosAdapter/gnss_gga")
(setf (get RosAdapter::gnss_gga :definition-)
      "uint8         startChar
uint8[]       cmd
uint8[]       mTime
float64       lat
uint8         NorS
float64       lon
uint8         EorW
uint8[]       mode
int32         count
float64       horizonprecious 
float64       geoidalheight
uint8         meter1
float64       height
uint8         meter2
float64       dataage
int32         basestationflag
uint8         sperator
uint8[]       checksum
")



(provide :RosAdapter/gnss_gga "3f522481e07bd152c1ddc9897d588fb8")


