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

class road_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8RoadId = null;
      this.u4ObjectId = null;
      this.u4DefaultSpeed = null;
      this.u4WaterLevel = null;
      this.u4DistToJunc = null;
    }
    else {
      if (initObj.hasOwnProperty('u8RoadId')) {
        this.u8RoadId = initObj.u8RoadId
      }
      else {
        this.u8RoadId = 0;
      }
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('u4DefaultSpeed')) {
        this.u4DefaultSpeed = initObj.u4DefaultSpeed
      }
      else {
        this.u4DefaultSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('u4WaterLevel')) {
        this.u4WaterLevel = initObj.u4WaterLevel
      }
      else {
        this.u4WaterLevel = 0.0;
      }
      if (initObj.hasOwnProperty('u4DistToJunc')) {
        this.u4DistToJunc = initObj.u4DistToJunc
      }
      else {
        this.u4DistToJunc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type road_state
    // Serialize message field [u8RoadId]
    bufferOffset = _serializer.uint64(obj.u8RoadId, buffer, bufferOffset);
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [u4DefaultSpeed]
    bufferOffset = _serializer.float32(obj.u4DefaultSpeed, buffer, bufferOffset);
    // Serialize message field [u4WaterLevel]
    bufferOffset = _serializer.float32(obj.u4WaterLevel, buffer, bufferOffset);
    // Serialize message field [u4DistToJunc]
    bufferOffset = _serializer.float32(obj.u4DistToJunc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type road_state
    let len;
    let data = new road_state(null);
    // Deserialize message field [u8RoadId]
    data.u8RoadId = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4DefaultSpeed]
    data.u4DefaultSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4WaterLevel]
    data.u4WaterLevel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4DistToJunc]
    data.u4DistToJunc = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/road_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b99771b3b0714bf50c28d1e2e932612';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #/** ------ 车辆对应的道路状态 ------ */
    uint64  u8RoadId
    uint32  u4ObjectId
    float32 u4DefaultSpeed
    float32 u4WaterLevel
    float32 u4DistToJunc
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new road_state(null);
    if (msg.u8RoadId !== undefined) {
      resolved.u8RoadId = msg.u8RoadId;
    }
    else {
      resolved.u8RoadId = 0
    }

    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.u4DefaultSpeed !== undefined) {
      resolved.u4DefaultSpeed = msg.u4DefaultSpeed;
    }
    else {
      resolved.u4DefaultSpeed = 0.0
    }

    if (msg.u4WaterLevel !== undefined) {
      resolved.u4WaterLevel = msg.u4WaterLevel;
    }
    else {
      resolved.u4WaterLevel = 0.0
    }

    if (msg.u4DistToJunc !== undefined) {
      resolved.u4DistToJunc = msg.u4DistToJunc;
    }
    else {
      resolved.u4DistToJunc = 0.0
    }

    return resolved;
    }
};

module.exports = road_state;
