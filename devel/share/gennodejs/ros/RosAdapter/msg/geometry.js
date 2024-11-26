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

class geometry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4DimX = null;
      this.u4DimY = null;
      this.u4DimZ = null;
      this.u4OffX = null;
      this.u4OffY = null;
      this.u4OffZ = null;
    }
    else {
      if (initObj.hasOwnProperty('u4DimX')) {
        this.u4DimX = initObj.u4DimX
      }
      else {
        this.u4DimX = 0.0;
      }
      if (initObj.hasOwnProperty('u4DimY')) {
        this.u4DimY = initObj.u4DimY
      }
      else {
        this.u4DimY = 0.0;
      }
      if (initObj.hasOwnProperty('u4DimZ')) {
        this.u4DimZ = initObj.u4DimZ
      }
      else {
        this.u4DimZ = 0.0;
      }
      if (initObj.hasOwnProperty('u4OffX')) {
        this.u4OffX = initObj.u4OffX
      }
      else {
        this.u4OffX = 0.0;
      }
      if (initObj.hasOwnProperty('u4OffY')) {
        this.u4OffY = initObj.u4OffY
      }
      else {
        this.u4OffY = 0.0;
      }
      if (initObj.hasOwnProperty('u4OffZ')) {
        this.u4OffZ = initObj.u4OffZ
      }
      else {
        this.u4OffZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type geometry
    // Serialize message field [u4DimX]
    bufferOffset = _serializer.float32(obj.u4DimX, buffer, bufferOffset);
    // Serialize message field [u4DimY]
    bufferOffset = _serializer.float32(obj.u4DimY, buffer, bufferOffset);
    // Serialize message field [u4DimZ]
    bufferOffset = _serializer.float32(obj.u4DimZ, buffer, bufferOffset);
    // Serialize message field [u4OffX]
    bufferOffset = _serializer.float32(obj.u4OffX, buffer, bufferOffset);
    // Serialize message field [u4OffY]
    bufferOffset = _serializer.float32(obj.u4OffY, buffer, bufferOffset);
    // Serialize message field [u4OffZ]
    bufferOffset = _serializer.float32(obj.u4OffZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type geometry
    let len;
    let data = new geometry(null);
    // Deserialize message field [u4DimX]
    data.u4DimX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4DimY]
    data.u4DimY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4DimZ]
    data.u4DimZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4OffX]
    data.u4OffX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4OffY]
    data.u4OffY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4OffZ]
    data.u4OffZ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/geometry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd5e9e63f2d15bb3fd1e5ec306048461';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new geometry(null);
    if (msg.u4DimX !== undefined) {
      resolved.u4DimX = msg.u4DimX;
    }
    else {
      resolved.u4DimX = 0.0
    }

    if (msg.u4DimY !== undefined) {
      resolved.u4DimY = msg.u4DimY;
    }
    else {
      resolved.u4DimY = 0.0
    }

    if (msg.u4DimZ !== undefined) {
      resolved.u4DimZ = msg.u4DimZ;
    }
    else {
      resolved.u4DimZ = 0.0
    }

    if (msg.u4OffX !== undefined) {
      resolved.u4OffX = msg.u4OffX;
    }
    else {
      resolved.u4OffX = 0.0
    }

    if (msg.u4OffY !== undefined) {
      resolved.u4OffY = msg.u4OffY;
    }
    else {
      resolved.u4OffY = 0.0
    }

    if (msg.u4OffZ !== undefined) {
      resolved.u4OffZ = msg.u4OffZ;
    }
    else {
      resolved.u4OffZ = 0.0
    }

    return resolved;
    }
};

module.exports = geometry;
