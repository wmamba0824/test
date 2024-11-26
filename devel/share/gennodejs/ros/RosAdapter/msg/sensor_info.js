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

class sensor_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sPos = null;
      this.sOriginCoordSys = null;
      this.au1Name = null;
      this.u8HostId = null;
      this.u8Id = null;
      this.au4FovHV = null;
      this.au4ClipNF = null;
      this.au4FovOffHV = null;
      this.u1Type = null;
      this.u1ModelType = null;
      this.u4IdealFreq = null;
      this.u4ResL = null;
      this.u4ResV = null;
      this.u4SenSizeL = null;
      this.u4SenSizeW = null;
      this.u4LenFd = null;
      this.u4DistCenL = null;
      this.u4DistCenW = null;
      this.u4DistParK1 = null;
      this.u4DistParK2 = null;
    }
    else {
      if (initObj.hasOwnProperty('sPos')) {
        this.sPos = initObj.sPos
      }
      else {
        this.sPos = new coord();
      }
      if (initObj.hasOwnProperty('sOriginCoordSys')) {
        this.sOriginCoordSys = initObj.sOriginCoordSys
      }
      else {
        this.sOriginCoordSys = new coord();
      }
      if (initObj.hasOwnProperty('au1Name')) {
        this.au1Name = initObj.au1Name
      }
      else {
        this.au1Name = '';
      }
      if (initObj.hasOwnProperty('u8HostId')) {
        this.u8HostId = initObj.u8HostId
      }
      else {
        this.u8HostId = 0;
      }
      if (initObj.hasOwnProperty('u8Id')) {
        this.u8Id = initObj.u8Id
      }
      else {
        this.u8Id = 0;
      }
      if (initObj.hasOwnProperty('au4FovHV')) {
        this.au4FovHV = initObj.au4FovHV
      }
      else {
        this.au4FovHV = [];
      }
      if (initObj.hasOwnProperty('au4ClipNF')) {
        this.au4ClipNF = initObj.au4ClipNF
      }
      else {
        this.au4ClipNF = [];
      }
      if (initObj.hasOwnProperty('au4FovOffHV')) {
        this.au4FovOffHV = initObj.au4FovOffHV
      }
      else {
        this.au4FovOffHV = [];
      }
      if (initObj.hasOwnProperty('u1Type')) {
        this.u1Type = initObj.u1Type
      }
      else {
        this.u1Type = 0;
      }
      if (initObj.hasOwnProperty('u1ModelType')) {
        this.u1ModelType = initObj.u1ModelType
      }
      else {
        this.u1ModelType = 0;
      }
      if (initObj.hasOwnProperty('u4IdealFreq')) {
        this.u4IdealFreq = initObj.u4IdealFreq
      }
      else {
        this.u4IdealFreq = 0.0;
      }
      if (initObj.hasOwnProperty('u4ResL')) {
        this.u4ResL = initObj.u4ResL
      }
      else {
        this.u4ResL = 0;
      }
      if (initObj.hasOwnProperty('u4ResV')) {
        this.u4ResV = initObj.u4ResV
      }
      else {
        this.u4ResV = 0;
      }
      if (initObj.hasOwnProperty('u4SenSizeL')) {
        this.u4SenSizeL = initObj.u4SenSizeL
      }
      else {
        this.u4SenSizeL = 0.0;
      }
      if (initObj.hasOwnProperty('u4SenSizeW')) {
        this.u4SenSizeW = initObj.u4SenSizeW
      }
      else {
        this.u4SenSizeW = 0.0;
      }
      if (initObj.hasOwnProperty('u4LenFd')) {
        this.u4LenFd = initObj.u4LenFd
      }
      else {
        this.u4LenFd = 0.0;
      }
      if (initObj.hasOwnProperty('u4DistCenL')) {
        this.u4DistCenL = initObj.u4DistCenL
      }
      else {
        this.u4DistCenL = 0.0;
      }
      if (initObj.hasOwnProperty('u4DistCenW')) {
        this.u4DistCenW = initObj.u4DistCenW
      }
      else {
        this.u4DistCenW = 0.0;
      }
      if (initObj.hasOwnProperty('u4DistParK1')) {
        this.u4DistParK1 = initObj.u4DistParK1
      }
      else {
        this.u4DistParK1 = 0.0;
      }
      if (initObj.hasOwnProperty('u4DistParK2')) {
        this.u4DistParK2 = initObj.u4DistParK2
      }
      else {
        this.u4DistParK2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensor_info
    // Serialize message field [sPos]
    bufferOffset = coord.serialize(obj.sPos, buffer, bufferOffset);
    // Serialize message field [sOriginCoordSys]
    bufferOffset = coord.serialize(obj.sOriginCoordSys, buffer, bufferOffset);
    // Serialize message field [au1Name]
    bufferOffset = _serializer.string(obj.au1Name, buffer, bufferOffset);
    // Serialize message field [u8HostId]
    bufferOffset = _serializer.uint32(obj.u8HostId, buffer, bufferOffset);
    // Serialize message field [u8Id]
    bufferOffset = _serializer.uint32(obj.u8Id, buffer, bufferOffset);
    // Serialize message field [au4FovHV]
    bufferOffset = _arraySerializer.float32(obj.au4FovHV, buffer, bufferOffset, null);
    // Serialize message field [au4ClipNF]
    bufferOffset = _arraySerializer.float32(obj.au4ClipNF, buffer, bufferOffset, null);
    // Serialize message field [au4FovOffHV]
    bufferOffset = _arraySerializer.float32(obj.au4FovOffHV, buffer, bufferOffset, null);
    // Serialize message field [u1Type]
    bufferOffset = _serializer.uint8(obj.u1Type, buffer, bufferOffset);
    // Serialize message field [u1ModelType]
    bufferOffset = _serializer.uint8(obj.u1ModelType, buffer, bufferOffset);
    // Serialize message field [u4IdealFreq]
    bufferOffset = _serializer.float64(obj.u4IdealFreq, buffer, bufferOffset);
    // Serialize message field [u4ResL]
    bufferOffset = _serializer.uint32(obj.u4ResL, buffer, bufferOffset);
    // Serialize message field [u4ResV]
    bufferOffset = _serializer.uint32(obj.u4ResV, buffer, bufferOffset);
    // Serialize message field [u4SenSizeL]
    bufferOffset = _serializer.float64(obj.u4SenSizeL, buffer, bufferOffset);
    // Serialize message field [u4SenSizeW]
    bufferOffset = _serializer.float64(obj.u4SenSizeW, buffer, bufferOffset);
    // Serialize message field [u4LenFd]
    bufferOffset = _serializer.float64(obj.u4LenFd, buffer, bufferOffset);
    // Serialize message field [u4DistCenL]
    bufferOffset = _serializer.float64(obj.u4DistCenL, buffer, bufferOffset);
    // Serialize message field [u4DistCenW]
    bufferOffset = _serializer.float64(obj.u4DistCenW, buffer, bufferOffset);
    // Serialize message field [u4DistParK1]
    bufferOffset = _serializer.float64(obj.u4DistParK1, buffer, bufferOffset);
    // Serialize message field [u4DistParK2]
    bufferOffset = _serializer.float64(obj.u4DistParK2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensor_info
    let len;
    let data = new sensor_info(null);
    // Deserialize message field [sPos]
    data.sPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sOriginCoordSys]
    data.sOriginCoordSys = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [au1Name]
    data.au1Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [u8HostId]
    data.u8HostId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u8Id]
    data.u8Id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [au4FovHV]
    data.au4FovHV = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [au4ClipNF]
    data.au4ClipNF = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [au4FovOffHV]
    data.au4FovOffHV = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [u1Type]
    data.u1Type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1ModelType]
    data.u1ModelType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u4IdealFreq]
    data.u4IdealFreq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4ResL]
    data.u4ResL = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4ResV]
    data.u4ResV = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4SenSizeL]
    data.u4SenSizeL = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4SenSizeW]
    data.u4SenSizeW = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4LenFd]
    data.u4LenFd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4DistCenL]
    data.u4DistCenL = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4DistCenW]
    data.u4DistCenW = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4DistParK1]
    data.u4DistParK1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4DistParK2]
    data.u4DistParK2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1Name);
    length += 4 * object.au4FovHV.length;
    length += 4 * object.au4ClipNF.length;
    length += 4 * object.au4FovOffHV.length;
    return length + 172;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/sensor_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e18318bc223ad24176de445906b697bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 传感器定义和状态 ------ */
    coord      sPos
    coord      sOriginCoordSys
    string     au1Name
    uint32     u8HostId
    uint32     u8Id
    float32[]  au4FovHV
    float32[]  au4ClipNF
    float32[]  au4FovOffHV
    uint8      u1Type                   
    uint8      u1ModelType
    float64	   u4IdealFreq
    uint32	   u4ResL
    uint32     u4ResV
    float64	   u4SenSizeL
    float64	   u4SenSizeW
    float64	   u4LenFd
    float64	   u4DistCenL
    float64	   u4DistCenW
    float64	   u4DistParK1
    float64	   u4DistParK2
    
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
    const resolved = new sensor_info(null);
    if (msg.sPos !== undefined) {
      resolved.sPos = coord.Resolve(msg.sPos)
    }
    else {
      resolved.sPos = new coord()
    }

    if (msg.sOriginCoordSys !== undefined) {
      resolved.sOriginCoordSys = coord.Resolve(msg.sOriginCoordSys)
    }
    else {
      resolved.sOriginCoordSys = new coord()
    }

    if (msg.au1Name !== undefined) {
      resolved.au1Name = msg.au1Name;
    }
    else {
      resolved.au1Name = ''
    }

    if (msg.u8HostId !== undefined) {
      resolved.u8HostId = msg.u8HostId;
    }
    else {
      resolved.u8HostId = 0
    }

    if (msg.u8Id !== undefined) {
      resolved.u8Id = msg.u8Id;
    }
    else {
      resolved.u8Id = 0
    }

    if (msg.au4FovHV !== undefined) {
      resolved.au4FovHV = msg.au4FovHV;
    }
    else {
      resolved.au4FovHV = []
    }

    if (msg.au4ClipNF !== undefined) {
      resolved.au4ClipNF = msg.au4ClipNF;
    }
    else {
      resolved.au4ClipNF = []
    }

    if (msg.au4FovOffHV !== undefined) {
      resolved.au4FovOffHV = msg.au4FovOffHV;
    }
    else {
      resolved.au4FovOffHV = []
    }

    if (msg.u1Type !== undefined) {
      resolved.u1Type = msg.u1Type;
    }
    else {
      resolved.u1Type = 0
    }

    if (msg.u1ModelType !== undefined) {
      resolved.u1ModelType = msg.u1ModelType;
    }
    else {
      resolved.u1ModelType = 0
    }

    if (msg.u4IdealFreq !== undefined) {
      resolved.u4IdealFreq = msg.u4IdealFreq;
    }
    else {
      resolved.u4IdealFreq = 0.0
    }

    if (msg.u4ResL !== undefined) {
      resolved.u4ResL = msg.u4ResL;
    }
    else {
      resolved.u4ResL = 0
    }

    if (msg.u4ResV !== undefined) {
      resolved.u4ResV = msg.u4ResV;
    }
    else {
      resolved.u4ResV = 0
    }

    if (msg.u4SenSizeL !== undefined) {
      resolved.u4SenSizeL = msg.u4SenSizeL;
    }
    else {
      resolved.u4SenSizeL = 0.0
    }

    if (msg.u4SenSizeW !== undefined) {
      resolved.u4SenSizeW = msg.u4SenSizeW;
    }
    else {
      resolved.u4SenSizeW = 0.0
    }

    if (msg.u4LenFd !== undefined) {
      resolved.u4LenFd = msg.u4LenFd;
    }
    else {
      resolved.u4LenFd = 0.0
    }

    if (msg.u4DistCenL !== undefined) {
      resolved.u4DistCenL = msg.u4DistCenL;
    }
    else {
      resolved.u4DistCenL = 0.0
    }

    if (msg.u4DistCenW !== undefined) {
      resolved.u4DistCenW = msg.u4DistCenW;
    }
    else {
      resolved.u4DistCenW = 0.0
    }

    if (msg.u4DistParK1 !== undefined) {
      resolved.u4DistParK1 = msg.u4DistParK1;
    }
    else {
      resolved.u4DistParK1 = 0.0
    }

    if (msg.u4DistParK2 !== undefined) {
      resolved.u4DistParK2 = msg.u4DistParK2;
    }
    else {
      resolved.u4DistParK2 = 0.0
    }

    return resolved;
    }
};

module.exports = sensor_info;
