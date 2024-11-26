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

class sync {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4CmdMask = null;
      this.u4UserData = null;
    }
    else {
      if (initObj.hasOwnProperty('u4CmdMask')) {
        this.u4CmdMask = initObj.u4CmdMask
      }
      else {
        this.u4CmdMask = 0;
      }
      if (initObj.hasOwnProperty('u4UserData')) {
        this.u4UserData = initObj.u4UserData
      }
      else {
        this.u4UserData = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sync
    // Serialize message field [u4CmdMask]
    bufferOffset = _serializer.uint32(obj.u4CmdMask, buffer, bufferOffset);
    // Serialize message field [u4UserData]
    bufferOffset = _serializer.uint32(obj.u4UserData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sync
    let len;
    let data = new sync(null);
    // Deserialize message field [u4CmdMask]
    data.u4CmdMask = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4UserData]
    data.u4UserData = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/sync';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '404a13d7ef42e664a8f190745b98093b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 同步信号 ------ */
    uint32 u4CmdMask
    uint32 u4UserData
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sync(null);
    if (msg.u4CmdMask !== undefined) {
      resolved.u4CmdMask = msg.u4CmdMask;
    }
    else {
      resolved.u4CmdMask = 0
    }

    if (msg.u4UserData !== undefined) {
      resolved.u4UserData = msg.u4UserData;
    }
    else {
      resolved.u4UserData = 0
    }

    return resolved;
    }
};

module.exports = sync;
