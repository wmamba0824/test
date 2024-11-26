// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class driver_ctrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4ObjectId = null;
      this.u4MtWheel = null;
      this.u8MasterCylinderPressure = null;
      this.u8SteeringWheel = null;
      this.u8ThrottlePedal = null;
      this.u8BrakePedal = null;
      this.u8AccelTgt = null;
      this.u8SteeringTorque = null;
      this.u8StopDistance = null;
      this.u8TargetSpeed = null;
      this.u8Vx = null;
      this.u8Wr = null;
      this.u8VLFWheelSpd = null;
      this.u8VRFWheelSpd = null;
      this.u8VLRWheelSpd = null;
      this.u8VRRWheelSpd = null;
      this.u8Ax = null;
      this.u8Ay = null;
      this.u8SteeringWheelAngularRate = null;
      this.u8DrvTorqAct = null;
      this.u8Xmc = null;
      this.u8Ymc = null;
      this.u8YawThetaVehicle = null;
      this.u8PitchThetaVehicle = null;
      this.u8RollThetaVehicle = null;
      this.u8PitchRateVehicle = null;
      this.u8RollRateVehicle = null;
      this.u8SinSlopeout = null;
      this.u8VehicleCurv = null;
      this.u8TmotorCmd = null;
      this.u8Tmotor = null;
      this.u8EnergySourceLevel = null;
      this.u8WLFWheelSpd = null;
      this.u8WRFWheelSpd = null;
      this.u8WLRWheelSpd = null;
      this.u8WRRWheelSpd = null;
      this.u8WGearSpd = null;
      this.u1LFWheelRotatedDir = null;
      this.u1LRWheelRotatedDir = null;
      this.u1RFWheelRotatedDir = null;
      this.u1RRWheelRotatedDir = null;
      this.u1BrakePedalStatus = null;
      this.u1VehicleDir = null;
      this.u1BrkType = null;
      this.u1Gear = null;
    }
    else {
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('u4MtWheel')) {
        this.u4MtWheel = initObj.u4MtWheel
      }
      else {
        this.u4MtWheel = 0.0;
      }
      if (initObj.hasOwnProperty('u8MasterCylinderPressure')) {
        this.u8MasterCylinderPressure = initObj.u8MasterCylinderPressure
      }
      else {
        this.u8MasterCylinderPressure = 0.0;
      }
      if (initObj.hasOwnProperty('u8SteeringWheel')) {
        this.u8SteeringWheel = initObj.u8SteeringWheel
      }
      else {
        this.u8SteeringWheel = 0.0;
      }
      if (initObj.hasOwnProperty('u8ThrottlePedal')) {
        this.u8ThrottlePedal = initObj.u8ThrottlePedal
      }
      else {
        this.u8ThrottlePedal = 0.0;
      }
      if (initObj.hasOwnProperty('u8BrakePedal')) {
        this.u8BrakePedal = initObj.u8BrakePedal
      }
      else {
        this.u8BrakePedal = 0.0;
      }
      if (initObj.hasOwnProperty('u8AccelTgt')) {
        this.u8AccelTgt = initObj.u8AccelTgt
      }
      else {
        this.u8AccelTgt = 0.0;
      }
      if (initObj.hasOwnProperty('u8SteeringTorque')) {
        this.u8SteeringTorque = initObj.u8SteeringTorque
      }
      else {
        this.u8SteeringTorque = 0.0;
      }
      if (initObj.hasOwnProperty('u8StopDistance')) {
        this.u8StopDistance = initObj.u8StopDistance
      }
      else {
        this.u8StopDistance = 0.0;
      }
      if (initObj.hasOwnProperty('u8TargetSpeed')) {
        this.u8TargetSpeed = initObj.u8TargetSpeed
      }
      else {
        this.u8TargetSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('u8Vx')) {
        this.u8Vx = initObj.u8Vx
      }
      else {
        this.u8Vx = 0.0;
      }
      if (initObj.hasOwnProperty('u8Wr')) {
        this.u8Wr = initObj.u8Wr
      }
      else {
        this.u8Wr = 0.0;
      }
      if (initObj.hasOwnProperty('u8VLFWheelSpd')) {
        this.u8VLFWheelSpd = initObj.u8VLFWheelSpd
      }
      else {
        this.u8VLFWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8VRFWheelSpd')) {
        this.u8VRFWheelSpd = initObj.u8VRFWheelSpd
      }
      else {
        this.u8VRFWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8VLRWheelSpd')) {
        this.u8VLRWheelSpd = initObj.u8VLRWheelSpd
      }
      else {
        this.u8VLRWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8VRRWheelSpd')) {
        this.u8VRRWheelSpd = initObj.u8VRRWheelSpd
      }
      else {
        this.u8VRRWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8Ax')) {
        this.u8Ax = initObj.u8Ax
      }
      else {
        this.u8Ax = 0.0;
      }
      if (initObj.hasOwnProperty('u8Ay')) {
        this.u8Ay = initObj.u8Ay
      }
      else {
        this.u8Ay = 0.0;
      }
      if (initObj.hasOwnProperty('u8SteeringWheelAngularRate')) {
        this.u8SteeringWheelAngularRate = initObj.u8SteeringWheelAngularRate
      }
      else {
        this.u8SteeringWheelAngularRate = 0.0;
      }
      if (initObj.hasOwnProperty('u8DrvTorqAct')) {
        this.u8DrvTorqAct = initObj.u8DrvTorqAct
      }
      else {
        this.u8DrvTorqAct = 0.0;
      }
      if (initObj.hasOwnProperty('u8Xmc')) {
        this.u8Xmc = initObj.u8Xmc
      }
      else {
        this.u8Xmc = 0.0;
      }
      if (initObj.hasOwnProperty('u8Ymc')) {
        this.u8Ymc = initObj.u8Ymc
      }
      else {
        this.u8Ymc = 0.0;
      }
      if (initObj.hasOwnProperty('u8YawThetaVehicle')) {
        this.u8YawThetaVehicle = initObj.u8YawThetaVehicle
      }
      else {
        this.u8YawThetaVehicle = 0.0;
      }
      if (initObj.hasOwnProperty('u8PitchThetaVehicle')) {
        this.u8PitchThetaVehicle = initObj.u8PitchThetaVehicle
      }
      else {
        this.u8PitchThetaVehicle = 0.0;
      }
      if (initObj.hasOwnProperty('u8RollThetaVehicle')) {
        this.u8RollThetaVehicle = initObj.u8RollThetaVehicle
      }
      else {
        this.u8RollThetaVehicle = 0.0;
      }
      if (initObj.hasOwnProperty('u8PitchRateVehicle')) {
        this.u8PitchRateVehicle = initObj.u8PitchRateVehicle
      }
      else {
        this.u8PitchRateVehicle = 0.0;
      }
      if (initObj.hasOwnProperty('u8RollRateVehicle')) {
        this.u8RollRateVehicle = initObj.u8RollRateVehicle
      }
      else {
        this.u8RollRateVehicle = 0.0;
      }
      if (initObj.hasOwnProperty('u8SinSlopeout')) {
        this.u8SinSlopeout = initObj.u8SinSlopeout
      }
      else {
        this.u8SinSlopeout = 0.0;
      }
      if (initObj.hasOwnProperty('u8VehicleCurv')) {
        this.u8VehicleCurv = initObj.u8VehicleCurv
      }
      else {
        this.u8VehicleCurv = 0.0;
      }
      if (initObj.hasOwnProperty('u8TmotorCmd')) {
        this.u8TmotorCmd = initObj.u8TmotorCmd
      }
      else {
        this.u8TmotorCmd = 0.0;
      }
      if (initObj.hasOwnProperty('u8Tmotor')) {
        this.u8Tmotor = initObj.u8Tmotor
      }
      else {
        this.u8Tmotor = 0.0;
      }
      if (initObj.hasOwnProperty('u8EnergySourceLevel')) {
        this.u8EnergySourceLevel = initObj.u8EnergySourceLevel
      }
      else {
        this.u8EnergySourceLevel = 0.0;
      }
      if (initObj.hasOwnProperty('u8WLFWheelSpd')) {
        this.u8WLFWheelSpd = initObj.u8WLFWheelSpd
      }
      else {
        this.u8WLFWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8WRFWheelSpd')) {
        this.u8WRFWheelSpd = initObj.u8WRFWheelSpd
      }
      else {
        this.u8WRFWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8WLRWheelSpd')) {
        this.u8WLRWheelSpd = initObj.u8WLRWheelSpd
      }
      else {
        this.u8WLRWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8WRRWheelSpd')) {
        this.u8WRRWheelSpd = initObj.u8WRRWheelSpd
      }
      else {
        this.u8WRRWheelSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u8WGearSpd')) {
        this.u8WGearSpd = initObj.u8WGearSpd
      }
      else {
        this.u8WGearSpd = 0.0;
      }
      if (initObj.hasOwnProperty('u1LFWheelRotatedDir')) {
        this.u1LFWheelRotatedDir = initObj.u1LFWheelRotatedDir
      }
      else {
        this.u1LFWheelRotatedDir = 0;
      }
      if (initObj.hasOwnProperty('u1LRWheelRotatedDir')) {
        this.u1LRWheelRotatedDir = initObj.u1LRWheelRotatedDir
      }
      else {
        this.u1LRWheelRotatedDir = 0;
      }
      if (initObj.hasOwnProperty('u1RFWheelRotatedDir')) {
        this.u1RFWheelRotatedDir = initObj.u1RFWheelRotatedDir
      }
      else {
        this.u1RFWheelRotatedDir = 0;
      }
      if (initObj.hasOwnProperty('u1RRWheelRotatedDir')) {
        this.u1RRWheelRotatedDir = initObj.u1RRWheelRotatedDir
      }
      else {
        this.u1RRWheelRotatedDir = 0;
      }
      if (initObj.hasOwnProperty('u1BrakePedalStatus')) {
        this.u1BrakePedalStatus = initObj.u1BrakePedalStatus
      }
      else {
        this.u1BrakePedalStatus = 0;
      }
      if (initObj.hasOwnProperty('u1VehicleDir')) {
        this.u1VehicleDir = initObj.u1VehicleDir
      }
      else {
        this.u1VehicleDir = 0;
      }
      if (initObj.hasOwnProperty('u1BrkType')) {
        this.u1BrkType = initObj.u1BrkType
      }
      else {
        this.u1BrkType = 0;
      }
      if (initObj.hasOwnProperty('u1Gear')) {
        this.u1Gear = initObj.u1Gear
      }
      else {
        this.u1Gear = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type driver_ctrl
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [u4MtWheel]
    bufferOffset = _serializer.float32(obj.u4MtWheel, buffer, bufferOffset);
    // Serialize message field [u8MasterCylinderPressure]
    bufferOffset = _serializer.float64(obj.u8MasterCylinderPressure, buffer, bufferOffset);
    // Serialize message field [u8SteeringWheel]
    bufferOffset = _serializer.float64(obj.u8SteeringWheel, buffer, bufferOffset);
    // Serialize message field [u8ThrottlePedal]
    bufferOffset = _serializer.float64(obj.u8ThrottlePedal, buffer, bufferOffset);
    // Serialize message field [u8BrakePedal]
    bufferOffset = _serializer.float64(obj.u8BrakePedal, buffer, bufferOffset);
    // Serialize message field [u8AccelTgt]
    bufferOffset = _serializer.float64(obj.u8AccelTgt, buffer, bufferOffset);
    // Serialize message field [u8SteeringTorque]
    bufferOffset = _serializer.float64(obj.u8SteeringTorque, buffer, bufferOffset);
    // Serialize message field [u8StopDistance]
    bufferOffset = _serializer.float64(obj.u8StopDistance, buffer, bufferOffset);
    // Serialize message field [u8TargetSpeed]
    bufferOffset = _serializer.float64(obj.u8TargetSpeed, buffer, bufferOffset);
    // Serialize message field [u8Vx]
    bufferOffset = _serializer.float64(obj.u8Vx, buffer, bufferOffset);
    // Serialize message field [u8Wr]
    bufferOffset = _serializer.float64(obj.u8Wr, buffer, bufferOffset);
    // Serialize message field [u8VLFWheelSpd]
    bufferOffset = _serializer.float64(obj.u8VLFWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8VRFWheelSpd]
    bufferOffset = _serializer.float64(obj.u8VRFWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8VLRWheelSpd]
    bufferOffset = _serializer.float64(obj.u8VLRWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8VRRWheelSpd]
    bufferOffset = _serializer.float64(obj.u8VRRWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8Ax]
    bufferOffset = _serializer.float64(obj.u8Ax, buffer, bufferOffset);
    // Serialize message field [u8Ay]
    bufferOffset = _serializer.float64(obj.u8Ay, buffer, bufferOffset);
    // Serialize message field [u8SteeringWheelAngularRate]
    bufferOffset = _serializer.float64(obj.u8SteeringWheelAngularRate, buffer, bufferOffset);
    // Serialize message field [u8DrvTorqAct]
    bufferOffset = _serializer.float64(obj.u8DrvTorqAct, buffer, bufferOffset);
    // Serialize message field [u8Xmc]
    bufferOffset = _serializer.float64(obj.u8Xmc, buffer, bufferOffset);
    // Serialize message field [u8Ymc]
    bufferOffset = _serializer.float64(obj.u8Ymc, buffer, bufferOffset);
    // Serialize message field [u8YawThetaVehicle]
    bufferOffset = _serializer.float64(obj.u8YawThetaVehicle, buffer, bufferOffset);
    // Serialize message field [u8PitchThetaVehicle]
    bufferOffset = _serializer.float64(obj.u8PitchThetaVehicle, buffer, bufferOffset);
    // Serialize message field [u8RollThetaVehicle]
    bufferOffset = _serializer.float64(obj.u8RollThetaVehicle, buffer, bufferOffset);
    // Serialize message field [u8PitchRateVehicle]
    bufferOffset = _serializer.float64(obj.u8PitchRateVehicle, buffer, bufferOffset);
    // Serialize message field [u8RollRateVehicle]
    bufferOffset = _serializer.float64(obj.u8RollRateVehicle, buffer, bufferOffset);
    // Serialize message field [u8SinSlopeout]
    bufferOffset = _serializer.float64(obj.u8SinSlopeout, buffer, bufferOffset);
    // Serialize message field [u8VehicleCurv]
    bufferOffset = _serializer.float64(obj.u8VehicleCurv, buffer, bufferOffset);
    // Serialize message field [u8TmotorCmd]
    bufferOffset = _serializer.float64(obj.u8TmotorCmd, buffer, bufferOffset);
    // Serialize message field [u8Tmotor]
    bufferOffset = _serializer.float64(obj.u8Tmotor, buffer, bufferOffset);
    // Serialize message field [u8EnergySourceLevel]
    bufferOffset = _serializer.float64(obj.u8EnergySourceLevel, buffer, bufferOffset);
    // Serialize message field [u8WLFWheelSpd]
    bufferOffset = _serializer.float64(obj.u8WLFWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8WRFWheelSpd]
    bufferOffset = _serializer.float64(obj.u8WRFWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8WLRWheelSpd]
    bufferOffset = _serializer.float64(obj.u8WLRWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8WRRWheelSpd]
    bufferOffset = _serializer.float64(obj.u8WRRWheelSpd, buffer, bufferOffset);
    // Serialize message field [u8WGearSpd]
    bufferOffset = _serializer.float64(obj.u8WGearSpd, buffer, bufferOffset);
    // Serialize message field [u1LFWheelRotatedDir]
    bufferOffset = _serializer.uint8(obj.u1LFWheelRotatedDir, buffer, bufferOffset);
    // Serialize message field [u1LRWheelRotatedDir]
    bufferOffset = _serializer.uint8(obj.u1LRWheelRotatedDir, buffer, bufferOffset);
    // Serialize message field [u1RFWheelRotatedDir]
    bufferOffset = _serializer.uint8(obj.u1RFWheelRotatedDir, buffer, bufferOffset);
    // Serialize message field [u1RRWheelRotatedDir]
    bufferOffset = _serializer.uint8(obj.u1RRWheelRotatedDir, buffer, bufferOffset);
    // Serialize message field [u1BrakePedalStatus]
    bufferOffset = _serializer.uint8(obj.u1BrakePedalStatus, buffer, bufferOffset);
    // Serialize message field [u1VehicleDir]
    bufferOffset = _serializer.uint8(obj.u1VehicleDir, buffer, bufferOffset);
    // Serialize message field [u1BrkType]
    bufferOffset = _serializer.uint8(obj.u1BrkType, buffer, bufferOffset);
    // Serialize message field [u1Gear]
    bufferOffset = _serializer.int8(obj.u1Gear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type driver_ctrl
    let len;
    let data = new driver_ctrl(null);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4MtWheel]
    data.u4MtWheel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u8MasterCylinderPressure]
    data.u8MasterCylinderPressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8SteeringWheel]
    data.u8SteeringWheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8ThrottlePedal]
    data.u8ThrottlePedal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8BrakePedal]
    data.u8BrakePedal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8AccelTgt]
    data.u8AccelTgt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8SteeringTorque]
    data.u8SteeringTorque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8StopDistance]
    data.u8StopDistance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8TargetSpeed]
    data.u8TargetSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Vx]
    data.u8Vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Wr]
    data.u8Wr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8VLFWheelSpd]
    data.u8VLFWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8VRFWheelSpd]
    data.u8VRFWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8VLRWheelSpd]
    data.u8VLRWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8VRRWheelSpd]
    data.u8VRRWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Ax]
    data.u8Ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Ay]
    data.u8Ay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8SteeringWheelAngularRate]
    data.u8SteeringWheelAngularRate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8DrvTorqAct]
    data.u8DrvTorqAct = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Xmc]
    data.u8Xmc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Ymc]
    data.u8Ymc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8YawThetaVehicle]
    data.u8YawThetaVehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8PitchThetaVehicle]
    data.u8PitchThetaVehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8RollThetaVehicle]
    data.u8RollThetaVehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8PitchRateVehicle]
    data.u8PitchRateVehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8RollRateVehicle]
    data.u8RollRateVehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8SinSlopeout]
    data.u8SinSlopeout = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8VehicleCurv]
    data.u8VehicleCurv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8TmotorCmd]
    data.u8TmotorCmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Tmotor]
    data.u8Tmotor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8EnergySourceLevel]
    data.u8EnergySourceLevel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8WLFWheelSpd]
    data.u8WLFWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8WRFWheelSpd]
    data.u8WRFWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8WLRWheelSpd]
    data.u8WLRWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8WRRWheelSpd]
    data.u8WRRWheelSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8WGearSpd]
    data.u8WGearSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u1LFWheelRotatedDir]
    data.u1LFWheelRotatedDir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1LRWheelRotatedDir]
    data.u1LRWheelRotatedDir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1RFWheelRotatedDir]
    data.u1RFWheelRotatedDir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1RRWheelRotatedDir]
    data.u1RRWheelRotatedDir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1BrakePedalStatus]
    data.u1BrakePedalStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1VehicleDir]
    data.u1VehicleDir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1BrkType]
    data.u1BrkType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Gear]
    data.u1Gear = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 296;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/driver_ctrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc27883f2d6c80938a7ec2f45203e918';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new driver_ctrl(null);
    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.u4MtWheel !== undefined) {
      resolved.u4MtWheel = msg.u4MtWheel;
    }
    else {
      resolved.u4MtWheel = 0.0
    }

    if (msg.u8MasterCylinderPressure !== undefined) {
      resolved.u8MasterCylinderPressure = msg.u8MasterCylinderPressure;
    }
    else {
      resolved.u8MasterCylinderPressure = 0.0
    }

    if (msg.u8SteeringWheel !== undefined) {
      resolved.u8SteeringWheel = msg.u8SteeringWheel;
    }
    else {
      resolved.u8SteeringWheel = 0.0
    }

    if (msg.u8ThrottlePedal !== undefined) {
      resolved.u8ThrottlePedal = msg.u8ThrottlePedal;
    }
    else {
      resolved.u8ThrottlePedal = 0.0
    }

    if (msg.u8BrakePedal !== undefined) {
      resolved.u8BrakePedal = msg.u8BrakePedal;
    }
    else {
      resolved.u8BrakePedal = 0.0
    }

    if (msg.u8AccelTgt !== undefined) {
      resolved.u8AccelTgt = msg.u8AccelTgt;
    }
    else {
      resolved.u8AccelTgt = 0.0
    }

    if (msg.u8SteeringTorque !== undefined) {
      resolved.u8SteeringTorque = msg.u8SteeringTorque;
    }
    else {
      resolved.u8SteeringTorque = 0.0
    }

    if (msg.u8StopDistance !== undefined) {
      resolved.u8StopDistance = msg.u8StopDistance;
    }
    else {
      resolved.u8StopDistance = 0.0
    }

    if (msg.u8TargetSpeed !== undefined) {
      resolved.u8TargetSpeed = msg.u8TargetSpeed;
    }
    else {
      resolved.u8TargetSpeed = 0.0
    }

    if (msg.u8Vx !== undefined) {
      resolved.u8Vx = msg.u8Vx;
    }
    else {
      resolved.u8Vx = 0.0
    }

    if (msg.u8Wr !== undefined) {
      resolved.u8Wr = msg.u8Wr;
    }
    else {
      resolved.u8Wr = 0.0
    }

    if (msg.u8VLFWheelSpd !== undefined) {
      resolved.u8VLFWheelSpd = msg.u8VLFWheelSpd;
    }
    else {
      resolved.u8VLFWheelSpd = 0.0
    }

    if (msg.u8VRFWheelSpd !== undefined) {
      resolved.u8VRFWheelSpd = msg.u8VRFWheelSpd;
    }
    else {
      resolved.u8VRFWheelSpd = 0.0
    }

    if (msg.u8VLRWheelSpd !== undefined) {
      resolved.u8VLRWheelSpd = msg.u8VLRWheelSpd;
    }
    else {
      resolved.u8VLRWheelSpd = 0.0
    }

    if (msg.u8VRRWheelSpd !== undefined) {
      resolved.u8VRRWheelSpd = msg.u8VRRWheelSpd;
    }
    else {
      resolved.u8VRRWheelSpd = 0.0
    }

    if (msg.u8Ax !== undefined) {
      resolved.u8Ax = msg.u8Ax;
    }
    else {
      resolved.u8Ax = 0.0
    }

    if (msg.u8Ay !== undefined) {
      resolved.u8Ay = msg.u8Ay;
    }
    else {
      resolved.u8Ay = 0.0
    }

    if (msg.u8SteeringWheelAngularRate !== undefined) {
      resolved.u8SteeringWheelAngularRate = msg.u8SteeringWheelAngularRate;
    }
    else {
      resolved.u8SteeringWheelAngularRate = 0.0
    }

    if (msg.u8DrvTorqAct !== undefined) {
      resolved.u8DrvTorqAct = msg.u8DrvTorqAct;
    }
    else {
      resolved.u8DrvTorqAct = 0.0
    }

    if (msg.u8Xmc !== undefined) {
      resolved.u8Xmc = msg.u8Xmc;
    }
    else {
      resolved.u8Xmc = 0.0
    }

    if (msg.u8Ymc !== undefined) {
      resolved.u8Ymc = msg.u8Ymc;
    }
    else {
      resolved.u8Ymc = 0.0
    }

    if (msg.u8YawThetaVehicle !== undefined) {
      resolved.u8YawThetaVehicle = msg.u8YawThetaVehicle;
    }
    else {
      resolved.u8YawThetaVehicle = 0.0
    }

    if (msg.u8PitchThetaVehicle !== undefined) {
      resolved.u8PitchThetaVehicle = msg.u8PitchThetaVehicle;
    }
    else {
      resolved.u8PitchThetaVehicle = 0.0
    }

    if (msg.u8RollThetaVehicle !== undefined) {
      resolved.u8RollThetaVehicle = msg.u8RollThetaVehicle;
    }
    else {
      resolved.u8RollThetaVehicle = 0.0
    }

    if (msg.u8PitchRateVehicle !== undefined) {
      resolved.u8PitchRateVehicle = msg.u8PitchRateVehicle;
    }
    else {
      resolved.u8PitchRateVehicle = 0.0
    }

    if (msg.u8RollRateVehicle !== undefined) {
      resolved.u8RollRateVehicle = msg.u8RollRateVehicle;
    }
    else {
      resolved.u8RollRateVehicle = 0.0
    }

    if (msg.u8SinSlopeout !== undefined) {
      resolved.u8SinSlopeout = msg.u8SinSlopeout;
    }
    else {
      resolved.u8SinSlopeout = 0.0
    }

    if (msg.u8VehicleCurv !== undefined) {
      resolved.u8VehicleCurv = msg.u8VehicleCurv;
    }
    else {
      resolved.u8VehicleCurv = 0.0
    }

    if (msg.u8TmotorCmd !== undefined) {
      resolved.u8TmotorCmd = msg.u8TmotorCmd;
    }
    else {
      resolved.u8TmotorCmd = 0.0
    }

    if (msg.u8Tmotor !== undefined) {
      resolved.u8Tmotor = msg.u8Tmotor;
    }
    else {
      resolved.u8Tmotor = 0.0
    }

    if (msg.u8EnergySourceLevel !== undefined) {
      resolved.u8EnergySourceLevel = msg.u8EnergySourceLevel;
    }
    else {
      resolved.u8EnergySourceLevel = 0.0
    }

    if (msg.u8WLFWheelSpd !== undefined) {
      resolved.u8WLFWheelSpd = msg.u8WLFWheelSpd;
    }
    else {
      resolved.u8WLFWheelSpd = 0.0
    }

    if (msg.u8WRFWheelSpd !== undefined) {
      resolved.u8WRFWheelSpd = msg.u8WRFWheelSpd;
    }
    else {
      resolved.u8WRFWheelSpd = 0.0
    }

    if (msg.u8WLRWheelSpd !== undefined) {
      resolved.u8WLRWheelSpd = msg.u8WLRWheelSpd;
    }
    else {
      resolved.u8WLRWheelSpd = 0.0
    }

    if (msg.u8WRRWheelSpd !== undefined) {
      resolved.u8WRRWheelSpd = msg.u8WRRWheelSpd;
    }
    else {
      resolved.u8WRRWheelSpd = 0.0
    }

    if (msg.u8WGearSpd !== undefined) {
      resolved.u8WGearSpd = msg.u8WGearSpd;
    }
    else {
      resolved.u8WGearSpd = 0.0
    }

    if (msg.u1LFWheelRotatedDir !== undefined) {
      resolved.u1LFWheelRotatedDir = msg.u1LFWheelRotatedDir;
    }
    else {
      resolved.u1LFWheelRotatedDir = 0
    }

    if (msg.u1LRWheelRotatedDir !== undefined) {
      resolved.u1LRWheelRotatedDir = msg.u1LRWheelRotatedDir;
    }
    else {
      resolved.u1LRWheelRotatedDir = 0
    }

    if (msg.u1RFWheelRotatedDir !== undefined) {
      resolved.u1RFWheelRotatedDir = msg.u1RFWheelRotatedDir;
    }
    else {
      resolved.u1RFWheelRotatedDir = 0
    }

    if (msg.u1RRWheelRotatedDir !== undefined) {
      resolved.u1RRWheelRotatedDir = msg.u1RRWheelRotatedDir;
    }
    else {
      resolved.u1RRWheelRotatedDir = 0
    }

    if (msg.u1BrakePedalStatus !== undefined) {
      resolved.u1BrakePedalStatus = msg.u1BrakePedalStatus;
    }
    else {
      resolved.u1BrakePedalStatus = 0
    }

    if (msg.u1VehicleDir !== undefined) {
      resolved.u1VehicleDir = msg.u1VehicleDir;
    }
    else {
      resolved.u1VehicleDir = 0
    }

    if (msg.u1BrkType !== undefined) {
      resolved.u1BrkType = msg.u1BrkType;
    }
    else {
      resolved.u1BrkType = 0
    }

    if (msg.u1Gear !== undefined) {
      resolved.u1Gear = msg.u1Gear;
    }
    else {
      resolved.u1Gear = 0
    }

    return resolved;
    }
};

module.exports = driver_ctrl;
