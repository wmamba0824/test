;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::rosSimproToAD)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'rosSimproToAD (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::ROSSIMPROTOAD")
  (make-package "ROSADAPTER::ROSSIMPROTOAD"))

(in-package "ROS")
;;//! \htmlinclude rosSimproToAD.msg.html


(defclass RosAdapter::rosSimproToAD
  :super ros::object
  :slots (_head _laneInfos _sensorStates _sensorObjects _contactPoints _trafficSigns _roadStates _environments _trafficLights _roadQueries _egoStates _milObjStates _milRoadMarks _initParams _milAmesimSignals _activateControllers _assignControllers _overrideControllers _customCommands _parkingSpaces _driverCtrls _syncs _imuDatas _gnssGgaS _uwbDatas _modelOutlines _rsuVnfpInfo ))

(defmethod RosAdapter::rosSimproToAD
  (:init
   (&key
    ((:head __head) (instance RosAdapter::header :init))
    ((:laneInfos __laneInfos) ())
    ((:sensorStates __sensorStates) ())
    ((:sensorObjects __sensorObjects) ())
    ((:contactPoints __contactPoints) ())
    ((:trafficSigns __trafficSigns) ())
    ((:roadStates __roadStates) ())
    ((:environments __environments) ())
    ((:trafficLights __trafficLights) ())
    ((:roadQueries __roadQueries) ())
    ((:egoStates __egoStates) ())
    ((:milObjStates __milObjStates) ())
    ((:milRoadMarks __milRoadMarks) ())
    ((:initParams __initParams) ())
    ((:milAmesimSignals __milAmesimSignals) ())
    ((:activateControllers __activateControllers) ())
    ((:assignControllers __assignControllers) ())
    ((:overrideControllers __overrideControllers) ())
    ((:customCommands __customCommands) ())
    ((:parkingSpaces __parkingSpaces) ())
    ((:driverCtrls __driverCtrls) ())
    ((:syncs __syncs) ())
    ((:imuDatas __imuDatas) ())
    ((:gnssGgaS __gnssGgaS) ())
    ((:uwbDatas __uwbDatas) ())
    ((:modelOutlines __modelOutlines) ())
    ((:rsuVnfpInfo __rsuVnfpInfo) (instance RosAdapter::rsu_vnfp_info :init))
    )
   (send-super :init)
   (setq _head __head)
   (setq _laneInfos __laneInfos)
   (setq _sensorStates __sensorStates)
   (setq _sensorObjects __sensorObjects)
   (setq _contactPoints __contactPoints)
   (setq _trafficSigns __trafficSigns)
   (setq _roadStates __roadStates)
   (setq _environments __environments)
   (setq _trafficLights __trafficLights)
   (setq _roadQueries __roadQueries)
   (setq _egoStates __egoStates)
   (setq _milObjStates __milObjStates)
   (setq _milRoadMarks __milRoadMarks)
   (setq _initParams __initParams)
   (setq _milAmesimSignals __milAmesimSignals)
   (setq _activateControllers __activateControllers)
   (setq _assignControllers __assignControllers)
   (setq _overrideControllers __overrideControllers)
   (setq _customCommands __customCommands)
   (setq _parkingSpaces __parkingSpaces)
   (setq _driverCtrls __driverCtrls)
   (setq _syncs __syncs)
   (setq _imuDatas __imuDatas)
   (setq _gnssGgaS __gnssGgaS)
   (setq _uwbDatas __uwbDatas)
   (setq _modelOutlines __modelOutlines)
   (setq _rsuVnfpInfo __rsuVnfpInfo)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:laneInfos
   (&rest __laneInfos)
   (if (keywordp (car __laneInfos))
       (send* _laneInfos __laneInfos)
     (progn
       (if __laneInfos (setq _laneInfos (car __laneInfos)))
       _laneInfos)))
  (:sensorStates
   (&rest __sensorStates)
   (if (keywordp (car __sensorStates))
       (send* _sensorStates __sensorStates)
     (progn
       (if __sensorStates (setq _sensorStates (car __sensorStates)))
       _sensorStates)))
  (:sensorObjects
   (&rest __sensorObjects)
   (if (keywordp (car __sensorObjects))
       (send* _sensorObjects __sensorObjects)
     (progn
       (if __sensorObjects (setq _sensorObjects (car __sensorObjects)))
       _sensorObjects)))
  (:contactPoints
   (&rest __contactPoints)
   (if (keywordp (car __contactPoints))
       (send* _contactPoints __contactPoints)
     (progn
       (if __contactPoints (setq _contactPoints (car __contactPoints)))
       _contactPoints)))
  (:trafficSigns
   (&rest __trafficSigns)
   (if (keywordp (car __trafficSigns))
       (send* _trafficSigns __trafficSigns)
     (progn
       (if __trafficSigns (setq _trafficSigns (car __trafficSigns)))
       _trafficSigns)))
  (:roadStates
   (&rest __roadStates)
   (if (keywordp (car __roadStates))
       (send* _roadStates __roadStates)
     (progn
       (if __roadStates (setq _roadStates (car __roadStates)))
       _roadStates)))
  (:environments
   (&rest __environments)
   (if (keywordp (car __environments))
       (send* _environments __environments)
     (progn
       (if __environments (setq _environments (car __environments)))
       _environments)))
  (:trafficLights
   (&rest __trafficLights)
   (if (keywordp (car __trafficLights))
       (send* _trafficLights __trafficLights)
     (progn
       (if __trafficLights (setq _trafficLights (car __trafficLights)))
       _trafficLights)))
  (:roadQueries
   (&rest __roadQueries)
   (if (keywordp (car __roadQueries))
       (send* _roadQueries __roadQueries)
     (progn
       (if __roadQueries (setq _roadQueries (car __roadQueries)))
       _roadQueries)))
  (:egoStates
   (&rest __egoStates)
   (if (keywordp (car __egoStates))
       (send* _egoStates __egoStates)
     (progn
       (if __egoStates (setq _egoStates (car __egoStates)))
       _egoStates)))
  (:milObjStates
   (&rest __milObjStates)
   (if (keywordp (car __milObjStates))
       (send* _milObjStates __milObjStates)
     (progn
       (if __milObjStates (setq _milObjStates (car __milObjStates)))
       _milObjStates)))
  (:milRoadMarks
   (&rest __milRoadMarks)
   (if (keywordp (car __milRoadMarks))
       (send* _milRoadMarks __milRoadMarks)
     (progn
       (if __milRoadMarks (setq _milRoadMarks (car __milRoadMarks)))
       _milRoadMarks)))
  (:initParams
   (&rest __initParams)
   (if (keywordp (car __initParams))
       (send* _initParams __initParams)
     (progn
       (if __initParams (setq _initParams (car __initParams)))
       _initParams)))
  (:milAmesimSignals
   (&rest __milAmesimSignals)
   (if (keywordp (car __milAmesimSignals))
       (send* _milAmesimSignals __milAmesimSignals)
     (progn
       (if __milAmesimSignals (setq _milAmesimSignals (car __milAmesimSignals)))
       _milAmesimSignals)))
  (:activateControllers
   (&rest __activateControllers)
   (if (keywordp (car __activateControllers))
       (send* _activateControllers __activateControllers)
     (progn
       (if __activateControllers (setq _activateControllers (car __activateControllers)))
       _activateControllers)))
  (:assignControllers
   (&rest __assignControllers)
   (if (keywordp (car __assignControllers))
       (send* _assignControllers __assignControllers)
     (progn
       (if __assignControllers (setq _assignControllers (car __assignControllers)))
       _assignControllers)))
  (:overrideControllers
   (&rest __overrideControllers)
   (if (keywordp (car __overrideControllers))
       (send* _overrideControllers __overrideControllers)
     (progn
       (if __overrideControllers (setq _overrideControllers (car __overrideControllers)))
       _overrideControllers)))
  (:customCommands
   (&rest __customCommands)
   (if (keywordp (car __customCommands))
       (send* _customCommands __customCommands)
     (progn
       (if __customCommands (setq _customCommands (car __customCommands)))
       _customCommands)))
  (:parkingSpaces
   (&rest __parkingSpaces)
   (if (keywordp (car __parkingSpaces))
       (send* _parkingSpaces __parkingSpaces)
     (progn
       (if __parkingSpaces (setq _parkingSpaces (car __parkingSpaces)))
       _parkingSpaces)))
  (:driverCtrls
   (&rest __driverCtrls)
   (if (keywordp (car __driverCtrls))
       (send* _driverCtrls __driverCtrls)
     (progn
       (if __driverCtrls (setq _driverCtrls (car __driverCtrls)))
       _driverCtrls)))
  (:syncs
   (&rest __syncs)
   (if (keywordp (car __syncs))
       (send* _syncs __syncs)
     (progn
       (if __syncs (setq _syncs (car __syncs)))
       _syncs)))
  (:imuDatas
   (&rest __imuDatas)
   (if (keywordp (car __imuDatas))
       (send* _imuDatas __imuDatas)
     (progn
       (if __imuDatas (setq _imuDatas (car __imuDatas)))
       _imuDatas)))
  (:gnssGgaS
   (&rest __gnssGgaS)
   (if (keywordp (car __gnssGgaS))
       (send* _gnssGgaS __gnssGgaS)
     (progn
       (if __gnssGgaS (setq _gnssGgaS (car __gnssGgaS)))
       _gnssGgaS)))
  (:uwbDatas
   (&rest __uwbDatas)
   (if (keywordp (car __uwbDatas))
       (send* _uwbDatas __uwbDatas)
     (progn
       (if __uwbDatas (setq _uwbDatas (car __uwbDatas)))
       _uwbDatas)))
  (:modelOutlines
   (&rest __modelOutlines)
   (if (keywordp (car __modelOutlines))
       (send* _modelOutlines __modelOutlines)
     (progn
       (if __modelOutlines (setq _modelOutlines (car __modelOutlines)))
       _modelOutlines)))
  (:rsuVnfpInfo
   (&rest __rsuVnfpInfo)
   (if (keywordp (car __rsuVnfpInfo))
       (send* _rsuVnfpInfo __rsuVnfpInfo)
     (progn
       (if __rsuVnfpInfo (setq _rsuVnfpInfo (car __rsuVnfpInfo)))
       _rsuVnfpInfo)))
  (:serialization-length
   ()
   (+
    ;; RosAdapter/header _head
    (send _head :serialization-length)
    ;; RosAdapter/lane_info[] _laneInfos
    (apply #'+ (send-all _laneInfos :serialization-length)) 4
    ;; RosAdapter/sensor_info[] _sensorStates
    (apply #'+ (send-all _sensorStates :serialization-length)) 4
    ;; RosAdapter/sensor_detection_info[] _sensorObjects
    (apply #'+ (send-all _sensorObjects :serialization-length)) 4
    ;; RosAdapter/contact_point[] _contactPoints
    (apply #'+ (send-all _contactPoints :serialization-length)) 4
    ;; RosAdapter/traffic_sign[] _trafficSigns
    (apply #'+ (send-all _trafficSigns :serialization-length)) 4
    ;; RosAdapter/road_state[] _roadStates
    (apply #'+ (send-all _roadStates :serialization-length)) 4
    ;; RosAdapter/environment[] _environments
    (apply #'+ (send-all _environments :serialization-length)) 4
    ;; RosAdapter/traffic_light[] _trafficLights
    (apply #'+ (send-all _trafficLights :serialization-length)) 4
    ;; RosAdapter/road_query[] _roadQueries
    (apply #'+ (send-all _roadQueries :serialization-length)) 4
    ;; RosAdapter/mil_ego_state[] _egoStates
    (apply #'+ (send-all _egoStates :serialization-length)) 4
    ;; RosAdapter/mil_object_state[] _milObjStates
    (apply #'+ (send-all _milObjStates :serialization-length)) 4
    ;; RosAdapter/mil_roadmark[] _milRoadMarks
    (apply #'+ (send-all _milRoadMarks :serialization-length)) 4
    ;; RosAdapter/init_param[] _initParams
    (apply #'+ (send-all _initParams :serialization-length)) 4
    ;; RosAdapter/mil_amesim_signal[] _milAmesimSignals
    (apply #'+ (send-all _milAmesimSignals :serialization-length)) 4
    ;; RosAdapter/activate_controller[] _activateControllers
    (apply #'+ (send-all _activateControllers :serialization-length)) 4
    ;; RosAdapter/assign_controller[] _assignControllers
    (apply #'+ (send-all _assignControllers :serialization-length)) 4
    ;; RosAdapter/override_controller[] _overrideControllers
    (apply #'+ (send-all _overrideControllers :serialization-length)) 4
    ;; RosAdapter/custom_command[] _customCommands
    (apply #'+ (send-all _customCommands :serialization-length)) 4
    ;; RosAdapter/parkingSpace[] _parkingSpaces
    (apply #'+ (send-all _parkingSpaces :serialization-length)) 4
    ;; RosAdapter/driver_ctrl[] _driverCtrls
    (apply #'+ (send-all _driverCtrls :serialization-length)) 4
    ;; RosAdapter/sync[] _syncs
    (apply #'+ (send-all _syncs :serialization-length)) 4
    ;; RosAdapter/imu_data[] _imuDatas
    (apply #'+ (send-all _imuDatas :serialization-length)) 4
    ;; RosAdapter/gnss_gga[] _gnssGgaS
    (apply #'+ (send-all _gnssGgaS :serialization-length)) 4
    ;; RosAdapter/uwb_data[] _uwbDatas
    (apply #'+ (send-all _uwbDatas :serialization-length)) 4
    ;; RosAdapter/model_outline[] _modelOutlines
    (apply #'+ (send-all _modelOutlines :serialization-length)) 4
    ;; RosAdapter/rsu_vnfp_info _rsuVnfpInfo
    (send _rsuVnfpInfo :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; RosAdapter/header _head
       (send _head :serialize s)
     ;; RosAdapter/lane_info[] _laneInfos
     (write-long (length _laneInfos) s)
     (dolist (elem _laneInfos)
       (send elem :serialize s)
       )
     ;; RosAdapter/sensor_info[] _sensorStates
     (write-long (length _sensorStates) s)
     (dolist (elem _sensorStates)
       (send elem :serialize s)
       )
     ;; RosAdapter/sensor_detection_info[] _sensorObjects
     (write-long (length _sensorObjects) s)
     (dolist (elem _sensorObjects)
       (send elem :serialize s)
       )
     ;; RosAdapter/contact_point[] _contactPoints
     (write-long (length _contactPoints) s)
     (dolist (elem _contactPoints)
       (send elem :serialize s)
       )
     ;; RosAdapter/traffic_sign[] _trafficSigns
     (write-long (length _trafficSigns) s)
     (dolist (elem _trafficSigns)
       (send elem :serialize s)
       )
     ;; RosAdapter/road_state[] _roadStates
     (write-long (length _roadStates) s)
     (dolist (elem _roadStates)
       (send elem :serialize s)
       )
     ;; RosAdapter/environment[] _environments
     (write-long (length _environments) s)
     (dolist (elem _environments)
       (send elem :serialize s)
       )
     ;; RosAdapter/traffic_light[] _trafficLights
     (write-long (length _trafficLights) s)
     (dolist (elem _trafficLights)
       (send elem :serialize s)
       )
     ;; RosAdapter/road_query[] _roadQueries
     (write-long (length _roadQueries) s)
     (dolist (elem _roadQueries)
       (send elem :serialize s)
       )
     ;; RosAdapter/mil_ego_state[] _egoStates
     (write-long (length _egoStates) s)
     (dolist (elem _egoStates)
       (send elem :serialize s)
       )
     ;; RosAdapter/mil_object_state[] _milObjStates
     (write-long (length _milObjStates) s)
     (dolist (elem _milObjStates)
       (send elem :serialize s)
       )
     ;; RosAdapter/mil_roadmark[] _milRoadMarks
     (write-long (length _milRoadMarks) s)
     (dolist (elem _milRoadMarks)
       (send elem :serialize s)
       )
     ;; RosAdapter/init_param[] _initParams
     (write-long (length _initParams) s)
     (dolist (elem _initParams)
       (send elem :serialize s)
       )
     ;; RosAdapter/mil_amesim_signal[] _milAmesimSignals
     (write-long (length _milAmesimSignals) s)
     (dolist (elem _milAmesimSignals)
       (send elem :serialize s)
       )
     ;; RosAdapter/activate_controller[] _activateControllers
     (write-long (length _activateControllers) s)
     (dolist (elem _activateControllers)
       (send elem :serialize s)
       )
     ;; RosAdapter/assign_controller[] _assignControllers
     (write-long (length _assignControllers) s)
     (dolist (elem _assignControllers)
       (send elem :serialize s)
       )
     ;; RosAdapter/override_controller[] _overrideControllers
     (write-long (length _overrideControllers) s)
     (dolist (elem _overrideControllers)
       (send elem :serialize s)
       )
     ;; RosAdapter/custom_command[] _customCommands
     (write-long (length _customCommands) s)
     (dolist (elem _customCommands)
       (send elem :serialize s)
       )
     ;; RosAdapter/parkingSpace[] _parkingSpaces
     (write-long (length _parkingSpaces) s)
     (dolist (elem _parkingSpaces)
       (send elem :serialize s)
       )
     ;; RosAdapter/driver_ctrl[] _driverCtrls
     (write-long (length _driverCtrls) s)
     (dolist (elem _driverCtrls)
       (send elem :serialize s)
       )
     ;; RosAdapter/sync[] _syncs
     (write-long (length _syncs) s)
     (dolist (elem _syncs)
       (send elem :serialize s)
       )
     ;; RosAdapter/imu_data[] _imuDatas
     (write-long (length _imuDatas) s)
     (dolist (elem _imuDatas)
       (send elem :serialize s)
       )
     ;; RosAdapter/gnss_gga[] _gnssGgaS
     (write-long (length _gnssGgaS) s)
     (dolist (elem _gnssGgaS)
       (send elem :serialize s)
       )
     ;; RosAdapter/uwb_data[] _uwbDatas
     (write-long (length _uwbDatas) s)
     (dolist (elem _uwbDatas)
       (send elem :serialize s)
       )
     ;; RosAdapter/model_outline[] _modelOutlines
     (write-long (length _modelOutlines) s)
     (dolist (elem _modelOutlines)
       (send elem :serialize s)
       )
     ;; RosAdapter/rsu_vnfp_info _rsuVnfpInfo
       (send _rsuVnfpInfo :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; RosAdapter/header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; RosAdapter/lane_info[] _laneInfos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laneInfos (let (r) (dotimes (i n) (push (instance RosAdapter::lane_info :init) r)) r))
     (dolist (elem- _laneInfos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/sensor_info[] _sensorStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensorStates (let (r) (dotimes (i n) (push (instance RosAdapter::sensor_info :init) r)) r))
     (dolist (elem- _sensorStates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/sensor_detection_info[] _sensorObjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensorObjects (let (r) (dotimes (i n) (push (instance RosAdapter::sensor_detection_info :init) r)) r))
     (dolist (elem- _sensorObjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/contact_point[] _contactPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contactPoints (let (r) (dotimes (i n) (push (instance RosAdapter::contact_point :init) r)) r))
     (dolist (elem- _contactPoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/traffic_sign[] _trafficSigns
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trafficSigns (let (r) (dotimes (i n) (push (instance RosAdapter::traffic_sign :init) r)) r))
     (dolist (elem- _trafficSigns)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/road_state[] _roadStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roadStates (let (r) (dotimes (i n) (push (instance RosAdapter::road_state :init) r)) r))
     (dolist (elem- _roadStates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/environment[] _environments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _environments (let (r) (dotimes (i n) (push (instance RosAdapter::environment :init) r)) r))
     (dolist (elem- _environments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/traffic_light[] _trafficLights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trafficLights (let (r) (dotimes (i n) (push (instance RosAdapter::traffic_light :init) r)) r))
     (dolist (elem- _trafficLights)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/road_query[] _roadQueries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roadQueries (let (r) (dotimes (i n) (push (instance RosAdapter::road_query :init) r)) r))
     (dolist (elem- _roadQueries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/mil_ego_state[] _egoStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _egoStates (let (r) (dotimes (i n) (push (instance RosAdapter::mil_ego_state :init) r)) r))
     (dolist (elem- _egoStates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/mil_object_state[] _milObjStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _milObjStates (let (r) (dotimes (i n) (push (instance RosAdapter::mil_object_state :init) r)) r))
     (dolist (elem- _milObjStates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/mil_roadmark[] _milRoadMarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _milRoadMarks (let (r) (dotimes (i n) (push (instance RosAdapter::mil_roadmark :init) r)) r))
     (dolist (elem- _milRoadMarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/init_param[] _initParams
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _initParams (let (r) (dotimes (i n) (push (instance RosAdapter::init_param :init) r)) r))
     (dolist (elem- _initParams)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/mil_amesim_signal[] _milAmesimSignals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _milAmesimSignals (let (r) (dotimes (i n) (push (instance RosAdapter::mil_amesim_signal :init) r)) r))
     (dolist (elem- _milAmesimSignals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/activate_controller[] _activateControllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activateControllers (let (r) (dotimes (i n) (push (instance RosAdapter::activate_controller :init) r)) r))
     (dolist (elem- _activateControllers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/assign_controller[] _assignControllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _assignControllers (let (r) (dotimes (i n) (push (instance RosAdapter::assign_controller :init) r)) r))
     (dolist (elem- _assignControllers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/override_controller[] _overrideControllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _overrideControllers (let (r) (dotimes (i n) (push (instance RosAdapter::override_controller :init) r)) r))
     (dolist (elem- _overrideControllers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/custom_command[] _customCommands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _customCommands (let (r) (dotimes (i n) (push (instance RosAdapter::custom_command :init) r)) r))
     (dolist (elem- _customCommands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/parkingSpace[] _parkingSpaces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parkingSpaces (let (r) (dotimes (i n) (push (instance RosAdapter::parkingSpace :init) r)) r))
     (dolist (elem- _parkingSpaces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/driver_ctrl[] _driverCtrls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _driverCtrls (let (r) (dotimes (i n) (push (instance RosAdapter::driver_ctrl :init) r)) r))
     (dolist (elem- _driverCtrls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/sync[] _syncs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _syncs (let (r) (dotimes (i n) (push (instance RosAdapter::sync :init) r)) r))
     (dolist (elem- _syncs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/imu_data[] _imuDatas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _imuDatas (let (r) (dotimes (i n) (push (instance RosAdapter::imu_data :init) r)) r))
     (dolist (elem- _imuDatas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/gnss_gga[] _gnssGgaS
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gnssGgaS (let (r) (dotimes (i n) (push (instance RosAdapter::gnss_gga :init) r)) r))
     (dolist (elem- _gnssGgaS)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/uwb_data[] _uwbDatas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uwbDatas (let (r) (dotimes (i n) (push (instance RosAdapter::uwb_data :init) r)) r))
     (dolist (elem- _uwbDatas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/model_outline[] _modelOutlines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modelOutlines (let (r) (dotimes (i n) (push (instance RosAdapter::model_outline :init) r)) r))
     (dolist (elem- _modelOutlines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; RosAdapter/rsu_vnfp_info _rsuVnfpInfo
     (send _rsuVnfpInfo :deserialize buf ptr-) (incf ptr- (send _rsuVnfpInfo :serialization-length))
   ;;
   self)
  )

(setf (get RosAdapter::rosSimproToAD :md5sum-) "c51422c0a9306e26c68900e995989ad4")
(setf (get RosAdapter::rosSimproToAD :datatype-) "RosAdapter/rosSimproToAD")
(setf (get RosAdapter::rosSimproToAD :definition-)
      "# simpro发送给AD的数据
header                         head
lane_info[]                    laneInfos
sensor_info[]                  sensorStates
sensor_detection_info[]        sensorObjects
contact_point[]                contactPoints
traffic_sign[]                 trafficSigns
road_state[]                   roadStates
environment[]                  environments
traffic_light[]                trafficLights
road_query[]                   roadQueries
mil_ego_state[]                egoStates
mil_object_state[]             milObjStates
mil_roadmark[]                 milRoadMarks
init_param[]                   initParams
mil_amesim_signal[]            milAmesimSignals
activate_controller[]          activateControllers
assign_controller[]            assignControllers
override_controller[]          overrideControllers
custom_command[]               customCommands
parkingSpace[]                 parkingSpaces
driver_ctrl[]                  driverCtrls
sync[]                         syncs   
imu_data[]                     imuDatas     
gnss_gga[]                     gnssGgaS
uwb_data[]                     uwbDatas
model_outline[]                modelOutlines
rsu_vnfp_info                  rsuVnfpInfo
================================================================================
MSG: RosAdapter/header
# /** ------ Msg header ------ */
float64 u8SimTime
uint32  u4HeaderSize
uint32  u4DataSize
uint32  u4FrameNo
================================================================================
MSG: RosAdapter/lane_info
# /** ------ 车道信息 ------ */
uint64   u8RoadId
uint32   u4ObjectId
float32  u4Width
uint16   u2Type
int8     u1Id
uint8    u1NeighborMask
int8     u1LeftLaneId
int8     u1RightLaneId
================================================================================
MSG: RosAdapter/sensor_info
# /** ------ 传感器定义和状态 ------ */
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
================================================================================
MSG: RosAdapter/sensor_detection_info
# 传感器监测物体所有信息

uint32            u4Id
uint32            u4SensorId
uint16            u2Flags
uint8             u1Type
int8              u1Occlusion
int8              u1DeltaLanePos
uint8             u1ValidFlag
float64           u8ExistProb
float64           u8TypeIdProb
object_uion       sExtraInfo
================================================================================
MSG: RosAdapter/object_uion
dynamic_object sDynamicObj
mark_object    sMarkObj
sign_object    sSignObj 
================================================================================
MSG: RosAdapter/dynamic_object
# /** ------ 传感器探测到的对象信息 ------ */

float64    u8Dist
float64    u8NearestDist
float64    u8RelativeVelx
float64    u8RelativeVely
float64    u8RelativeAccx
float64    u8RelativeAccy
float64    u8HeadingAngle
coord      sSensorPos
coord      sNearestSensorPos
coord      sSenNearestPosXL
coord      sSenNearestPosXR
coord      sSenNearestPosYL
coord      sSenNearestPosYR
point3d[]  sBoundingBox
uint8      u1MovingSt
================================================================================
MSG: RosAdapter/point3d
float64      u8x
float64      u8y
float64      u8z
================================================================================
MSG: RosAdapter/mark_object
# 车道线

float64[]	 au8RoadMarkCoeffL
float64[]	 au8RoadMarkCoeffR
================================================================================
MSG: RosAdapter/sign_object
# 交通标志

float64   u8Dist
float64   u8NearestDist
float64   u8TrafficSignDistX
float64   u8TrafficSignDistY
coord     sSensorPos
coord     sNearestSensorPos
uint8     u1TrafficSignType
================================================================================
MSG: RosAdapter/contact_point
# /** ------ 接触点信息 ------ */
coord  sRoadDataIn
uint16 u2Id
================================================================================
MSG: RosAdapter/traffic_sign
# /** ------ 交通标志信息 ------ */
string  au1Type
coord   sPos
uint32  u4TrafficSignId
uint32  u4ObjectId
string  au1SubType
float32 u4RoadDist
float32 u4Value
int8    u1MinLane
int8    u1MaxLane
================================================================================
MSG: RosAdapter/road_state
#/** ------ 车辆对应的道路状态 ------ */
uint64  u8RoadId
uint32  u4ObjectId
float32 u4DefaultSpeed
float32 u4WaterLevel
float32 u4DistToJunc
================================================================================
MSG: RosAdapter/environment
# /** ------ 环境信息 ------ */
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
================================================================================
MSG: RosAdapter/traffic_light
# /** ------ 交通灯信息 ------ */
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
================================================================================
MSG: RosAdapter/road_query
# /** ------ 查询道路点 ------ */
float32 u8X
float32 u8Y
uint16  u2Id
================================================================================
MSG: RosAdapter/mil_ego_state
# /** ------ MIL测试主车信息描述包 ------ */

object_state   sObjectState
float64        u4initSpeed
float64        u8DistRoadEnd
uint32         u4LightMask               
float32        u4WheelSpeedFL
float32        u4WheelSpeedFR
float32        u4WheelSpeedRL
float32        u4WheelSpeedRR
float32        u4MasterCylinderPressure
float32        u4WheelHeightLF
float32        u4WheelHeightLR
float32        u4WheelHeightRF
float32        u4WheelHeightRR
float32        u4SteerAngle
uint8          u1objQuantity
uint8          u1irc_id
uint8          u1irc_left_id
uint8          u1irc_right_id
uint8          u1cipv_id
uint8          u1lmc_id
uint8          u1rmc_id
uint8          u1isReachInitSpeed
================================================================================
MSG: RosAdapter/object_state
# /** ------ 对象信息 ------ */
coord           sSpeed
coord           sAccel
geometry        sGeo
coord           sPos
string          au1Name
string          au1ModelFileName
string          au1ModelName
float64[]       au8ParamScale
uint64          u8RoadId
float64         u8SpeedLimit
uint32          u4Id
float32         u4RoadS
float32         u4RoadT
float32         u4HdgRel
float32         u4LaneOffset
float32         u4TraveledDist
uint16          u2visMask
uint8           u1Type
int8            u1LaneId
uint8           u1Dir
bool            u1IsOnRoad
uint8           u1category
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
MSG: RosAdapter/mil_object_state
# /** ------ MIL测试环境车、行人、障碍物信息 ------ */
object_state           sObjectState
mil_object_state_base  sMilBase
================================================================================
MSG: RosAdapter/mil_object_state_base
#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */

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
================================================================================
MSG: RosAdapter/mil_roadmark
 # /** ------ MIL测试车道线信息描述包 ------ */

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
================================================================================
MSG: RosAdapter/init_param
# /** ------ 初始化参数 ------ */

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
================================================================================
MSG: RosAdapter/mil_amesim_signal
# /** ------ MIL AMESim 测试信息描述包 ------ */

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
================================================================================
MSG: RosAdapter/activate_controller
# /** ------激活控制器 ------ */

uint32          u4ObjectId
bool            u1Lateral
bool            u1Longitudinal
================================================================================
MSG: RosAdapter/assign_controller
# /** ------分配控制器 ------ */

string                               au1ControllerName
uint32                               u4ObjectId
uint32                               u4PropertyNum
assign_controller_property[]         properties
================================================================================
MSG: RosAdapter/assign_controller_property
# /** ------分配控制器的属性信息 ------ */

string   au1Name
string   au1Value
================================================================================
MSG: RosAdapter/override_controller
# /** ------接管控制器 ------ */

float64   u8ThrottleValue
float64   u8BrakeValue
float64   u8SteeringWheelValue
float64   u8ParkingBrakeValue
float64   u8ClutchValue
float64   u8GearValue
uint32    u4ObjectId
bool      u1ThrottleActive
bool      u1BrakeActive
bool      u1SteeringWheelActive
bool      u1ParkingBrakeActive
bool      u1ClutchActive
bool      u1GearActive
================================================================================
MSG: RosAdapter/custom_command
# /** ------自定义指令 ------ */

string   au1Type
string   au1Command
uint32   u4ObjectId
================================================================================
MSG: RosAdapter/parkingSpace
#/** ------ 停车位信息 ------ */
geometry  sGeo
coord     sPos
float32   u4RoadS
float32   u4RoadT
uint64    u8SlotId

================================================================================
MSG: RosAdapter/driver_ctrl
# /** ------ 驾驶员控制输入的信息 ------ */

uint32       u4ObjectId
float32      u4MtWheel
float64      u8MasterCylinderPressure
float64      u8SteeringWheel
float64      u8ThrottlePedal
float64      u8BrakePedal
float64      u8AccelTgt
float64      u8SteeringTorque
float64      u8StopDistance
float64      u8TargetSpeed
float64      u8Vx
float64      u8Wr
float64      u8VLFWheelSpd
float64      u8VRFWheelSpd
float64      u8VLRWheelSpd
float64      u8VRRWheelSpd
float64      u8Ax
float64      u8Ay
float64      u8SteeringWheelAngularRate
float64      u8DrvTorqAct
float64      u8Xmc
float64      u8Ymc
float64      u8YawThetaVehicle
float64      u8PitchThetaVehicle
float64      u8RollThetaVehicle
float64      u8PitchRateVehicle
float64      u8RollRateVehicle
float64      u8SinSlopeout
float64      u8VehicleCurv
float64      u8TmotorCmd
float64      u8Tmotor
float64      u8EnergySourceLevel
float64      u8WLFWheelSpd
float64      u8WRFWheelSpd
float64      u8WLRWheelSpd
float64      u8WRRWheelSpd
float64      u8WGearSpd
uint8        u1LFWheelRotatedDir
uint8        u1LRWheelRotatedDir
uint8        u1RFWheelRotatedDir
uint8        u1RRWheelRotatedDir
uint8        u1BrakePedalStatus
uint8        u1VehicleDir
uint8        u1BrkType
int8         u1Gear 
================================================================================
MSG: RosAdapter/sync
# /** ------ 同步信号 ------ */
uint32 u4CmdMask
uint32 u4UserData
================================================================================
MSG: RosAdapter/imu_data
uint8         msgcnt
float64       u8X
float64       u8Y
float64       u8Z
float64       yaw
float64       pitch
float64       roll
================================================================================
MSG: RosAdapter/gnss_gga
uint8         startChar
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
================================================================================
MSG: RosAdapter/uwb_data
uint8         msgcnt
float64       u8x
float64       u8y
float64       u8z
================================================================================
MSG: RosAdapter/model_outline
string                au1ModelName
double_array[]        au8OutlinePoints    
================================================================================
MSG: RosAdapter/double_array
float64[]  data
================================================================================
MSG: RosAdapter/rsu_vnfp_info
uint32    type
")



(provide :RosAdapter/rosSimproToAD "c51422c0a9306e26c68900e995989ad4")


