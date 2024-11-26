;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::driver_ctrl)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'driver_ctrl (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::DRIVER_CTRL")
  (make-package "ROSADAPTER::DRIVER_CTRL"))

(in-package "ROS")
;;//! \htmlinclude driver_ctrl.msg.html


(defclass RosAdapter::driver_ctrl
  :super ros::object
  :slots (_u4ObjectId _u4MtWheel _u8MasterCylinderPressure _u8SteeringWheel _u8ThrottlePedal _u8BrakePedal _u8AccelTgt _u8SteeringTorque _u8StopDistance _u8TargetSpeed _u8Vx _u8Wr _u8VLFWheelSpd _u8VRFWheelSpd _u8VLRWheelSpd _u8VRRWheelSpd _u8Ax _u8Ay _u8SteeringWheelAngularRate _u8DrvTorqAct _u8Xmc _u8Ymc _u8YawThetaVehicle _u8PitchThetaVehicle _u8RollThetaVehicle _u8PitchRateVehicle _u8RollRateVehicle _u8SinSlopeout _u8VehicleCurv _u8TmotorCmd _u8Tmotor _u8EnergySourceLevel _u8WLFWheelSpd _u8WRFWheelSpd _u8WLRWheelSpd _u8WRRWheelSpd _u8WGearSpd _u1LFWheelRotatedDir _u1LRWheelRotatedDir _u1RFWheelRotatedDir _u1RRWheelRotatedDir _u1BrakePedalStatus _u1VehicleDir _u1BrkType _u1Gear ))

(defmethod RosAdapter::driver_ctrl
  (:init
   (&key
    ((:u4ObjectId __u4ObjectId) 0)
    ((:u4MtWheel __u4MtWheel) 0.0)
    ((:u8MasterCylinderPressure __u8MasterCylinderPressure) 0.0)
    ((:u8SteeringWheel __u8SteeringWheel) 0.0)
    ((:u8ThrottlePedal __u8ThrottlePedal) 0.0)
    ((:u8BrakePedal __u8BrakePedal) 0.0)
    ((:u8AccelTgt __u8AccelTgt) 0.0)
    ((:u8SteeringTorque __u8SteeringTorque) 0.0)
    ((:u8StopDistance __u8StopDistance) 0.0)
    ((:u8TargetSpeed __u8TargetSpeed) 0.0)
    ((:u8Vx __u8Vx) 0.0)
    ((:u8Wr __u8Wr) 0.0)
    ((:u8VLFWheelSpd __u8VLFWheelSpd) 0.0)
    ((:u8VRFWheelSpd __u8VRFWheelSpd) 0.0)
    ((:u8VLRWheelSpd __u8VLRWheelSpd) 0.0)
    ((:u8VRRWheelSpd __u8VRRWheelSpd) 0.0)
    ((:u8Ax __u8Ax) 0.0)
    ((:u8Ay __u8Ay) 0.0)
    ((:u8SteeringWheelAngularRate __u8SteeringWheelAngularRate) 0.0)
    ((:u8DrvTorqAct __u8DrvTorqAct) 0.0)
    ((:u8Xmc __u8Xmc) 0.0)
    ((:u8Ymc __u8Ymc) 0.0)
    ((:u8YawThetaVehicle __u8YawThetaVehicle) 0.0)
    ((:u8PitchThetaVehicle __u8PitchThetaVehicle) 0.0)
    ((:u8RollThetaVehicle __u8RollThetaVehicle) 0.0)
    ((:u8PitchRateVehicle __u8PitchRateVehicle) 0.0)
    ((:u8RollRateVehicle __u8RollRateVehicle) 0.0)
    ((:u8SinSlopeout __u8SinSlopeout) 0.0)
    ((:u8VehicleCurv __u8VehicleCurv) 0.0)
    ((:u8TmotorCmd __u8TmotorCmd) 0.0)
    ((:u8Tmotor __u8Tmotor) 0.0)
    ((:u8EnergySourceLevel __u8EnergySourceLevel) 0.0)
    ((:u8WLFWheelSpd __u8WLFWheelSpd) 0.0)
    ((:u8WRFWheelSpd __u8WRFWheelSpd) 0.0)
    ((:u8WLRWheelSpd __u8WLRWheelSpd) 0.0)
    ((:u8WRRWheelSpd __u8WRRWheelSpd) 0.0)
    ((:u8WGearSpd __u8WGearSpd) 0.0)
    ((:u1LFWheelRotatedDir __u1LFWheelRotatedDir) 0)
    ((:u1LRWheelRotatedDir __u1LRWheelRotatedDir) 0)
    ((:u1RFWheelRotatedDir __u1RFWheelRotatedDir) 0)
    ((:u1RRWheelRotatedDir __u1RRWheelRotatedDir) 0)
    ((:u1BrakePedalStatus __u1BrakePedalStatus) 0)
    ((:u1VehicleDir __u1VehicleDir) 0)
    ((:u1BrkType __u1BrkType) 0)
    ((:u1Gear __u1Gear) 0)
    )
   (send-super :init)
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _u4MtWheel (float __u4MtWheel))
   (setq _u8MasterCylinderPressure (float __u8MasterCylinderPressure))
   (setq _u8SteeringWheel (float __u8SteeringWheel))
   (setq _u8ThrottlePedal (float __u8ThrottlePedal))
   (setq _u8BrakePedal (float __u8BrakePedal))
   (setq _u8AccelTgt (float __u8AccelTgt))
   (setq _u8SteeringTorque (float __u8SteeringTorque))
   (setq _u8StopDistance (float __u8StopDistance))
   (setq _u8TargetSpeed (float __u8TargetSpeed))
   (setq _u8Vx (float __u8Vx))
   (setq _u8Wr (float __u8Wr))
   (setq _u8VLFWheelSpd (float __u8VLFWheelSpd))
   (setq _u8VRFWheelSpd (float __u8VRFWheelSpd))
   (setq _u8VLRWheelSpd (float __u8VLRWheelSpd))
   (setq _u8VRRWheelSpd (float __u8VRRWheelSpd))
   (setq _u8Ax (float __u8Ax))
   (setq _u8Ay (float __u8Ay))
   (setq _u8SteeringWheelAngularRate (float __u8SteeringWheelAngularRate))
   (setq _u8DrvTorqAct (float __u8DrvTorqAct))
   (setq _u8Xmc (float __u8Xmc))
   (setq _u8Ymc (float __u8Ymc))
   (setq _u8YawThetaVehicle (float __u8YawThetaVehicle))
   (setq _u8PitchThetaVehicle (float __u8PitchThetaVehicle))
   (setq _u8RollThetaVehicle (float __u8RollThetaVehicle))
   (setq _u8PitchRateVehicle (float __u8PitchRateVehicle))
   (setq _u8RollRateVehicle (float __u8RollRateVehicle))
   (setq _u8SinSlopeout (float __u8SinSlopeout))
   (setq _u8VehicleCurv (float __u8VehicleCurv))
   (setq _u8TmotorCmd (float __u8TmotorCmd))
   (setq _u8Tmotor (float __u8Tmotor))
   (setq _u8EnergySourceLevel (float __u8EnergySourceLevel))
   (setq _u8WLFWheelSpd (float __u8WLFWheelSpd))
   (setq _u8WRFWheelSpd (float __u8WRFWheelSpd))
   (setq _u8WLRWheelSpd (float __u8WLRWheelSpd))
   (setq _u8WRRWheelSpd (float __u8WRRWheelSpd))
   (setq _u8WGearSpd (float __u8WGearSpd))
   (setq _u1LFWheelRotatedDir (round __u1LFWheelRotatedDir))
   (setq _u1LRWheelRotatedDir (round __u1LRWheelRotatedDir))
   (setq _u1RFWheelRotatedDir (round __u1RFWheelRotatedDir))
   (setq _u1RRWheelRotatedDir (round __u1RRWheelRotatedDir))
   (setq _u1BrakePedalStatus (round __u1BrakePedalStatus))
   (setq _u1VehicleDir (round __u1VehicleDir))
   (setq _u1BrkType (round __u1BrkType))
   (setq _u1Gear (round __u1Gear))
   self)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:u4MtWheel
   (&optional __u4MtWheel)
   (if __u4MtWheel (setq _u4MtWheel __u4MtWheel)) _u4MtWheel)
  (:u8MasterCylinderPressure
   (&optional __u8MasterCylinderPressure)
   (if __u8MasterCylinderPressure (setq _u8MasterCylinderPressure __u8MasterCylinderPressure)) _u8MasterCylinderPressure)
  (:u8SteeringWheel
   (&optional __u8SteeringWheel)
   (if __u8SteeringWheel (setq _u8SteeringWheel __u8SteeringWheel)) _u8SteeringWheel)
  (:u8ThrottlePedal
   (&optional __u8ThrottlePedal)
   (if __u8ThrottlePedal (setq _u8ThrottlePedal __u8ThrottlePedal)) _u8ThrottlePedal)
  (:u8BrakePedal
   (&optional __u8BrakePedal)
   (if __u8BrakePedal (setq _u8BrakePedal __u8BrakePedal)) _u8BrakePedal)
  (:u8AccelTgt
   (&optional __u8AccelTgt)
   (if __u8AccelTgt (setq _u8AccelTgt __u8AccelTgt)) _u8AccelTgt)
  (:u8SteeringTorque
   (&optional __u8SteeringTorque)
   (if __u8SteeringTorque (setq _u8SteeringTorque __u8SteeringTorque)) _u8SteeringTorque)
  (:u8StopDistance
   (&optional __u8StopDistance)
   (if __u8StopDistance (setq _u8StopDistance __u8StopDistance)) _u8StopDistance)
  (:u8TargetSpeed
   (&optional __u8TargetSpeed)
   (if __u8TargetSpeed (setq _u8TargetSpeed __u8TargetSpeed)) _u8TargetSpeed)
  (:u8Vx
   (&optional __u8Vx)
   (if __u8Vx (setq _u8Vx __u8Vx)) _u8Vx)
  (:u8Wr
   (&optional __u8Wr)
   (if __u8Wr (setq _u8Wr __u8Wr)) _u8Wr)
  (:u8VLFWheelSpd
   (&optional __u8VLFWheelSpd)
   (if __u8VLFWheelSpd (setq _u8VLFWheelSpd __u8VLFWheelSpd)) _u8VLFWheelSpd)
  (:u8VRFWheelSpd
   (&optional __u8VRFWheelSpd)
   (if __u8VRFWheelSpd (setq _u8VRFWheelSpd __u8VRFWheelSpd)) _u8VRFWheelSpd)
  (:u8VLRWheelSpd
   (&optional __u8VLRWheelSpd)
   (if __u8VLRWheelSpd (setq _u8VLRWheelSpd __u8VLRWheelSpd)) _u8VLRWheelSpd)
  (:u8VRRWheelSpd
   (&optional __u8VRRWheelSpd)
   (if __u8VRRWheelSpd (setq _u8VRRWheelSpd __u8VRRWheelSpd)) _u8VRRWheelSpd)
  (:u8Ax
   (&optional __u8Ax)
   (if __u8Ax (setq _u8Ax __u8Ax)) _u8Ax)
  (:u8Ay
   (&optional __u8Ay)
   (if __u8Ay (setq _u8Ay __u8Ay)) _u8Ay)
  (:u8SteeringWheelAngularRate
   (&optional __u8SteeringWheelAngularRate)
   (if __u8SteeringWheelAngularRate (setq _u8SteeringWheelAngularRate __u8SteeringWheelAngularRate)) _u8SteeringWheelAngularRate)
  (:u8DrvTorqAct
   (&optional __u8DrvTorqAct)
   (if __u8DrvTorqAct (setq _u8DrvTorqAct __u8DrvTorqAct)) _u8DrvTorqAct)
  (:u8Xmc
   (&optional __u8Xmc)
   (if __u8Xmc (setq _u8Xmc __u8Xmc)) _u8Xmc)
  (:u8Ymc
   (&optional __u8Ymc)
   (if __u8Ymc (setq _u8Ymc __u8Ymc)) _u8Ymc)
  (:u8YawThetaVehicle
   (&optional __u8YawThetaVehicle)
   (if __u8YawThetaVehicle (setq _u8YawThetaVehicle __u8YawThetaVehicle)) _u8YawThetaVehicle)
  (:u8PitchThetaVehicle
   (&optional __u8PitchThetaVehicle)
   (if __u8PitchThetaVehicle (setq _u8PitchThetaVehicle __u8PitchThetaVehicle)) _u8PitchThetaVehicle)
  (:u8RollThetaVehicle
   (&optional __u8RollThetaVehicle)
   (if __u8RollThetaVehicle (setq _u8RollThetaVehicle __u8RollThetaVehicle)) _u8RollThetaVehicle)
  (:u8PitchRateVehicle
   (&optional __u8PitchRateVehicle)
   (if __u8PitchRateVehicle (setq _u8PitchRateVehicle __u8PitchRateVehicle)) _u8PitchRateVehicle)
  (:u8RollRateVehicle
   (&optional __u8RollRateVehicle)
   (if __u8RollRateVehicle (setq _u8RollRateVehicle __u8RollRateVehicle)) _u8RollRateVehicle)
  (:u8SinSlopeout
   (&optional __u8SinSlopeout)
   (if __u8SinSlopeout (setq _u8SinSlopeout __u8SinSlopeout)) _u8SinSlopeout)
  (:u8VehicleCurv
   (&optional __u8VehicleCurv)
   (if __u8VehicleCurv (setq _u8VehicleCurv __u8VehicleCurv)) _u8VehicleCurv)
  (:u8TmotorCmd
   (&optional __u8TmotorCmd)
   (if __u8TmotorCmd (setq _u8TmotorCmd __u8TmotorCmd)) _u8TmotorCmd)
  (:u8Tmotor
   (&optional __u8Tmotor)
   (if __u8Tmotor (setq _u8Tmotor __u8Tmotor)) _u8Tmotor)
  (:u8EnergySourceLevel
   (&optional __u8EnergySourceLevel)
   (if __u8EnergySourceLevel (setq _u8EnergySourceLevel __u8EnergySourceLevel)) _u8EnergySourceLevel)
  (:u8WLFWheelSpd
   (&optional __u8WLFWheelSpd)
   (if __u8WLFWheelSpd (setq _u8WLFWheelSpd __u8WLFWheelSpd)) _u8WLFWheelSpd)
  (:u8WRFWheelSpd
   (&optional __u8WRFWheelSpd)
   (if __u8WRFWheelSpd (setq _u8WRFWheelSpd __u8WRFWheelSpd)) _u8WRFWheelSpd)
  (:u8WLRWheelSpd
   (&optional __u8WLRWheelSpd)
   (if __u8WLRWheelSpd (setq _u8WLRWheelSpd __u8WLRWheelSpd)) _u8WLRWheelSpd)
  (:u8WRRWheelSpd
   (&optional __u8WRRWheelSpd)
   (if __u8WRRWheelSpd (setq _u8WRRWheelSpd __u8WRRWheelSpd)) _u8WRRWheelSpd)
  (:u8WGearSpd
   (&optional __u8WGearSpd)
   (if __u8WGearSpd (setq _u8WGearSpd __u8WGearSpd)) _u8WGearSpd)
  (:u1LFWheelRotatedDir
   (&optional __u1LFWheelRotatedDir)
   (if __u1LFWheelRotatedDir (setq _u1LFWheelRotatedDir __u1LFWheelRotatedDir)) _u1LFWheelRotatedDir)
  (:u1LRWheelRotatedDir
   (&optional __u1LRWheelRotatedDir)
   (if __u1LRWheelRotatedDir (setq _u1LRWheelRotatedDir __u1LRWheelRotatedDir)) _u1LRWheelRotatedDir)
  (:u1RFWheelRotatedDir
   (&optional __u1RFWheelRotatedDir)
   (if __u1RFWheelRotatedDir (setq _u1RFWheelRotatedDir __u1RFWheelRotatedDir)) _u1RFWheelRotatedDir)
  (:u1RRWheelRotatedDir
   (&optional __u1RRWheelRotatedDir)
   (if __u1RRWheelRotatedDir (setq _u1RRWheelRotatedDir __u1RRWheelRotatedDir)) _u1RRWheelRotatedDir)
  (:u1BrakePedalStatus
   (&optional __u1BrakePedalStatus)
   (if __u1BrakePedalStatus (setq _u1BrakePedalStatus __u1BrakePedalStatus)) _u1BrakePedalStatus)
  (:u1VehicleDir
   (&optional __u1VehicleDir)
   (if __u1VehicleDir (setq _u1VehicleDir __u1VehicleDir)) _u1VehicleDir)
  (:u1BrkType
   (&optional __u1BrkType)
   (if __u1BrkType (setq _u1BrkType __u1BrkType)) _u1BrkType)
  (:u1Gear
   (&optional __u1Gear)
   (if __u1Gear (setq _u1Gear __u1Gear)) _u1Gear)
  (:serialization-length
   ()
   (+
    ;; uint32 _u4ObjectId
    4
    ;; float32 _u4MtWheel
    4
    ;; float64 _u8MasterCylinderPressure
    8
    ;; float64 _u8SteeringWheel
    8
    ;; float64 _u8ThrottlePedal
    8
    ;; float64 _u8BrakePedal
    8
    ;; float64 _u8AccelTgt
    8
    ;; float64 _u8SteeringTorque
    8
    ;; float64 _u8StopDistance
    8
    ;; float64 _u8TargetSpeed
    8
    ;; float64 _u8Vx
    8
    ;; float64 _u8Wr
    8
    ;; float64 _u8VLFWheelSpd
    8
    ;; float64 _u8VRFWheelSpd
    8
    ;; float64 _u8VLRWheelSpd
    8
    ;; float64 _u8VRRWheelSpd
    8
    ;; float64 _u8Ax
    8
    ;; float64 _u8Ay
    8
    ;; float64 _u8SteeringWheelAngularRate
    8
    ;; float64 _u8DrvTorqAct
    8
    ;; float64 _u8Xmc
    8
    ;; float64 _u8Ymc
    8
    ;; float64 _u8YawThetaVehicle
    8
    ;; float64 _u8PitchThetaVehicle
    8
    ;; float64 _u8RollThetaVehicle
    8
    ;; float64 _u8PitchRateVehicle
    8
    ;; float64 _u8RollRateVehicle
    8
    ;; float64 _u8SinSlopeout
    8
    ;; float64 _u8VehicleCurv
    8
    ;; float64 _u8TmotorCmd
    8
    ;; float64 _u8Tmotor
    8
    ;; float64 _u8EnergySourceLevel
    8
    ;; float64 _u8WLFWheelSpd
    8
    ;; float64 _u8WRFWheelSpd
    8
    ;; float64 _u8WLRWheelSpd
    8
    ;; float64 _u8WRRWheelSpd
    8
    ;; float64 _u8WGearSpd
    8
    ;; uint8 _u1LFWheelRotatedDir
    1
    ;; uint8 _u1LRWheelRotatedDir
    1
    ;; uint8 _u1RFWheelRotatedDir
    1
    ;; uint8 _u1RRWheelRotatedDir
    1
    ;; uint8 _u1BrakePedalStatus
    1
    ;; uint8 _u1VehicleDir
    1
    ;; uint8 _u1BrkType
    1
    ;; int8 _u1Gear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; float32 _u4MtWheel
       (sys::poke _u4MtWheel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _u8MasterCylinderPressure
       (sys::poke _u8MasterCylinderPressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8SteeringWheel
       (sys::poke _u8SteeringWheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8ThrottlePedal
       (sys::poke _u8ThrottlePedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8BrakePedal
       (sys::poke _u8BrakePedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8AccelTgt
       (sys::poke _u8AccelTgt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8SteeringTorque
       (sys::poke _u8SteeringTorque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8StopDistance
       (sys::poke _u8StopDistance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8TargetSpeed
       (sys::poke _u8TargetSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Vx
       (sys::poke _u8Vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Wr
       (sys::poke _u8Wr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8VLFWheelSpd
       (sys::poke _u8VLFWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8VRFWheelSpd
       (sys::poke _u8VRFWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8VLRWheelSpd
       (sys::poke _u8VLRWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8VRRWheelSpd
       (sys::poke _u8VRRWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Ax
       (sys::poke _u8Ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Ay
       (sys::poke _u8Ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8SteeringWheelAngularRate
       (sys::poke _u8SteeringWheelAngularRate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8DrvTorqAct
       (sys::poke _u8DrvTorqAct (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Xmc
       (sys::poke _u8Xmc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Ymc
       (sys::poke _u8Ymc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8YawThetaVehicle
       (sys::poke _u8YawThetaVehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8PitchThetaVehicle
       (sys::poke _u8PitchThetaVehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8RollThetaVehicle
       (sys::poke _u8RollThetaVehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8PitchRateVehicle
       (sys::poke _u8PitchRateVehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8RollRateVehicle
       (sys::poke _u8RollRateVehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8SinSlopeout
       (sys::poke _u8SinSlopeout (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8VehicleCurv
       (sys::poke _u8VehicleCurv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8TmotorCmd
       (sys::poke _u8TmotorCmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8Tmotor
       (sys::poke _u8Tmotor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8EnergySourceLevel
       (sys::poke _u8EnergySourceLevel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8WLFWheelSpd
       (sys::poke _u8WLFWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8WRFWheelSpd
       (sys::poke _u8WRFWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8WLRWheelSpd
       (sys::poke _u8WLRWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8WRRWheelSpd
       (sys::poke _u8WRRWheelSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8WGearSpd
       (sys::poke _u8WGearSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _u1LFWheelRotatedDir
       (write-byte _u1LFWheelRotatedDir s)
     ;; uint8 _u1LRWheelRotatedDir
       (write-byte _u1LRWheelRotatedDir s)
     ;; uint8 _u1RFWheelRotatedDir
       (write-byte _u1RFWheelRotatedDir s)
     ;; uint8 _u1RRWheelRotatedDir
       (write-byte _u1RRWheelRotatedDir s)
     ;; uint8 _u1BrakePedalStatus
       (write-byte _u1BrakePedalStatus s)
     ;; uint8 _u1VehicleDir
       (write-byte _u1VehicleDir s)
     ;; uint8 _u1BrkType
       (write-byte _u1BrkType s)
     ;; int8 _u1Gear
       (write-byte _u1Gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _u4MtWheel
     (setq _u4MtWheel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _u8MasterCylinderPressure
     (setq _u8MasterCylinderPressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8SteeringWheel
     (setq _u8SteeringWheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8ThrottlePedal
     (setq _u8ThrottlePedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8BrakePedal
     (setq _u8BrakePedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8AccelTgt
     (setq _u8AccelTgt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8SteeringTorque
     (setq _u8SteeringTorque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8StopDistance
     (setq _u8StopDistance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8TargetSpeed
     (setq _u8TargetSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Vx
     (setq _u8Vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Wr
     (setq _u8Wr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8VLFWheelSpd
     (setq _u8VLFWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8VRFWheelSpd
     (setq _u8VRFWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8VLRWheelSpd
     (setq _u8VLRWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8VRRWheelSpd
     (setq _u8VRRWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Ax
     (setq _u8Ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Ay
     (setq _u8Ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8SteeringWheelAngularRate
     (setq _u8SteeringWheelAngularRate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8DrvTorqAct
     (setq _u8DrvTorqAct (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Xmc
     (setq _u8Xmc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Ymc
     (setq _u8Ymc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8YawThetaVehicle
     (setq _u8YawThetaVehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8PitchThetaVehicle
     (setq _u8PitchThetaVehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8RollThetaVehicle
     (setq _u8RollThetaVehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8PitchRateVehicle
     (setq _u8PitchRateVehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8RollRateVehicle
     (setq _u8RollRateVehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8SinSlopeout
     (setq _u8SinSlopeout (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8VehicleCurv
     (setq _u8VehicleCurv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8TmotorCmd
     (setq _u8TmotorCmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8Tmotor
     (setq _u8Tmotor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8EnergySourceLevel
     (setq _u8EnergySourceLevel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8WLFWheelSpd
     (setq _u8WLFWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8WRFWheelSpd
     (setq _u8WRFWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8WLRWheelSpd
     (setq _u8WLRWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8WRRWheelSpd
     (setq _u8WRRWheelSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8WGearSpd
     (setq _u8WGearSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _u1LFWheelRotatedDir
     (setq _u1LFWheelRotatedDir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1LRWheelRotatedDir
     (setq _u1LRWheelRotatedDir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1RFWheelRotatedDir
     (setq _u1RFWheelRotatedDir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1RRWheelRotatedDir
     (setq _u1RRWheelRotatedDir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1BrakePedalStatus
     (setq _u1BrakePedalStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1VehicleDir
     (setq _u1VehicleDir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _u1BrkType
     (setq _u1BrkType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _u1Gear
     (setq _u1Gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u1Gear 127) (setq _u1Gear (- _u1Gear 256)))
   ;;
   self)
  )

(setf (get RosAdapter::driver_ctrl :md5sum-) "cc27883f2d6c80938a7ec2f45203e918")
(setf (get RosAdapter::driver_ctrl :datatype-) "RosAdapter/driver_ctrl")
(setf (get RosAdapter::driver_ctrl :definition-)
      "# /** ------ 驾驶员控制输入的信息 ------ */

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
")



(provide :RosAdapter/driver_ctrl "cc27883f2d6c80938a7ec2f45203e918")


