// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let header = require('./header.js');
let sync = require('./sync.js');

//-----------------------------------------------------------

class rosADToSimproTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.adTrigger = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new header();
      }
      if (initObj.hasOwnProperty('adTrigger')) {
        this.adTrigger = initObj.adTrigger
      }
      else {
        this.adTrigger = new sync();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rosADToSimproTrigger
    // Serialize message field [head]
    bufferOffset = header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [adTrigger]
    bufferOffset = sync.serialize(obj.adTrigger, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rosADToSimproTrigger
    let len;
    let data = new rosADToSimproTrigger(null);
    // Deserialize message field [head]
    data.head = header.deserialize(buffer, bufferOffset);
    // Deserialize message field [adTrigger]
    data.adTrigger = sync.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/rosADToSimproTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2da15b25b1d5918bbf88a5b655854d59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    header head
    sync   adTrigger
    ================================================================================
    MSG: RosAdapter/header
    # /** ------ Msg header ------ */
    float64 u8SimTime
    uint32  u4HeaderSize
    uint32  u4DataSize
    uint32  u4FrameNo
    ================================================================================
    MSG: RosAdapter/sync
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
    const resolved = new rosADToSimproTrigger(null);
    if (msg.head !== undefined) {
      resolved.head = header.Resolve(msg.head)
    }
    else {
      resolved.head = new header()
    }

    if (msg.adTrigger !== undefined) {
      resolved.adTrigger = sync.Resolve(msg.adTrigger)
    }
    else {
      resolved.adTrigger = new sync()
    }

    return resolved;
    }
};

module.exports = rosADToSimproTrigger;
