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

class init_param {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1OpenScenario = null;
      this.au1OpenDrive = null;
      this.u8StartRoadId = null;
      this.u8EndRoadId = null;
      this.u4StartRoadS = null;
      this.u4EndRoadS = null;
      this.u4Speed = null;
      this.u2ScenarioId = null;
      this.u1StartLaneId = null;
      this.u1EndLaneId = null;
    }
    else {
      if (initObj.hasOwnProperty('au1OpenScenario')) {
        this.au1OpenScenario = initObj.au1OpenScenario
      }
      else {
        this.au1OpenScenario = '';
      }
      if (initObj.hasOwnProperty('au1OpenDrive')) {
        this.au1OpenDrive = initObj.au1OpenDrive
      }
      else {
        this.au1OpenDrive = '';
      }
      if (initObj.hasOwnProperty('u8StartRoadId')) {
        this.u8StartRoadId = initObj.u8StartRoadId
      }
      else {
        this.u8StartRoadId = 0;
      }
      if (initObj.hasOwnProperty('u8EndRoadId')) {
        this.u8EndRoadId = initObj.u8EndRoadId
      }
      else {
        this.u8EndRoadId = 0;
      }
      if (initObj.hasOwnProperty('u4StartRoadS')) {
        this.u4StartRoadS = initObj.u4StartRoadS
      }
      else {
        this.u4StartRoadS = 0.0;
      }
      if (initObj.hasOwnProperty('u4EndRoadS')) {
        this.u4EndRoadS = initObj.u4EndRoadS
      }
      else {
        this.u4EndRoadS = 0.0;
      }
      if (initObj.hasOwnProperty('u4Speed')) {
        this.u4Speed = initObj.u4Speed
      }
      else {
        this.u4Speed = 0.0;
      }
      if (initObj.hasOwnProperty('u2ScenarioId')) {
        this.u2ScenarioId = initObj.u2ScenarioId
      }
      else {
        this.u2ScenarioId = 0;
      }
      if (initObj.hasOwnProperty('u1StartLaneId')) {
        this.u1StartLaneId = initObj.u1StartLaneId
      }
      else {
        this.u1StartLaneId = 0;
      }
      if (initObj.hasOwnProperty('u1EndLaneId')) {
        this.u1EndLaneId = initObj.u1EndLaneId
      }
      else {
        this.u1EndLaneId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type init_param
    // Serialize message field [au1OpenScenario]
    bufferOffset = _serializer.string(obj.au1OpenScenario, buffer, bufferOffset);
    // Serialize message field [au1OpenDrive]
    bufferOffset = _serializer.string(obj.au1OpenDrive, buffer, bufferOffset);
    // Serialize message field [u8StartRoadId]
    bufferOffset = _serializer.uint64(obj.u8StartRoadId, buffer, bufferOffset);
    // Serialize message field [u8EndRoadId]
    bufferOffset = _serializer.uint64(obj.u8EndRoadId, buffer, bufferOffset);
    // Serialize message field [u4StartRoadS]
    bufferOffset = _serializer.float32(obj.u4StartRoadS, buffer, bufferOffset);
    // Serialize message field [u4EndRoadS]
    bufferOffset = _serializer.float32(obj.u4EndRoadS, buffer, bufferOffset);
    // Serialize message field [u4Speed]
    bufferOffset = _serializer.float32(obj.u4Speed, buffer, bufferOffset);
    // Serialize message field [u2ScenarioId]
    bufferOffset = _serializer.uint16(obj.u2ScenarioId, buffer, bufferOffset);
    // Serialize message field [u1StartLaneId]
    bufferOffset = _serializer.int8(obj.u1StartLaneId, buffer, bufferOffset);
    // Serialize message field [u1EndLaneId]
    bufferOffset = _serializer.int8(obj.u1EndLaneId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type init_param
    let len;
    let data = new init_param(null);
    // Deserialize message field [au1OpenScenario]
    data.au1OpenScenario = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au1OpenDrive]
    data.au1OpenDrive = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [u8StartRoadId]
    data.u8StartRoadId = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [u8EndRoadId]
    data.u8EndRoadId = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [u4StartRoadS]
    data.u4StartRoadS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4EndRoadS]
    data.u4EndRoadS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4Speed]
    data.u4Speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u2ScenarioId]
    data.u2ScenarioId = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [u1StartLaneId]
    data.u1StartLaneId = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1EndLaneId]
    data.u1EndLaneId = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1OpenScenario);
    length += _getByteLength(object.au1OpenDrive);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/init_param';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1c91c53dd3d6cc4f662b216093d05ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 初始化参数 ------ */
    
    string             au1OpenScenario
    string             au1OpenDrive
    uint64             u8StartRoadId
    uint64             u8EndRoadId
    float32            u4StartRoadS
    float32            u4EndRoadS
    float32            u4Speed
    uint16             u2ScenarioId
    int8               u1StartLaneId
    int8               u1EndLaneId
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new init_param(null);
    if (msg.au1OpenScenario !== undefined) {
      resolved.au1OpenScenario = msg.au1OpenScenario;
    }
    else {
      resolved.au1OpenScenario = ''
    }

    if (msg.au1OpenDrive !== undefined) {
      resolved.au1OpenDrive = msg.au1OpenDrive;
    }
    else {
      resolved.au1OpenDrive = ''
    }

    if (msg.u8StartRoadId !== undefined) {
      resolved.u8StartRoadId = msg.u8StartRoadId;
    }
    else {
      resolved.u8StartRoadId = 0
    }

    if (msg.u8EndRoadId !== undefined) {
      resolved.u8EndRoadId = msg.u8EndRoadId;
    }
    else {
      resolved.u8EndRoadId = 0
    }

    if (msg.u4StartRoadS !== undefined) {
      resolved.u4StartRoadS = msg.u4StartRoadS;
    }
    else {
      resolved.u4StartRoadS = 0.0
    }

    if (msg.u4EndRoadS !== undefined) {
      resolved.u4EndRoadS = msg.u4EndRoadS;
    }
    else {
      resolved.u4EndRoadS = 0.0
    }

    if (msg.u4Speed !== undefined) {
      resolved.u4Speed = msg.u4Speed;
    }
    else {
      resolved.u4Speed = 0.0
    }

    if (msg.u2ScenarioId !== undefined) {
      resolved.u2ScenarioId = msg.u2ScenarioId;
    }
    else {
      resolved.u2ScenarioId = 0
    }

    if (msg.u1StartLaneId !== undefined) {
      resolved.u1StartLaneId = msg.u1StartLaneId;
    }
    else {
      resolved.u1StartLaneId = 0
    }

    if (msg.u1EndLaneId !== undefined) {
      resolved.u1EndLaneId = msg.u1EndLaneId;
    }
    else {
      resolved.u1EndLaneId = 0
    }

    return resolved;
    }
};

module.exports = init_param;
