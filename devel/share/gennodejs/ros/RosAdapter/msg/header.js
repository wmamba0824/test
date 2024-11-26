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

class header {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8SimTime = null;
      this.u4HeaderSize = null;
      this.u4DataSize = null;
      this.u4FrameNo = null;
    }
    else {
      if (initObj.hasOwnProperty('u8SimTime')) {
        this.u8SimTime = initObj.u8SimTime
      }
      else {
        this.u8SimTime = 0.0;
      }
      if (initObj.hasOwnProperty('u4HeaderSize')) {
        this.u4HeaderSize = initObj.u4HeaderSize
      }
      else {
        this.u4HeaderSize = 0;
      }
      if (initObj.hasOwnProperty('u4DataSize')) {
        this.u4DataSize = initObj.u4DataSize
      }
      else {
        this.u4DataSize = 0;
      }
      if (initObj.hasOwnProperty('u4FrameNo')) {
        this.u4FrameNo = initObj.u4FrameNo
      }
      else {
        this.u4FrameNo = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type header
    // Serialize message field [u8SimTime]
    bufferOffset = _serializer.float64(obj.u8SimTime, buffer, bufferOffset);
    // Serialize message field [u4HeaderSize]
    bufferOffset = _serializer.uint32(obj.u4HeaderSize, buffer, bufferOffset);
    // Serialize message field [u4DataSize]
    bufferOffset = _serializer.uint32(obj.u4DataSize, buffer, bufferOffset);
    // Serialize message field [u4FrameNo]
    bufferOffset = _serializer.uint32(obj.u4FrameNo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type header
    let len;
    let data = new header(null);
    // Deserialize message field [u8SimTime]
    data.u8SimTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4HeaderSize]
    data.u4HeaderSize = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4DataSize]
    data.u4DataSize = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4FrameNo]
    data.u4FrameNo = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/header';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '029ca86f5dd4b29bcf12cb8af905ab90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ Msg header ------ */
    float64 u8SimTime
    uint32  u4HeaderSize
    uint32  u4DataSize
    uint32  u4FrameNo
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new header(null);
    if (msg.u8SimTime !== undefined) {
      resolved.u8SimTime = msg.u8SimTime;
    }
    else {
      resolved.u8SimTime = 0.0
    }

    if (msg.u4HeaderSize !== undefined) {
      resolved.u4HeaderSize = msg.u4HeaderSize;
    }
    else {
      resolved.u4HeaderSize = 0
    }

    if (msg.u4DataSize !== undefined) {
      resolved.u4DataSize = msg.u4DataSize;
    }
    else {
      resolved.u4DataSize = 0
    }

    if (msg.u4FrameNo !== undefined) {
      resolved.u4FrameNo = msg.u4FrameNo;
    }
    else {
      resolved.u4FrameNo = 0
    }

    return resolved;
    }
};

module.exports = header;
