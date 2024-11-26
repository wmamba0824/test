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

class ad_signal_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1SignalName = null;
      this.u8SignalValue = null;
    }
    else {
      if (initObj.hasOwnProperty('au1SignalName')) {
        this.au1SignalName = initObj.au1SignalName
      }
      else {
        this.au1SignalName = '';
      }
      if (initObj.hasOwnProperty('u8SignalValue')) {
        this.u8SignalValue = initObj.u8SignalValue
      }
      else {
        this.u8SignalValue = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ad_signal_data
    // Serialize message field [au1SignalName]
    bufferOffset = _serializer.string(obj.au1SignalName, buffer, bufferOffset);
    // Serialize message field [u8SignalValue]
    bufferOffset = _serializer.float64(obj.u8SignalValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ad_signal_data
    let len;
    let data = new ad_signal_data(null);
    // Deserialize message field [au1SignalName]
    data.au1SignalName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [u8SignalValue]
    data.u8SignalValue = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1SignalName);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/ad_signal_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ff39b1451a3fcf44b37435ff12fa37b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string      au1SignalName
    float64     u8SignalValue
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ad_signal_data(null);
    if (msg.au1SignalName !== undefined) {
      resolved.au1SignalName = msg.au1SignalName;
    }
    else {
      resolved.au1SignalName = ''
    }

    if (msg.u8SignalValue !== undefined) {
      resolved.u8SignalValue = msg.u8SignalValue;
    }
    else {
      resolved.u8SignalValue = 0.0
    }

    return resolved;
    }
};

module.exports = ad_signal_data;
