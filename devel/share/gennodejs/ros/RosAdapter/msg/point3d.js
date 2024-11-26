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

class point3d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8x = null;
      this.u8y = null;
      this.u8z = null;
    }
    else {
      if (initObj.hasOwnProperty('u8x')) {
        this.u8x = initObj.u8x
      }
      else {
        this.u8x = 0.0;
      }
      if (initObj.hasOwnProperty('u8y')) {
        this.u8y = initObj.u8y
      }
      else {
        this.u8y = 0.0;
      }
      if (initObj.hasOwnProperty('u8z')) {
        this.u8z = initObj.u8z
      }
      else {
        this.u8z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type point3d
    // Serialize message field [u8x]
    bufferOffset = _serializer.float64(obj.u8x, buffer, bufferOffset);
    // Serialize message field [u8y]
    bufferOffset = _serializer.float64(obj.u8y, buffer, bufferOffset);
    // Serialize message field [u8z]
    bufferOffset = _serializer.float64(obj.u8z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type point3d
    let len;
    let data = new point3d(null);
    // Deserialize message field [u8x]
    data.u8x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8y]
    data.u8y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8z]
    data.u8z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/point3d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ef76082ef9da5b9c3f0694c6fbb0753';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64      u8x
    float64      u8y
    float64      u8z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new point3d(null);
    if (msg.u8x !== undefined) {
      resolved.u8x = msg.u8x;
    }
    else {
      resolved.u8x = 0.0
    }

    if (msg.u8y !== undefined) {
      resolved.u8y = msg.u8y;
    }
    else {
      resolved.u8y = 0.0
    }

    if (msg.u8z !== undefined) {
      resolved.u8z = msg.u8z;
    }
    else {
      resolved.u8z = 0.0
    }

    return resolved;
    }
};

module.exports = point3d;
