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

class custom_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1Type = null;
      this.au1Command = null;
      this.u4ObjectId = null;
    }
    else {
      if (initObj.hasOwnProperty('au1Type')) {
        this.au1Type = initObj.au1Type
      }
      else {
        this.au1Type = '';
      }
      if (initObj.hasOwnProperty('au1Command')) {
        this.au1Command = initObj.au1Command
      }
      else {
        this.au1Command = '';
      }
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type custom_command
    // Serialize message field [au1Type]
    bufferOffset = _serializer.string(obj.au1Type, buffer, bufferOffset);
    // Serialize message field [au1Command]
    bufferOffset = _serializer.string(obj.au1Command, buffer, bufferOffset);
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type custom_command
    let len;
    let data = new custom_command(null);
    // Deserialize message field [au1Type]
    data.au1Type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au1Command]
    data.au1Command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1Type);
    length += _getByteLength(object.au1Command);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/custom_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90841668178727efd240bbb0c9edb09b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------自定义指令 ------ */
    
    string   au1Type
    string   au1Command
    uint32   u4ObjectId
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new custom_command(null);
    if (msg.au1Type !== undefined) {
      resolved.au1Type = msg.au1Type;
    }
    else {
      resolved.au1Type = ''
    }

    if (msg.au1Command !== undefined) {
      resolved.au1Command = msg.au1Command;
    }
    else {
      resolved.au1Command = ''
    }

    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    return resolved;
    }
};

module.exports = custom_command;
