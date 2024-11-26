// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let traffic_light_phase = require('./traffic_light_phase.js');

//-----------------------------------------------------------

class traffic_light {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4Id = null;
      this.u4CtrlId = null;
      this.u4NoPhases = null;
      this.u4DataSize = null;
      this.u4State = null;
      this.u4CycleTime = null;
      this.phases = null;
    }
    else {
      if (initObj.hasOwnProperty('u4Id')) {
        this.u4Id = initObj.u4Id
      }
      else {
        this.u4Id = 0;
      }
      if (initObj.hasOwnProperty('u4CtrlId')) {
        this.u4CtrlId = initObj.u4CtrlId
      }
      else {
        this.u4CtrlId = 0;
      }
      if (initObj.hasOwnProperty('u4NoPhases')) {
        this.u4NoPhases = initObj.u4NoPhases
      }
      else {
        this.u4NoPhases = 0;
      }
      if (initObj.hasOwnProperty('u4DataSize')) {
        this.u4DataSize = initObj.u4DataSize
      }
      else {
        this.u4DataSize = 0;
      }
      if (initObj.hasOwnProperty('u4State')) {
        this.u4State = initObj.u4State
      }
      else {
        this.u4State = 0.0;
      }
      if (initObj.hasOwnProperty('u4CycleTime')) {
        this.u4CycleTime = initObj.u4CycleTime
      }
      else {
        this.u4CycleTime = 0.0;
      }
      if (initObj.hasOwnProperty('phases')) {
        this.phases = initObj.phases
      }
      else {
        this.phases = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type traffic_light
    // Serialize message field [u4Id]
    bufferOffset = _serializer.int32(obj.u4Id, buffer, bufferOffset);
    // Serialize message field [u4CtrlId]
    bufferOffset = _serializer.int32(obj.u4CtrlId, buffer, bufferOffset);
    // Serialize message field [u4NoPhases]
    bufferOffset = _serializer.uint32(obj.u4NoPhases, buffer, bufferOffset);
    // Serialize message field [u4DataSize]
    bufferOffset = _serializer.uint32(obj.u4DataSize, buffer, bufferOffset);
    // Serialize message field [u4State]
    bufferOffset = _serializer.float32(obj.u4State, buffer, bufferOffset);
    // Serialize message field [u4CycleTime]
    bufferOffset = _serializer.float32(obj.u4CycleTime, buffer, bufferOffset);
    // Serialize message field [phases]
    // Serialize the length for message field [phases]
    bufferOffset = _serializer.uint32(obj.phases.length, buffer, bufferOffset);
    obj.phases.forEach((val) => {
      bufferOffset = traffic_light_phase.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type traffic_light
    let len;
    let data = new traffic_light(null);
    // Deserialize message field [u4Id]
    data.u4Id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [u4CtrlId]
    data.u4CtrlId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [u4NoPhases]
    data.u4NoPhases = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4DataSize]
    data.u4DataSize = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4State]
    data.u4State = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4CycleTime]
    data.u4CycleTime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phases]
    // Deserialize array length for message field [phases]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.phases = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.phases[i] = traffic_light_phase.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 5 * object.phases.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/traffic_light';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05f765de27ecea681bdb9de73fefe6a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 交通灯信息 ------ */
    int32                    u4Id
    int32                    u4CtrlId
    uint32                   u4NoPhases
    uint32                   u4DataSize
    float32                  u4State
    float32                  u4CycleTime
    traffic_light_phase[]    phases
    ================================================================================
    MSG: RosAdapter/traffic_light_phase
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
    const resolved = new traffic_light(null);
    if (msg.u4Id !== undefined) {
      resolved.u4Id = msg.u4Id;
    }
    else {
      resolved.u4Id = 0
    }

    if (msg.u4CtrlId !== undefined) {
      resolved.u4CtrlId = msg.u4CtrlId;
    }
    else {
      resolved.u4CtrlId = 0
    }

    if (msg.u4NoPhases !== undefined) {
      resolved.u4NoPhases = msg.u4NoPhases;
    }
    else {
      resolved.u4NoPhases = 0
    }

    if (msg.u4DataSize !== undefined) {
      resolved.u4DataSize = msg.u4DataSize;
    }
    else {
      resolved.u4DataSize = 0
    }

    if (msg.u4State !== undefined) {
      resolved.u4State = msg.u4State;
    }
    else {
      resolved.u4State = 0.0
    }

    if (msg.u4CycleTime !== undefined) {
      resolved.u4CycleTime = msg.u4CycleTime;
    }
    else {
      resolved.u4CycleTime = 0.0
    }

    if (msg.phases !== undefined) {
      resolved.phases = new Array(msg.phases.length);
      for (let i = 0; i < resolved.phases.length; ++i) {
        resolved.phases[i] = traffic_light_phase.Resolve(msg.phases[i]);
      }
    }
    else {
      resolved.phases = []
    }

    return resolved;
    }
};

module.exports = traffic_light;
