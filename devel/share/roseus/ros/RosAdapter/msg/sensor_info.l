;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::sensor_info)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'sensor_info (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::SENSOR_INFO")
  (make-package "ROSADAPTER::SENSOR_INFO"))

(in-package "ROS")
;;//! \htmlinclude sensor_info.msg.html


(defclass RosAdapter::sensor_info
  :super ros::object
  :slots (_sPos _sOriginCoordSys _au1Name _u8HostId _u8Id _au4FovHV _au4ClipNF _au4FovOffHV _u1Type _u1ModelType _u4IdealFreq _u4ResL _u4ResV _u4SenSizeL _u4SenSizeW _u4LenFd _u4DistCenL _u4DistCenW _u4DistParK1 _u4DistParK2 ))

(defmethod RosAdapter::sensor_info
  (:init
   (&key
    ((:sPos __sPos) (instance RosAdapter::coord :init))
    ((:sOriginCoordSys __sOriginCoordSys) (instance RosAdapter::coord :init))
    ((:au1Name __au1Name) "")
    ((:u8HostId __u8HostId) 0)
    ((:u8Id __u8Id) 0)
    ((:au4FovHV __au4FovHV) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:au4ClipNF __au4ClipNF) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:au4FovOffHV __au4FovOffHV) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:u1Type __u1Type) 0)
    ((:u1ModelType __u1ModelType) 0)
    ((:u4IdealFreq __u4IdealFreq) 0.0)
    ((:u4ResL __u4ResL) 0)
    ((:u4ResV __u4ResV) 0)
    ((:u4SenSizeL __u4SenSizeL) 0.0)
    ((:u4SenSizeW __u4SenSizeW) 0.0)
    ((:u4LenFd __u4LenFd) 0.0)
    ((:u4DistCenL __u4DistCenL) 0.0)
    ((:u4DistCenW __u4DistCenW) 0.0)
    ((:u4DistParK1 __u4DistParK1) 0.0)
    ((:u4DistParK2 __u4DistParK2) 0.0)
    )
   (send-super :init)
   (setq _sPos __sPos)
   (setq _sOriginCoordSys __sOriginCoordSys)
   (setq _au1Name (string __au1Name))
   (setq _u8HostId (round __u8HostId))
   (setq _u8Id (round __u8Id))
   (setq _au4FovHV __au4FovHV)
   (setq _au4ClipNF __au4ClipNF)
   (setq _au4FovOffHV __au4FovOffHV)
   (setq _u1Type (round __u1Type))
   (setq _u1ModelType (round __u1ModelType))
   (setq _u4IdealFreq (float __u4IdealFreq))
   (setq _u4ResL (round __u4ResL))
   (setq _u4ResV (round __u4ResV))
   (setq _u4SenSizeL (float __u4SenSizeL))
   (setq _u4SenSizeW (float __u4SenSizeW))
   (setq _u4LenFd (float __u4LenFd))
   (setq _u4DistCenL (float __u4DistCenL))
   (setq _u4DistCenW (float __u4DistCenW))
   (setq _u4DistParK1 (float __u4DistParK1))
   (setq _u4DistParK2 (float __u4DistParK2))
   self)
  (:sPos
   (&rest __sPos)
   (if (keywordp (car __sPos))
       (send* _sPos __sPos)
     (progn
       (if __sPos (setq _sPos (car __sPos)))
       _sPos)))
  (:sOriginCoordSys
   (&rest __sOriginCoordSys)
   (if (keywordp (car __sOriginCoordSys))
       (send* _sOriginCoordSys __sOriginCoordSys)
     (progn
       (if __sOriginCoordSys (setq _sOriginCoordSys (car __sOriginCoordSys)))
       _sOriginCoordSys)))
  (:au1Name
   (&optional __au1Name)
   (if __au1Name (setq _au1Name __au1Name)) _au1Name)
  (:u8HostId
   (&optional __u8HostId)
   (if __u8HostId (setq _u8HostId __u8HostId)) _u8HostId)
  (:u8Id
   (&optional __u8Id)
   (if __u8Id (setq _u8Id __u8Id)) _u8Id)
  (:au4FovHV
   (&optional __au4FovHV)
   (if __au4FovHV (setq _au4FovHV __au4FovHV)) _au4FovHV)
  (:au4ClipNF
   (&optional __au4ClipNF)
   (if __au4ClipNF (setq _au4ClipNF __au4ClipNF)) _au4ClipNF)
  (:au4FovOffHV
   (&optional __au4FovOffHV)
   (if __au4FovOffHV (setq _au4FovOffHV __au4FovOffHV)) _au4FovOffHV)
  (:u1Type
   (&optional __u1Type)
   (if __u1Type (setq _u1Type __u1Type)) _u1Type)
  (:u1ModelType
   (&optional __u1ModelType)
   (if __u1ModelType (setq _u1ModelType __u1ModelType)) _u1ModelType)
  (:u4IdealFreq
   (&optional __u4IdealFreq)
   (if __u4IdealFreq (setq _u4IdealFreq __u4IdealFreq)) _u4IdealFreq)
  (:u4ResL
   (&optional __u4ResL)
   (if __u4ResL (setq _u4ResL __u4ResL)) _u4ResL)
  (:u4ResV
   (&optional __u4ResV)
   (if __u4ResV (setq _u4ResV __u4ResV)) _u4ResV)
  (:u4SenSizeL
   (&optional __u4SenSizeL)
   (if __u4SenSizeL (setq _u4SenSizeL __u4SenSizeL)) _u4SenSizeL)
  (:u4SenSizeW
   (&optional __u4SenSizeW)
   (if __u4SenSizeW (setq _u4SenSizeW __u4SenSizeW)) _u4SenSizeW)
  (:u4LenFd
   (&optional __u4LenFd)
   (if __u4LenFd (setq _u4LenFd __u4LenFd)) _u4LenFd)
  (:u4DistCenL
   (&optional __u4DistCenL)
   (if __u4DistCenL (setq _u4DistCenL __u4DistCenL)) _u4DistCenL)
  (:u4DistCenW
   (&optional __u4DistCenW)
   (if __u4DistCenW (setq _u4DistCenW __u4DistCenW)) _u4DistCenW)
  (:u4DistParK1
   (&optional __u4DistParK1)
   (if __u4DistParK1 (setq _u4DistParK1 __u4DistParK1)) _u4DistParK1)
  (:u4DistParK2
   (&optional __u4DistParK2)
   (if __u4DistParK2 (setq _u4DistParK2 __u4DistParK2)) _u4DistParK2)
  (:serialization-length
   ()
   (+
    ;; RosAdapter/coord _sPos
    (send _sPos :serialization-length)
    ;; RosAdapter/coord _sOriginCoordSys
    (send _sOriginCoordSys :serialization-length)
    ;; string _au1Name
    4 (length _au1Name)
    ;; uint32 _u8HostId
    4
    ;; uint32 _u8Id
    4
    ;; float32[] _au4FovHV
    (* 4    (length _au4FovHV)) 4
    ;; float32[] _au4ClipNF
    (* 4    (length _au4ClipNF)) 4
    ;; float32[] _au4FovOffHV
    (* 4    (length _au4FovOffHV)) 4
    ;; uint8 _u1Type
    1
    ;; uint8 _u1ModelType
    1
    ;; float64 _u4IdealFreq
    8
    ;; uint32 _u4ResL
    4
    ;; uint32 _u4ResV
    4
    ;; float64 _u4SenSizeL
    8
    ;; float64 _u4SenSizeW
    8
    ;; float64 _u4LenFd
    8
    ;; float64 _u4DistCenL
    8
    ;; float64 _u4DistCenW
    8
    ;; float64 _u4DistParK1
    8
    ;; float64 _u4DistParK2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/coord _sPos
       (send _sPos :serialize s)
     ;; RosAdapter/coord _sOriginCoordSys
       (send _sOriginCoordSys :serialize s)
     ;; string _au1Name
       (write-long (length _au1Name) s) (princ _au1Name s)
     ;; uint32 _u8HostId
       (write-long _u8HostId s)
     ;; uint32 _u8Id
       (write-long _u8Id s)
     ;; float32[] _au4FovHV
     (write-long (length _au4FovHV) s)
     (dotimes (i (length _au4FovHV))
       (sys::poke (elt _au4FovHV i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _au4ClipNF
     (write-long (length _au4ClipNF) s)
     (dotimes (i (length _au4ClipNF))
       (sys::poke (elt _au4ClipNF i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _au4FovOffHV
     (write-long (length _au4FovOffHV) s)
     (dotimes (i (length _au4FovOffHV))
       (sys::poke (elt _au4FovOffHV i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _u1Type
       (write-byte _u1Type s)
     ;; uint8 _u1ModelType
       (write-byte _u1ModelType s)
     ;; float64 _u4IdealFreq
       (sys::poke _u4IdealFreq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _u4ResL
       (write-long _u4ResL s)
     ;; uint32 _u4ResV
       (write-long _u4ResV s)
     ;; float64 _u4SenSizeL
       (sys::poke _u4SenSizeL (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u4SenSizeW
       (sys::poke _u4SenSizeW (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u4LenFd
       (sys::poke _u4LenFd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u4DistCenL
       (sys::poke _u4DistCenL (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u4DistCenW
       (sys::poke _u4DistCenW (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u4DistParK1
       (sys::poke _u4DistParK1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u4DistParK2
       (sys::poke _u4DistParK2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/coord _sPos
     (send _sPos :deserialize buf ptr-) (incf ptr- (send _sPos :serialization-length))
   ;; RosAdapter/coord _sOriginCoordSys
     (send _sOriginCoordSys :deserialize buf ptr-) (incf ptr- (send _sOriginCoordSys :serialization-length))
   ;; string _au1Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _au1Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _u8HostId
     (setq _u8HostId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u8Id
     (setq _u8Id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _au4FovHV
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au4FovHV (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _au4FovHV i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _au4ClipNF
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au4ClipNF (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _au4ClipNF i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _au4FovOffHV
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _au4FovOffHV (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _au4FovOffHV i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _u1Type
     (setq _u1Type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1ModelType
     (setq _u1ModelType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _u4IdealFreq
     (setq _u4IdealFreq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _u4ResL
     (setq _u4ResL (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _u4ResV
     (setq _u4ResV (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _u4SenSizeL
     (setq _u4SenSizeL (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u4SenSizeW
     (setq _u4SenSizeW (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u4LenFd
     (setq _u4LenFd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u4DistCenL
     (setq _u4DistCenL (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u4DistCenW
     (setq _u4DistCenW (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u4DistParK1
     (setq _u4DistParK1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u4DistParK2
     (setq _u4DistParK2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get RosAdapter::sensor_info :md5sum-) "e18318bc223ad24176de445906b697bb")
(setf (get RosAdapter::sensor_info :datatype-) "RosAdapter/sensor_info")
(setf (get RosAdapter::sensor_info :definition-)
      "# /** ------ 传感器定义和状态 ------ */
coord      sPos
coord      sOriginCoordSys
string     au1Name
uint32     u8HostId
uint32     u8Id
float32[]  au4FovHV
float32[]  au4ClipNF
float32[]  au4FovOffHV
uint8      u1Type                   
uint8      u1ModelType
float64	   u4IdealFreq
uint32	   u4ResL
uint32     u4ResV
float64	   u4SenSizeL
float64	   u4SenSizeW
float64	   u4LenFd
float64	   u4DistCenL
float64	   u4DistCenW
float64	   u4DistParK1
float64	   u4DistParK2

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



(provide :RosAdapter/sensor_info "e18318bc223ad24176de445906b697bb")


