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

class activate_controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4ObjectId = null;
      this.u1Lateral = null;
      this.u1Longitudinal = null;
    }
    else {
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('u1Lateral')) {
        this.u1Lateral = initObj.u1Lateral
      }
      else {
        this.u1Lateral = false;
      }
      if (initObj.hasOwnProperty('u1Longitudinal')) {
        this.u1Longitudinal = initObj.u1Longitudinal
      }
      else {
        this.u1Longitudinal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type activate_controller
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [u1Lateral]
    bufferOffset = _serializer.bool(obj.u1Lateral, buffer, bufferOffset);
    // Serialize message field [u1Longitudinal]
    bufferOffset = _serializer.bool(obj.u1Longitudinal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type activate_controller
    let len;
    let data = new activate_controller(null);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u1Lateral]
    data.u1Lateral = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1Longitudinal]
    data.u1Longitudinal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/activate_controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5767c52dad068fee51764b887eed08ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------激活控制器 ------ */
    
    uint32          u4ObjectId
    bool            u1Lateral
    bool            u1Longitudinal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new activate_controller(null);
    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.u1Lateral !== undefined) {
      resolved.u1Lateral = msg.u1Lateral;
    }
    else {
      resolved.u1Lateral = false
    }

    if (msg.u1Longitudinal !== undefined) {
      resolved.u1Longitudinal = msg.u1Longitudinal;
    }
    else {
      resolved.u1Longitudinal = false
    }

    return resolved;
    }
};

module.exports = activate_controller;
