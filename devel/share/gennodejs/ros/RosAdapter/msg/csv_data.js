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

class csv_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4AccelTgt = null;
      this.u4SteeringWheel = null;
      this.u4ADStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('u4AccelTgt')) {
        this.u4AccelTgt = initObj.u4AccelTgt
      }
      else {
        this.u4AccelTgt = 0.0;
      }
      if (initObj.hasOwnProperty('u4SteeringWheel')) {
        this.u4SteeringWheel = initObj.u4SteeringWheel
      }
      else {
        this.u4SteeringWheel = 0.0;
      }
      if (initObj.hasOwnProperty('u4ADStatus')) {
        this.u4ADStatus = initObj.u4ADStatus
      }
      else {
        this.u4ADStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type csv_data
    // Serialize message field [u4AccelTgt]
    bufferOffset = _serializer.float32(obj.u4AccelTgt, buffer, bufferOffset);
    // Serialize message field [u4SteeringWheel]
    bufferOffset = _serializer.float32(obj.u4SteeringWheel, buffer, bufferOffset);
    // Serialize message field [u4ADStatus]
    bufferOffset = _serializer.uint32(obj.u4ADStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type csv_data
    let len;
    let data = new csv_data(null);
    // Deserialize message field [u4AccelTgt]
    data.u4AccelTgt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4SteeringWheel]
    data.u4SteeringWheel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4ADStatus]
    data.u4ADStatus = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/csv_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83835cec71cad0ec066fba30fc82c5c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ AD发送给simpro的CSV数据 ------ */
    
    float32  u4AccelTgt
    float32  u4SteeringWheel
    uint32   u4ADStatus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new csv_data(null);
    if (msg.u4AccelTgt !== undefined) {
      resolved.u4AccelTgt = msg.u4AccelTgt;
    }
    else {
      resolved.u4AccelTgt = 0.0
    }

    if (msg.u4SteeringWheel !== undefined) {
      resolved.u4SteeringWheel = msg.u4SteeringWheel;
    }
    else {
      resolved.u4SteeringWheel = 0.0
    }

    if (msg.u4ADStatus !== undefined) {
      resolved.u4ADStatus = msg.u4ADStatus;
    }
    else {
      resolved.u4ADStatus = 0
    }

    return resolved;
    }
};

module.exports = csv_data;
