// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let object_state = require('./object_state.js');
let mil_object_state_base = require('./mil_object_state_base.js');

//-----------------------------------------------------------

class mil_object_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sObjectState = null;
      this.sMilBase = null;
    }
    else {
      if (initObj.hasOwnProperty('sObjectState')) {
        this.sObjectState = initObj.sObjectState
      }
      else {
        this.sObjectState = new object_state();
      }
      if (initObj.hasOwnProperty('sMilBase')) {
        this.sMilBase = initObj.sMilBase
      }
      else {
        this.sMilBase = new mil_object_state_base();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mil_object_state
    // Serialize message field [sObjectState]
    bufferOffset = object_state.serialize(obj.sObjectState, buffer, bufferOffset);
    // Serialize message field [sMilBase]
    bufferOffset = mil_object_state_base.serialize(obj.sMilBase, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mil_object_state
    let len;
    let data = new mil_object_state(null);
    // Deserialize message field [sObjectState]
    data.sObjectState = object_state.deserialize(buffer, bufferOffset);
    // Deserialize message field [sMilBase]
    data.sMilBase = mil_object_state_base.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object_state.getMessageSize(object.sObjectState);
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/mil_object_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5c77edb401c9c12e68a0c159480ce25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ MIL测试环境车、行人、障碍物信息 ------ */
    object_state           sObjectState
    mil_object_state_base  sMilBase
    ================================================================================
    MSG: RosAdapter/object_state
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
    ================================================================================
    MSG: RosAdapter/mil_object_state_base
    #/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */
    
    uint32     u4LightMask
    float32    u4DistanceX
    float32    u4DistanceY
    float32    u4VelocityX
    float32    u4VelocityY
    float32    u4AccelerationX
    float32    u4AccelerationY
    float32    u4YawRate
    float32    u4Dist
    float32    u4Angle
    uint8      u1ObjClass
    uint8      u1Flag_detected
    uint8      u1Movable
    uint8      u1Moving
    uint8      u1Obj_Age
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mil_object_state(null);
    if (msg.sObjectState !== undefined) {
      resolved.sObjectState = object_state.Resolve(msg.sObjectState)
    }
    else {
      resolved.sObjectState = new object_state()
    }

    if (msg.sMilBase !== undefined) {
      resolved.sMilBase = mil_object_state_base.Resolve(msg.sMilBase)
    }
    else {
      resolved.sMilBase = new mil_object_state_base()
    }

    return resolved;
    }
};

module.exports = mil_object_state;
