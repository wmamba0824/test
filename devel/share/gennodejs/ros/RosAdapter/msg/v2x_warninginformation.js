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

class v2x_warninginformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4Type = null;
    }
    else {
      if (initObj.hasOwnProperty('u4Type')) {
        this.u4Type = initObj.u4Type
      }
      else {
        this.u4Type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type v2x_warninginformation
    // Serialize message field [u4Type]
    bufferOffset = _serializer.uint32(obj.u4Type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type v2x_warninginformation
    let len;
    let data = new v2x_warninginformation(null);
    // Deserialize message field [u4Type]
    data.u4Type = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/v2x_warninginformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0ebee8563c45127e3636d2e914f1c30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ V2X 告警信息 ------ */
    
    uint32 u4Type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new v2x_warninginformation(null);
    if (msg.u4Type !== undefined) {
      resolved.u4Type = msg.u4Type;
    }
    else {
      resolved.u4Type = 0
    }

    return resolved;
    }
};

module.exports = v2x_warninginformation;
