// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let coord = require('./coord.js');

//-----------------------------------------------------------

class traffic_sign {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1Type = null;
      this.sPos = null;
      this.u4TrafficSignId = null;
      this.u4ObjectId = null;
      this.au1SubType = null;
      this.u4RoadDist = null;
      this.u4Value = null;
      this.u1MinLane = null;
      this.u1MaxLane = null;
    }
    else {
      if (initObj.hasOwnProperty('au1Type')) {
        this.au1Type = initObj.au1Type
      }
      else {
        this.au1Type = '';
      }
      if (initObj.hasOwnProperty('sPos')) {
        this.sPos = initObj.sPos
      }
      else {
        this.sPos = new coord();
      }
      if (initObj.hasOwnProperty('u4TrafficSignId')) {
        this.u4TrafficSignId = initObj.u4TrafficSignId
      }
      else {
        this.u4TrafficSignId = 0;
      }
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('au1SubType')) {
        this.au1SubType = initObj.au1SubType
      }
      else {
        this.au1SubType = '';
      }
      if (initObj.hasOwnProperty('u4RoadDist')) {
        this.u4RoadDist = initObj.u4RoadDist
      }
      else {
        this.u4RoadDist = 0.0;
      }
      if (initObj.hasOwnProperty('u4Value')) {
        this.u4Value = initObj.u4Value
      }
      else {
        this.u4Value = 0.0;
      }
      if (initObj.hasOwnProperty('u1MinLane')) {
        this.u1MinLane = initObj.u1MinLane
      }
      else {
        this.u1MinLane = 0;
      }
      if (initObj.hasOwnProperty('u1MaxLane')) {
        this.u1MaxLane = initObj.u1MaxLane
      }
      else {
        this.u1MaxLane = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type traffic_sign
    // Serialize message field [au1Type]
    bufferOffset = _serializer.string(obj.au1Type, buffer, bufferOffset);
    // Serialize message field [sPos]
    bufferOffset = coord.serialize(obj.sPos, buffer, bufferOffset);
    // Serialize message field [u4TrafficSignId]
    bufferOffset = _serializer.uint32(obj.u4TrafficSignId, buffer, bufferOffset);
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [au1SubType]
    bufferOffset = _serializer.string(obj.au1SubType, buffer, bufferOffset);
    // Serialize message field [u4RoadDist]
    bufferOffset = _serializer.float32(obj.u4RoadDist, buffer, bufferOffset);
    // Serialize message field [u4Value]
    bufferOffset = _serializer.float32(obj.u4Value, buffer, bufferOffset);
    // Serialize message field [u1MinLane]
    bufferOffset = _serializer.int8(obj.u1MinLane, buffer, bufferOffset);
    // Serialize message field [u1MaxLane]
    bufferOffset = _serializer.int8(obj.u1MaxLane, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type traffic_sign
    let len;
    let data = new traffic_sign(null);
    // Deserialize message field [au1Type]
    data.au1Type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sPos]
    data.sPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [u4TrafficSignId]
    data.u4TrafficSignId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [au1SubType]
    data.au1SubType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [u4RoadDist]
    data.u4RoadDist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4Value]
    data.u4Value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1MinLane]
    data.u1MinLane = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1MaxLane]
    data.u1MaxLane = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1Type);
    length += _getByteLength(object.au1SubType);
    return length + 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/traffic_sign';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b667ebe94f436bba109192fd54360970';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: RosAdapter/coord
    # /** ------ 坐标 ------ */
    float64   u8X
    float64   u8Y
    float64   u8Z
    float32   u4H
    float32   u4P
    float32   u4R
    uint8     u1Type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new traffic_sign(null);
    if (msg.au1Type !== undefined) {
      resolved.au1Type = msg.au1Type;
    }
    else {
      resolved.au1Type = ''
    }

    if (msg.sPos !== undefined) {
      resolved.sPos = coord.Resolve(msg.sPos)
    }
    else {
      resolved.sPos = new coord()
    }

    if (msg.u4TrafficSignId !== undefined) {
      resolved.u4TrafficSignId = msg.u4TrafficSignId;
    }
    else {
      resolved.u4TrafficSignId = 0
    }

    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.au1SubType !== undefined) {
      resolved.au1SubType = msg.au1SubType;
    }
    else {
      resolved.au1SubType = ''
    }

    if (msg.u4RoadDist !== undefined) {
      resolved.u4RoadDist = msg.u4RoadDist;
    }
    else {
      resolved.u4RoadDist = 0.0
    }

    if (msg.u4Value !== undefined) {
      resolved.u4Value = msg.u4Value;
    }
    else {
      resolved.u4Value = 0.0
    }

    if (msg.u1MinLane !== undefined) {
      resolved.u1MinLane = msg.u1MinLane;
    }
    else {
      resolved.u1MinLane = 0
    }

    if (msg.u1MaxLane !== undefined) {
      resolved.u1MaxLane = msg.u1MaxLane;
    }
    else {
      resolved.u1MaxLane = 0
    }

    return resolved;
    }
};

module.exports = traffic_sign;
