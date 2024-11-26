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

class road_query {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8X = null;
      this.u8Y = null;
      this.u2Id = null;
    }
    else {
      if (initObj.hasOwnProperty('u8X')) {
        this.u8X = initObj.u8X
      }
      else {
        this.u8X = 0.0;
      }
      if (initObj.hasOwnProperty('u8Y')) {
        this.u8Y = initObj.u8Y
      }
      else {
        this.u8Y = 0.0;
      }
      if (initObj.hasOwnProperty('u2Id')) {
        this.u2Id = initObj.u2Id
      }
      else {
        this.u2Id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type road_query
    // Serialize message field [u8X]
    bufferOffset = _serializer.float32(obj.u8X, buffer, bufferOffset);
    // Serialize message field [u8Y]
    bufferOffset = _serializer.float32(obj.u8Y, buffer, bufferOffset);
    // Serialize message field [u2Id]
    bufferOffset = _serializer.uint16(obj.u2Id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type road_query
    let len;
    let data = new road_query(null);
    // Deserialize message field [u8X]
    data.u8X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u8Y]
    data.u8Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u2Id]
    data.u2Id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/road_query';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '197c272ebc790a868b90d572669363c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 查询道路点 ------ */
    float32 u8X
    float32 u8Y
    uint16  u2Id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new road_query(null);
    if (msg.u8X !== undefined) {
      resolved.u8X = msg.u8X;
    }
    else {
      resolved.u8X = 0.0
    }

    if (msg.u8Y !== undefined) {
      resolved.u8Y = msg.u8Y;
    }
    else {
      resolved.u8Y = 0.0
    }

    if (msg.u2Id !== undefined) {
      resolved.u2Id = msg.u2Id;
    }
    else {
      resolved.u2Id = 0
    }

    return resolved;
    }
};

module.exports = road_query;
