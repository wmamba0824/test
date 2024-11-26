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

class ttc_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4Status = null;
    }
    else {
      if (initObj.hasOwnProperty('u4Status')) {
        this.u4Status = initObj.u4Status
      }
      else {
        this.u4Status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ttc_control
    // Serialize message field [u4Status]
    bufferOffset = _serializer.uint32(obj.u4Status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ttc_control
    let len;
    let data = new ttc_control(null);
    // Deserialize message field [u4Status]
    data.u4Status = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/ttc_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a9adebec45df2e6ca13379191df618a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32  u4Status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ttc_control(null);
    if (msg.u4Status !== undefined) {
      resolved.u4Status = msg.u4Status;
    }
    else {
      resolved.u4Status = 0
    }

    return resolved;
    }
};

module.exports = ttc_control;
