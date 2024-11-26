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

class imu_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgcnt = null;
      this.u8X = null;
      this.u8Y = null;
      this.u8Z = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
    }
    else {
      if (initObj.hasOwnProperty('msgcnt')) {
        this.msgcnt = initObj.msgcnt
      }
      else {
        this.msgcnt = 0;
      }
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
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imu_data
    // Serialize message field [msgcnt]
    bufferOffset = _serializer.uint8(obj.msgcnt, buffer, bufferOffset);
    // Serialize message field [u8X]
    bufferOffset = _serializer.float64(obj.u8X, buffer, bufferOffset);
    // Serialize message field [u8Y]
    bufferOffset = _serializer.float64(obj.u8Y, buffer, bufferOffset);
    // Serialize message field [u8Z]
    bufferOffset = _serializer.float64(obj.u8Z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imu_data
    let len;
    let data = new imu_data(null);
    // Deserialize message field [msgcnt]
    data.msgcnt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u8X]
    data.u8X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Y]
    data.u8Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8Z]
    data.u8Z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/imu_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4178d59bbaf80ca00b22a79f7e80938d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8         msgcnt
    float64       u8X
    float64       u8Y
    float64       u8Z
    float64       yaw
    float64       pitch
    float64       roll
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imu_data(null);
    if (msg.msgcnt !== undefined) {
      resolved.msgcnt = msg.msgcnt;
    }
    else {
      resolved.msgcnt = 0
    }

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

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    return resolved;
    }
};

module.exports = imu_data;
