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

class traffic_light_phase {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4Duration = null;
      this.u1Status = null;
    }
    else {
      if (initObj.hasOwnProperty('u4Duration')) {
        this.u4Duration = initObj.u4Duration
      }
      else {
        this.u4Duration = 0.0;
      }
      if (initObj.hasOwnProperty('u1Status')) {
        this.u1Status = initObj.u1Status
      }
      else {
        this.u1Status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type traffic_light_phase
    // Serialize message field [u4Duration]
    bufferOffset = _serializer.float32(obj.u4Duration, buffer, bufferOffset);
    // Serialize message field [u1Status]
    bufferOffset = _serializer.uint8(obj.u1Status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type traffic_light_phase
    let len;
    let data = new traffic_light_phase(null);
    // Deserialize message field [u4Duration]
    data.u4Duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1Status]
    data.u1Status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/traffic_light_phase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1ac58ef8e89d4655dd7a1a78a5c64d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 交通灯相位信息 ------ */
    
    float32     u4Duration
    uint8       u1Status   
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new traffic_light_phase(null);
    if (msg.u4Duration !== undefined) {
      resolved.u4Duration = msg.u4Duration;
    }
    else {
      resolved.u4Duration = 0.0
    }

    if (msg.u1Status !== undefined) {
      resolved.u1Status = msg.u1Status;
    }
    else {
      resolved.u1Status = 0
    }

    return resolved;
    }
};

module.exports = traffic_light_phase;
