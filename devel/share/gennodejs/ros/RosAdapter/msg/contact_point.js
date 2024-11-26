// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let coord = require('./coord.js');

//-----------------------------------------------------------

class contact_point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sRoadDataIn = null;
      this.u2Id = null;
    }
    else {
      if (initObj.hasOwnProperty('sRoadDataIn')) {
        this.sRoadDataIn = initObj.sRoadDataIn
      }
      else {
        this.sRoadDataIn = new coord();
      }
      if (initObj.hasOwnProperty('u2Id')) {
        this.u2Id = initObj.u2Id
      }
      else {
        this.u2Id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type contact_point
    // Serialize message field [sRoadDataIn]
    bufferOffset = coord.serialize(obj.sRoadDataIn, buffer, bufferOffset);
    // Serialize message field [u2Id]
    bufferOffset = _serializer.uint16(obj.u2Id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type contact_point
    let len;
    let data = new contact_point(null);
    // Deserialize message field [sRoadDataIn]
    data.sRoadDataIn = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [u2Id]
    data.u2Id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/contact_point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41a840108b4df99218eaa97f9aa87ec5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 接触点信息 ------ */
    coord  sRoadDataIn
    uint16 u2Id
    ================================================================================
    MSG: RosAdapter/coord
    # /** ------ 坐标 ------ */
    float64   u8X
    float64   u8Y
    float64   u8Z
    float32   u4H
    float32   u4P
    float32   u4R
    uint8     u1Type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new contact_point(null);
    if (msg.sRoadDataIn !== undefined) {
      resolved.sRoadDataIn = coord.Resolve(msg.sRoadDataIn)
    }
    else {
      resolved.sRoadDataIn = new coord()
    }

    if (msg.u2Id !== undefined) {
      resolved.u2Id = msg.u2Id;
    }
    else {
      resolved.u2Id = 0
    }

    return resolved;
    }
};

module.exports = contact_point;
