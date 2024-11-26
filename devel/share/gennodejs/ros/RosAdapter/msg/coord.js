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

class coord {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8X = null;
      this.u8Y = null;
      this.u8Z = null;
      this.u4H = null;
      this.u4P = null;
      this.u4R = null;
      this.u1Type = null;
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
      if (initObj.hasOwnProperty('u8Z')) {
        this.u8Z = initObj.u8Z
      }
      else {
        this.u8Z = 0.0;
      }
      if (initObj.hasOwnProperty('u4H')) {
        this.u4H = initObj.u4H
      }
      else {
        this.u4H = 0.0;
      }
      if (initObj.hasOwnProperty('u4P')) {
        this.u4P = initObj.u4P
      }
      else {
        this.u4P = 0.0;
      }
      if (initObj.hasOwnProperty('u4R')) {
        this.u4R = initObj.u4R
      }
      else {
        this.u4R = 0.0;
      }
      if (initObj.hasOwnProperty('u1Type')) {
        this.u1Type = initObj.u1Type
      }
      else {
        this.u1Type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type coord
    // Serialize message field [u8X]
    bufferOffset = _serializer.float64(obj.u8X, buffer, bufferOffset);
    // Serialize message field [u8Y]
    bufferOffset = _serializer.float64(obj.u8Y, buffer, bufferOffset);
    // Serialize message field [u8Z]
    bufferOffset = _serializer.float64(obj.u8Z, buffer, bufferOffset);
    // Serialize message field [u4H]
    bufferOffset = _serializer.float32(obj.u4H, buffer, bufferOffset);
    // Serialize message field [u4P]
    bufferOffset = _serializer.float32(obj.u4P, buffer, bufferOffset);
    // Serialize message field [u4R]
    bufferOffset = _serializer.float32(obj.u4R, buffer, bufferOffset);
    // Serialize message field [u1Type]
    bufferOffset = _serializer.uint8(obj.u1Type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type coord
    let len;
    let data = new coord(null);
    // Deserialize message field [u8X]
    data.u8X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Y]
    data.u8Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Z]
    data.u8Z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4H]
    data.u4H = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4P]
    data.u4P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4R]
    data.u4R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1Type]
    data.u1Type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/coord';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b91c4545f116a70c5f09e1d7ccb453d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new coord(null);
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

    if (msg.u8Z !== undefined) {
      resolved.u8Z = msg.u8Z;
    }
    else {
      resolved.u8Z = 0.0
    }

    if (msg.u4H !== undefined) {
      resolved.u4H = msg.u4H;
    }
    else {
      resolved.u4H = 0.0
    }

    if (msg.u4P !== undefined) {
      resolved.u4P = msg.u4P;
    }
    else {
      resolved.u4P = 0.0
    }

    if (msg.u4R !== undefined) {
      resolved.u4R = msg.u4R;
    }
    else {
      resolved.u4R = 0.0
    }

    if (msg.u1Type !== undefined) {
      resolved.u1Type = msg.u1Type;
    }
    else {
      resolved.u1Type = 0
    }

    return resolved;
    }
};

module.exports = coord;
