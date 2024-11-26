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
let geometry = require('./geometry.js');

//-----------------------------------------------------------

class object_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sSpeed = null;
      this.sAccel = null;
      this.sGeo = null;
      this.sPos = null;
      this.au1Name = null;
      this.au1ModelFileName = null;
      this.au1ModelName = null;
      this.au8ParamScale = null;
      this.u8RoadId = null;
      this.u8SpeedLimit = null;
      this.u4Id = null;
      this.u4RoadS = null;
      this.u4RoadT = null;
      this.u4HdgRel = null;
      this.u4LaneOffset = null;
      this.u4TraveledDist = null;
      this.u2visMask = null;
      this.u1Type = null;
      this.u1LaneId = null;
      this.u1Dir = null;
      this.u1IsOnRoad = null;
      this.u1category = null;
    }
    else {
      if (initObj.hasOwnProperty('sSpeed')) {
        this.sSpeed = initObj.sSpeed
      }
      else {
        this.sSpeed = new coord();
      }
      if (initObj.hasOwnProperty('sAccel')) {
        this.sAccel = initObj.sAccel
      }
      else {
        this.sAccel = new coord();
      }
      if (initObj.hasOwnProperty('sGeo')) {
        this.sGeo = initObj.sGeo
      }
      else {
        this.sGeo = new geometry();
      }
      if (initObj.hasOwnProperty('sPos')) {
        this.sPos = initObj.sPos
      }
      else {
        this.sPos = new coord();
      }
      if (initObj.hasOwnProperty('au1Name')) {
        this.au1Name = initObj.au1Name
      }
      else {
        this.au1Name = '';
      }
      if (initObj.hasOwnProperty('au1ModelFileName')) {
        this.au1ModelFileName = initObj.au1ModelFileName
      }
      else {
        this.au1ModelFileName = '';
      }
      if (initObj.hasOwnProperty('au1ModelName')) {
        this.au1ModelName = initObj.au1ModelName
      }
      else {
        this.au1ModelName = '';
      }
      if (initObj.hasOwnProperty('au8ParamScale')) {
        this.au8ParamScale = initObj.au8ParamScale
      }
      else {
        this.au8ParamScale = [];
      }
      if (initObj.hasOwnProperty('u8RoadId')) {
        this.u8RoadId = initObj.u8RoadId
      }
      else {
        this.u8RoadId = 0;
      }
      if (initObj.hasOwnProperty('u8SpeedLimit')) {
        this.u8SpeedLimit = initObj.u8SpeedLimit
      }
      else {
        this.u8SpeedLimit = 0.0;
      }
      if (initObj.hasOwnProperty('u4Id')) {
        this.u4Id = initObj.u4Id
      }
      else {
        this.u4Id = 0;
      }
      if (initObj.hasOwnProperty('u4RoadS')) {
        this.u4RoadS = initObj.u4RoadS
      }
      else {
        this.u4RoadS = 0.0;
      }
      if (initObj.hasOwnProperty('u4RoadT')) {
        this.u4RoadT = initObj.u4RoadT
      }
      else {
        this.u4RoadT = 0.0;
      }
      if (initObj.hasOwnProperty('u4HdgRel')) {
        this.u4HdgRel = initObj.u4HdgRel
      }
      else {
        this.u4HdgRel = 0.0;
      }
      if (initObj.hasOwnProperty('u4LaneOffset')) {
        this.u4LaneOffset = initObj.u4LaneOffset
      }
      else {
        this.u4LaneOffset = 0.0;
      }
      if (initObj.hasOwnProperty('u4TraveledDist')) {
        this.u4TraveledDist = initObj.u4TraveledDist
      }
      else {
        this.u4TraveledDist = 0.0;
      }
      if (initObj.hasOwnProperty('u2visMask')) {
        this.u2visMask = initObj.u2visMask
      }
      else {
        this.u2visMask = 0;
      }
      if (initObj.hasOwnProperty('u1Type')) {
        this.u1Type = initObj.u1Type
      }
      else {
        this.u1Type = 0;
      }
      if (initObj.hasOwnProperty('u1LaneId')) {
        this.u1LaneId = initObj.u1LaneId
      }
      else {
        this.u1LaneId = 0;
      }
      if (initObj.hasOwnProperty('u1Dir')) {
        this.u1Dir = initObj.u1Dir
      }
      else {
        this.u1Dir = 0;
      }
      if (initObj.hasOwnProperty('u1IsOnRoad')) {
        this.u1IsOnRoad = initObj.u1IsOnRoad
      }
      else {
        this.u1IsOnRoad = false;
      }
      if (initObj.hasOwnProperty('u1category')) {
        this.u1category = initObj.u1category
      }
      else {
        this.u1category = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type object_state
    // Serialize message field [sSpeed]
    bufferOffset = coord.serialize(obj.sSpeed, buffer, bufferOffset);
    // Serialize message field [sAccel]
    bufferOffset = coord.serialize(obj.sAccel, buffer, bufferOffset);
    // Serialize message field [sGeo]
    bufferOffset = geometry.serialize(obj.sGeo, buffer, bufferOffset);
    // Serialize message field [sPos]
    bufferOffset = coord.serialize(obj.sPos, buffer, bufferOffset);
    // Serialize message field [au1Name]
    bufferOffset = _serializer.string(obj.au1Name, buffer, bufferOffset);
    // Serialize message field [au1ModelFileName]
    bufferOffset = _serializer.string(obj.au1ModelFileName, buffer, bufferOffset);
    // Serialize message field [au1ModelName]
    bufferOffset = _serializer.string(obj.au1ModelName, buffer, bufferOffset);
    // Serialize message field [au8ParamScale]
    bufferOffset = _arraySerializer.float64(obj.au8ParamScale, buffer, bufferOffset, null);
    // Serialize message field [u8RoadId]
    bufferOffset = _serializer.uint64(obj.u8RoadId, buffer, bufferOffset);
    // Serialize message field [u8SpeedLimit]
    bufferOffset = _serializer.float64(obj.u8SpeedLimit, buffer, bufferOffset);
    // Serialize message field [u4Id]
    bufferOffset = _serializer.uint32(obj.u4Id, buffer, bufferOffset);
    // Serialize message field [u4RoadS]
    bufferOffset = _serializer.float32(obj.u4RoadS, buffer, bufferOffset);
    // Serialize message field [u4RoadT]
    bufferOffset = _serializer.float32(obj.u4RoadT, buffer, bufferOffset);
    // Serialize message field [u4HdgRel]
    bufferOffset = _serializer.float32(obj.u4HdgRel, buffer, bufferOffset);
    // Serialize message field [u4LaneOffset]
    bufferOffset = _serializer.float32(obj.u4LaneOffset, buffer, bufferOffset);
    // Serialize message field [u4TraveledDist]
    bufferOffset = _serializer.float32(obj.u4TraveledDist, buffer, bufferOffset);
    // Serialize message field [u2visMask]
    bufferOffset = _serializer.uint16(obj.u2visMask, buffer, bufferOffset);
    // Serialize message field [u1Type]
    bufferOffset = _serializer.uint8(obj.u1Type, buffer, bufferOffset);
    // Serialize message field [u1LaneId]
    bufferOffset = _serializer.int8(obj.u1LaneId, buffer, bufferOffset);
    // Serialize message field [u1Dir]
    bufferOffset = _serializer.uint8(obj.u1Dir, buffer, bufferOffset);
    // Serialize message field [u1IsOnRoad]
    bufferOffset = _serializer.bool(obj.u1IsOnRoad, buffer, bufferOffset);
    // Serialize message field [u1category]
    bufferOffset = _serializer.uint8(obj.u1category, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type object_state
    let len;
    let data = new object_state(null);
    // Deserialize message field [sSpeed]
    data.sSpeed = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sAccel]
    data.sAccel = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sGeo]
    data.sGeo = geometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [sPos]
    data.sPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [au1Name]
    data.au1Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au1ModelFileName]
    data.au1ModelFileName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au1ModelName]
    data.au1ModelName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au8ParamScale]
    data.au8ParamScale = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [u8RoadId]
    data.u8RoadId = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [u8SpeedLimit]
    data.u8SpeedLimit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4Id]
    data.u4Id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4RoadS]
    data.u4RoadS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4RoadT]
    data.u4RoadT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4HdgRel]
    data.u4HdgRel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4LaneOffset]
    data.u4LaneOffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4TraveledDist]
    data.u4TraveledDist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u2visMask]
    data.u2visMask = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [u1Type]
    data.u1Type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1LaneId]
    data.u1LaneId = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1Dir]
    data.u1Dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1IsOnRoad]
    data.u1IsOnRoad = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1category]
    data.u1category = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1Name);
    length += _getByteLength(object.au1ModelFileName);
    length += _getByteLength(object.au1ModelName);
    length += 8 * object.au8ParamScale.length;
    return length + 198;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/object_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '487cbf303de88174ac14ecc4b4a926e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 对象信息 ------ */
    coord           sSpeed
    coord           sAccel
    geometry        sGeo
    coord           sPos
    string          au1Name
    string          au1ModelFileName
    string          au1ModelName
    float64[]       au8ParamScale
    uint64          u8RoadId
    float64         u8SpeedLimit
    uint32          u4Id
    float32         u4RoadS
    float32         u4RoadT
    float32         u4HdgRel
    float32         u4LaneOffset
    float32         u4TraveledDist
    uint16          u2visMask
    uint8           u1Type
    int8            u1LaneId
    uint8           u1Dir
    bool            u1IsOnRoad
    uint8           u1category
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
    ================================================================================
    MSG: RosAdapter/geometry
    # /** ------ 几何信息 ------ */
    float32 u4DimX
    float32 u4DimY
    float32 u4DimZ
    float32 u4OffX
    float32 u4OffY
    float32 u4OffZ
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new object_state(null);
    if (msg.sSpeed !== undefined) {
      resolved.sSpeed = coord.Resolve(msg.sSpeed)
    }
    else {
      resolved.sSpeed = new coord()
    }

    if (msg.sAccel !== undefined) {
      resolved.sAccel = coord.Resolve(msg.sAccel)
    }
    else {
      resolved.sAccel = new coord()
    }

    if (msg.sGeo !== undefined) {
      resolved.sGeo = geometry.Resolve(msg.sGeo)
    }
    else {
      resolved.sGeo = new geometry()
    }

    if (msg.sPos !== undefined) {
      resolved.sPos = coord.Resolve(msg.sPos)
    }
    else {
      resolved.sPos = new coord()
    }

    if (msg.au1Name !== undefined) {
      resolved.au1Name = msg.au1Name;
    }
    else {
      resolved.au1Name = ''
    }

    if (msg.au1ModelFileName !== undefined) {
      resolved.au1ModelFileName = msg.au1ModelFileName;
    }
    else {
      resolved.au1ModelFileName = ''
    }

    if (msg.au1ModelName !== undefined) {
      resolved.au1ModelName = msg.au1ModelName;
    }
    else {
      resolved.au1ModelName = ''
    }

    if (msg.au8ParamScale !== undefined) {
      resolved.au8ParamScale = msg.au8ParamScale;
    }
    else {
      resolved.au8ParamScale = []
    }

    if (msg.u8RoadId !== undefined) {
      resolved.u8RoadId = msg.u8RoadId;
    }
    else {
      resolved.u8RoadId = 0
    }

    if (msg.u8SpeedLimit !== undefined) {
      resolved.u8SpeedLimit = msg.u8SpeedLimit;
    }
    else {
      resolved.u8SpeedLimit = 0.0
    }

    if (msg.u4Id !== undefined) {
      resolved.u4Id = msg.u4Id;
    }
    else {
      resolved.u4Id = 0
    }

    if (msg.u4RoadS !== undefined) {
      resolved.u4RoadS = msg.u4RoadS;
    }
    else {
      resolved.u4RoadS = 0.0
    }

    if (msg.u4RoadT !== undefined) {
      resolved.u4RoadT = msg.u4RoadT;
    }
    else {
      resolved.u4RoadT = 0.0
    }

    if (msg.u4HdgRel !== undefined) {
      resolved.u4HdgRel = msg.u4HdgRel;
    }
    else {
      resolved.u4HdgRel = 0.0
    }

    if (msg.u4LaneOffset !== undefined) {
      resolved.u4LaneOffset = msg.u4LaneOffset;
    }
    else {
      resolved.u4LaneOffset = 0.0
    }

    if (msg.u4TraveledDist !== undefined) {
      resolved.u4TraveledDist = msg.u4TraveledDist;
    }
    else {
      resolved.u4TraveledDist = 0.0
    }

    if (msg.u2visMask !== undefined) {
      resolved.u2visMask = msg.u2visMask;
    }
    else {
      resolved.u2visMask = 0
    }

    if (msg.u1Type !== undefined) {
      resolved.u1Type = msg.u1Type;
    }
    else {
      resolved.u1Type = 0
    }

    if (msg.u1LaneId !== undefined) {
      resolved.u1LaneId = msg.u1LaneId;
    }
    else {
      resolved.u1LaneId = 0
    }

    if (msg.u1Dir !== undefined) {
      resolved.u1Dir = msg.u1Dir;
    }
    else {
      resolved.u1Dir = 0
    }

    if (msg.u1IsOnRoad !== undefined) {
      resolved.u1IsOnRoad = msg.u1IsOnRoad;
    }
    else {
      resolved.u1IsOnRoad = false
    }

    if (msg.u1category !== undefined) {
      resolved.u1category = msg.u1category;
    }
    else {
      resolved.u1category = 0
    }

    return resolved;
    }
};

module.exports = object_state;
