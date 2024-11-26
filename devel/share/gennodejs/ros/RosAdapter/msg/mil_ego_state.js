// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let object_state = require('./object_state.js');

//-----------------------------------------------------------

class mil_ego_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sObjectState = null;
      this.u4initSpeed = null;
      this.u8DistRoadEnd = null;
      this.u4LightMask = null;
      this.u4WheelSpeedFL = null;
      this.u4WheelSpeedFR = null;
      this.u4WheelSpeedRL = null;
      this.u4WheelSpeedRR = null;
      this.u4MasterCylinderPressure = null;
      this.u4WheelHeightLF = null;
      this.u4WheelHeightLR = null;
      this.u4WheelHeightRF = null;
      this.u4WheelHeightRR = null;
      this.u4SteerAngle = null;
      this.u1objQuantity = null;
      this.u1irc_id = null;
      this.u1irc_left_id = null;
      this.u1irc_right_id = null;
      this.u1cipv_id = null;
      this.u1lmc_id = null;
      this.u1rmc_id = null;
      this.u1isReachInitSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('sObjectState')) {
        this.sObjectState = initObj.sObjectState
      }
      else {
        this.sObjectState = new object_state();
      }
      if (initObj.hasOwnProperty('u4initSpeed')) {
        this.u4initSpeed = initObj.u4initSpeed
      }
      else {
        this.u4initSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('u8DistRoadEnd')) {
        this.u8DistRoadEnd = initObj.u8DistRoadEnd
      }
      else {
        this.u8DistRoadEnd = 0.0;
      }
      if (initObj.hasOwnProperty('u4LightMask')) {
        this.u4LightMask = initObj.u4LightMask
      }
      else {
        this.u4LightMask = 0;
      }
      if (initObj.hasOwnProperty('u4WheelSpeedFL')) {
        this.u4WheelSpeedFL = initObj.u4WheelSpeedFL
      }
      else {
        this.u4WheelSpeedFL = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelSpeedFR')) {
        this.u4WheelSpeedFR = initObj.u4WheelSpeedFR
      }
      else {
        this.u4WheelSpeedFR = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelSpeedRL')) {
        this.u4WheelSpeedRL = initObj.u4WheelSpeedRL
      }
      else {
        this.u4WheelSpeedRL = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelSpeedRR')) {
        this.u4WheelSpeedRR = initObj.u4WheelSpeedRR
      }
      else {
        this.u4WheelSpeedRR = 0.0;
      }
      if (initObj.hasOwnProperty('u4MasterCylinderPressure')) {
        this.u4MasterCylinderPressure = initObj.u4MasterCylinderPressure
      }
      else {
        this.u4MasterCylinderPressure = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelHeightLF')) {
        this.u4WheelHeightLF = initObj.u4WheelHeightLF
      }
      else {
        this.u4WheelHeightLF = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelHeightLR')) {
        this.u4WheelHeightLR = initObj.u4WheelHeightLR
      }
      else {
        this.u4WheelHeightLR = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelHeightRF')) {
        this.u4WheelHeightRF = initObj.u4WheelHeightRF
      }
      else {
        this.u4WheelHeightRF = 0.0;
      }
      if (initObj.hasOwnProperty('u4WheelHeightRR')) {
        this.u4WheelHeightRR = initObj.u4WheelHeightRR
      }
      else {
        this.u4WheelHeightRR = 0.0;
      }
      if (initObj.hasOwnProperty('u4SteerAngle')) {
        this.u4SteerAngle = initObj.u4SteerAngle
      }
      else {
        this.u4SteerAngle = 0.0;
      }
      if (initObj.hasOwnProperty('u1objQuantity')) {
        this.u1objQuantity = initObj.u1objQuantity
      }
      else {
        this.u1objQuantity = 0;
      }
      if (initObj.hasOwnProperty('u1irc_id')) {
        this.u1irc_id = initObj.u1irc_id
      }
      else {
        this.u1irc_id = 0;
      }
      if (initObj.hasOwnProperty('u1irc_left_id')) {
        this.u1irc_left_id = initObj.u1irc_left_id
      }
      else {
        this.u1irc_left_id = 0;
      }
      if (initObj.hasOwnProperty('u1irc_right_id')) {
        this.u1irc_right_id = initObj.u1irc_right_id
      }
      else {
        this.u1irc_right_id = 0;
      }
      if (initObj.hasOwnProperty('u1cipv_id')) {
        this.u1cipv_id = initObj.u1cipv_id
      }
      else {
        this.u1cipv_id = 0;
      }
      if (initObj.hasOwnProperty('u1lmc_id')) {
        this.u1lmc_id = initObj.u1lmc_id
      }
      else {
        this.u1lmc_id = 0;
      }
      if (initObj.hasOwnProperty('u1rmc_id')) {
        this.u1rmc_id = initObj.u1rmc_id
      }
      else {
        this.u1rmc_id = 0;
      }
      if (initObj.hasOwnProperty('u1isReachInitSpeed')) {
        this.u1isReachInitSpeed = initObj.u1isReachInitSpeed
      }
      else {
        this.u1isReachInitSpeed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mil_ego_state
    // Serialize message field [sObjectState]
    bufferOffset = object_state.serialize(obj.sObjectState, buffer, bufferOffset);
    // Serialize message field [u4initSpeed]
    bufferOffset = _serializer.float64(obj.u4initSpeed, buffer, bufferOffset);
    // Serialize message field [u8DistRoadEnd]
    bufferOffset = _serializer.float64(obj.u8DistRoadEnd, buffer, bufferOffset);
    // Serialize message field [u4LightMask]
    bufferOffset = _serializer.uint32(obj.u4LightMask, buffer, bufferOffset);
    // Serialize message field [u4WheelSpeedFL]
    bufferOffset = _serializer.float32(obj.u4WheelSpeedFL, buffer, bufferOffset);
    // Serialize message field [u4WheelSpeedFR]
    bufferOffset = _serializer.float32(obj.u4WheelSpeedFR, buffer, bufferOffset);
    // Serialize message field [u4WheelSpeedRL]
    bufferOffset = _serializer.float32(obj.u4WheelSpeedRL, buffer, bufferOffset);
    // Serialize message field [u4WheelSpeedRR]
    bufferOffset = _serializer.float32(obj.u4WheelSpeedRR, buffer, bufferOffset);
    // Serialize message field [u4MasterCylinderPressure]
    bufferOffset = _serializer.float32(obj.u4MasterCylinderPressure, buffer, bufferOffset);
    // Serialize message field [u4WheelHeightLF]
    bufferOffset = _serializer.float32(obj.u4WheelHeightLF, buffer, bufferOffset);
    // Serialize message field [u4WheelHeightLR]
    bufferOffset = _serializer.float32(obj.u4WheelHeightLR, buffer, bufferOffset);
    // Serialize message field [u4WheelHeightRF]
    bufferOffset = _serializer.float32(obj.u4WheelHeightRF, buffer, bufferOffset);
    // Serialize message field [u4WheelHeightRR]
    bufferOffset = _serializer.float32(obj.u4WheelHeightRR, buffer, bufferOffset);
    // Serialize message field [u4SteerAngle]
    bufferOffset = _serializer.float32(obj.u4SteerAngle, buffer, bufferOffset);
    // Serialize message field [u1objQuantity]
    bufferOffset = _serializer.uint8(obj.u1objQuantity, buffer, bufferOffset);
    // Serialize message field [u1irc_id]
    bufferOffset = _serializer.uint8(obj.u1irc_id, buffer, bufferOffset);
    // Serialize message field [u1irc_left_id]
    bufferOffset = _serializer.uint8(obj.u1irc_left_id, buffer, bufferOffset);
    // Serialize message field [u1irc_right_id]
    bufferOffset = _serializer.uint8(obj.u1irc_right_id, buffer, bufferOffset);
    // Serialize message field [u1cipv_id]
    bufferOffset = _serializer.uint8(obj.u1cipv_id, buffer, bufferOffset);
    // Serialize message field [u1lmc_id]
    bufferOffset = _serializer.uint8(obj.u1lmc_id, buffer, bufferOffset);
    // Serialize message field [u1rmc_id]
    bufferOffset = _serializer.uint8(obj.u1rmc_id, buffer, bufferOffset);
    // Serialize message field [u1isReachInitSpeed]
    bufferOffset = _serializer.uint8(obj.u1isReachInitSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mil_ego_state
    let len;
    let data = new mil_ego_state(null);
    // Deserialize message field [sObjectState]
    data.sObjectState = object_state.deserialize(buffer, bufferOffset);
    // Deserialize message field [u4initSpeed]
    data.u4initSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8DistRoadEnd]
    data.u8DistRoadEnd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4LightMask]
    data.u4LightMask = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4WheelSpeedFL]
    data.u4WheelSpeedFL = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelSpeedFR]
    data.u4WheelSpeedFR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelSpeedRL]
    data.u4WheelSpeedRL = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelSpeedRR]
    data.u4WheelSpeedRR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4MasterCylinderPressure]
    data.u4MasterCylinderPressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelHeightLF]
    data.u4WheelHeightLF = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelHeightLR]
    data.u4WheelHeightLR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelHeightRF]
    data.u4WheelHeightRF = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WheelHeightRR]
    data.u4WheelHeightRR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4SteerAngle]
    data.u4SteerAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1objQuantity]
    data.u1objQuantity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1irc_id]
    data.u1irc_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1irc_left_id]
    data.u1irc_left_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1irc_right_id]
    data.u1irc_right_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1cipv_id]
    data.u1cipv_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1lmc_id]
    data.u1lmc_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1rmc_id]
    data.u1rmc_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1isReachInitSpeed]
    data.u1isReachInitSpeed = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object_state.getMessageSize(object.sObjectState);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/mil_ego_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '163aed62265e04fd2e9211889cc3cfd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: RosAdapter/geometry
    # /** ------ 几何信息 ------ */
    float32 u4DimX
    float32 u4DimY
    float32 u4DimZ
    float32 u4OffX
    float32 u4OffY
    float32 u4OffZ
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mil_ego_state(null);
    if (msg.sObjectState !== undefined) {
      resolved.sObjectState = object_state.Resolve(msg.sObjectState)
    }
    else {
      resolved.sObjectState = new object_state()
    }

    if (msg.u4initSpeed !== undefined) {
      resolved.u4initSpeed = msg.u4initSpeed;
    }
    else {
      resolved.u4initSpeed = 0.0
    }

    if (msg.u8DistRoadEnd !== undefined) {
      resolved.u8DistRoadEnd = msg.u8DistRoadEnd;
    }
    else {
      resolved.u8DistRoadEnd = 0.0
    }

    if (msg.u4LightMask !== undefined) {
      resolved.u4LightMask = msg.u4LightMask;
    }
    else {
      resolved.u4LightMask = 0
    }

    if (msg.u4WheelSpeedFL !== undefined) {
      resolved.u4WheelSpeedFL = msg.u4WheelSpeedFL;
    }
    else {
      resolved.u4WheelSpeedFL = 0.0
    }

    if (msg.u4WheelSpeedFR !== undefined) {
      resolved.u4WheelSpeedFR = msg.u4WheelSpeedFR;
    }
    else {
      resolved.u4WheelSpeedFR = 0.0
    }

    if (msg.u4WheelSpeedRL !== undefined) {
      resolved.u4WheelSpeedRL = msg.u4WheelSpeedRL;
    }
    else {
      resolved.u4WheelSpeedRL = 0.0
    }

    if (msg.u4WheelSpeedRR !== undefined) {
      resolved.u4WheelSpeedRR = msg.u4WheelSpeedRR;
    }
    else {
      resolved.u4WheelSpeedRR = 0.0
    }

    if (msg.u4MasterCylinderPressure !== undefined) {
      resolved.u4MasterCylinderPressure = msg.u4MasterCylinderPressure;
    }
    else {
      resolved.u4MasterCylinderPressure = 0.0
    }

    if (msg.u4WheelHeightLF !== undefined) {
      resolved.u4WheelHeightLF = msg.u4WheelHeightLF;
    }
    else {
      resolved.u4WheelHeightLF = 0.0
    }

    if (msg.u4WheelHeightLR !== undefined) {
      resolved.u4WheelHeightLR = msg.u4WheelHeightLR;
    }
    else {
      resolved.u4WheelHeightLR = 0.0
    }

    if (msg.u4WheelHeightRF !== undefined) {
      resolved.u4WheelHeightRF = msg.u4WheelHeightRF;
    }
    else {
      resolved.u4WheelHeightRF = 0.0
    }

    if (msg.u4WheelHeightRR !== undefined) {
      resolved.u4WheelHeightRR = msg.u4WheelHeightRR;
    }
    else {
      resolved.u4WheelHeightRR = 0.0
    }

    if (msg.u4SteerAngle !== undefined) {
      resolved.u4SteerAngle = msg.u4SteerAngle;
    }
    else {
      resolved.u4SteerAngle = 0.0
    }

    if (msg.u1objQuantity !== undefined) {
      resolved.u1objQuantity = msg.u1objQuantity;
    }
    else {
      resolved.u1objQuantity = 0
    }

    if (msg.u1irc_id !== undefined) {
      resolved.u1irc_id = msg.u1irc_id;
    }
    else {
      resolved.u1irc_id = 0
    }

    if (msg.u1irc_left_id !== undefined) {
      resolved.u1irc_left_id = msg.u1irc_left_id;
    }
    else {
      resolved.u1irc_left_id = 0
    }

    if (msg.u1irc_right_id !== undefined) {
      resolved.u1irc_right_id = msg.u1irc_right_id;
    }
    else {
      resolved.u1irc_right_id = 0
    }

    if (msg.u1cipv_id !== undefined) {
      resolved.u1cipv_id = msg.u1cipv_id;
    }
    else {
      resolved.u1cipv_id = 0
    }

    if (msg.u1lmc_id !== undefined) {
      resolved.u1lmc_id = msg.u1lmc_id;
    }
    else {
      resolved.u1lmc_id = 0
    }

    if (msg.u1rmc_id !== undefined) {
      resolved.u1rmc_id = msg.u1rmc_id;
    }
    else {
      resolved.u1rmc_id = 0
    }

    if (msg.u1isReachInitSpeed !== undefined) {
      resolved.u1isReachInitSpeed = msg.u1isReachInitSpeed;
    }
    else {
      resolved.u1isReachInitSpeed = 0
    }

    return resolved;
    }
};

module.exports = mil_ego_state;
