// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry = require('./geometry.js');
let coord = require('./coord.js');

//-----------------------------------------------------------

class parkingSpace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sGeo = null;
      this.sPos = null;
      this.u4RoadS = null;
      this.u4RoadT = null;
      this.u8SlotId = null;
    }
    else {
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
      if (initObj.hasOwnProperty('u8SlotId')) {
        this.u8SlotId = initObj.u8SlotId
      }
      else {
        this.u8SlotId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type parkingSpace
    // Serialize message field [sGeo]
    bufferOffset = geometry.serialize(obj.sGeo, buffer, bufferOffset);
    // Serialize message field [sPos]
    bufferOffset = coord.serialize(obj.sPos, buffer, bufferOffset);
    // Serialize message field [u4RoadS]
    bufferOffset = _serializer.float32(obj.u4RoadS, buffer, bufferOffset);
    // Serialize message field [u4RoadT]
    bufferOffset = _serializer.float32(obj.u4RoadT, buffer, bufferOffset);
    // Serialize message field [u8SlotId]
    bufferOffset = _serializer.uint64(obj.u8SlotId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type parkingSpace
    let len;
    let data = new parkingSpace(null);
    // Deserialize message field [sGeo]
    data.sGeo = geometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [sPos]
    data.sPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [u4RoadS]
    data.u4RoadS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4RoadT]
    data.u4RoadT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u8SlotId]
    data.u8SlotId = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/parkingSpace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e53c23c885c726b62a62404fba515f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #/** ------ 停车位信息 ------ */
    geometry  sGeo
    coord     sPos
    float32   u4RoadS
    float32   u4RoadT
    uint64    u8SlotId
    
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
    const resolved = new parkingSpace(null);
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

    if (msg.u8SlotId !== undefined) {
      resolved.u8SlotId = msg.u8SlotId;
    }
    else {
      resolved.u8SlotId = 0
    }

    return resolved;
    }
};

module.exports = parkingSpace;
