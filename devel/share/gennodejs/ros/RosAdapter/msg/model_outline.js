// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let double_array = require('./double_array.js');

//-----------------------------------------------------------

class model_outline {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1ModelName = null;
      this.au8OutlinePoints = null;
    }
    else {
      if (initObj.hasOwnProperty('au1ModelName')) {
        this.au1ModelName = initObj.au1ModelName
      }
      else {
        this.au1ModelName = '';
      }
      if (initObj.hasOwnProperty('au8OutlinePoints')) {
        this.au8OutlinePoints = initObj.au8OutlinePoints
      }
      else {
        this.au8OutlinePoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type model_outline
    // Serialize message field [au1ModelName]
    bufferOffset = _serializer.string(obj.au1ModelName, buffer, bufferOffset);
    // Serialize message field [au8OutlinePoints]
    // Serialize the length for message field [au8OutlinePoints]
    bufferOffset = _serializer.uint32(obj.au8OutlinePoints.length, buffer, bufferOffset);
    obj.au8OutlinePoints.forEach((val) => {
      bufferOffset = double_array.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type model_outline
    let len;
    let data = new model_outline(null);
    // Deserialize message field [au1ModelName]
    data.au1ModelName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au8OutlinePoints]
    // Deserialize array length for message field [au8OutlinePoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.au8OutlinePoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.au8OutlinePoints[i] = double_array.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1ModelName);
    object.au8OutlinePoints.forEach((val) => {
      length += double_array.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/model_outline';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21a3ac0ff6ce066332bb8e9a1448b5b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string                au1ModelName
    double_array[]        au8OutlinePoints    
    ================================================================================
    MSG: RosAdapter/double_array
    float64[]  data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new model_outline(null);
    if (msg.au1ModelName !== undefined) {
      resolved.au1ModelName = msg.au1ModelName;
    }
    else {
      resolved.au1ModelName = ''
    }

    if (msg.au8OutlinePoints !== undefined) {
      resolved.au8OutlinePoints = new Array(msg.au8OutlinePoints.length);
      for (let i = 0; i < resolved.au8OutlinePoints.length; ++i) {
        resolved.au8OutlinePoints[i] = double_array.Resolve(msg.au8OutlinePoints[i]);
      }
    }
    else {
      resolved.au8OutlinePoints = []
    }

    return resolved;
    }
};

module.exports = model_outline;
