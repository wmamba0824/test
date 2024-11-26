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
let point3d = require('./point3d.js');

//-----------------------------------------------------------

class dynamic_object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8Dist = null;
      this.u8NearestDist = null;
      this.u8RelativeVelx = null;
      this.u8RelativeVely = null;
      this.u8RelativeAccx = null;
      this.u8RelativeAccy = null;
      this.u8HeadingAngle = null;
      this.sSensorPos = null;
      this.sNearestSensorPos = null;
      this.sSenNearestPosXL = null;
      this.sSenNearestPosXR = null;
      this.sSenNearestPosYL = null;
      this.sSenNearestPosYR = null;
      this.sBoundingBox = null;
      this.u1MovingSt = null;
    }
    else {
      if (initObj.hasOwnProperty('u8Dist')) {
        this.u8Dist = initObj.u8Dist
      }
      else {
        this.u8Dist = 0.0;
      }
      if (initObj.hasOwnProperty('u8NearestDist')) {
        this.u8NearestDist = initObj.u8NearestDist
      }
      else {
        this.u8NearestDist = 0.0;
      }
      if (initObj.hasOwnProperty('u8RelativeVelx')) {
        this.u8RelativeVelx = initObj.u8RelativeVelx
      }
      else {
        this.u8RelativeVelx = 0.0;
      }
      if (initObj.hasOwnProperty('u8RelativeVely')) {
        this.u8RelativeVely = initObj.u8RelativeVely
      }
      else {
        this.u8RelativeVely = 0.0;
      }
      if (initObj.hasOwnProperty('u8RelativeAccx')) {
        this.u8RelativeAccx = initObj.u8RelativeAccx
      }
      else {
        this.u8RelativeAccx = 0.0;
      }
      if (initObj.hasOwnProperty('u8RelativeAccy')) {
        this.u8RelativeAccy = initObj.u8RelativeAccy
      }
      else {
        this.u8RelativeAccy = 0.0;
      }
      if (initObj.hasOwnProperty('u8HeadingAngle')) {
        this.u8HeadingAngle = initObj.u8HeadingAngle
      }
      else {
        this.u8HeadingAngle = 0.0;
      }
      if (initObj.hasOwnProperty('sSensorPos')) {
        this.sSensorPos = initObj.sSensorPos
      }
      else {
        this.sSensorPos = new coord();
      }
      if (initObj.hasOwnProperty('sNearestSensorPos')) {
        this.sNearestSensorPos = initObj.sNearestSensorPos
      }
      else {
        this.sNearestSensorPos = new coord();
      }
      if (initObj.hasOwnProperty('sSenNearestPosXL')) {
        this.sSenNearestPosXL = initObj.sSenNearestPosXL
      }
      else {
        this.sSenNearestPosXL = new coord();
      }
      if (initObj.hasOwnProperty('sSenNearestPosXR')) {
        this.sSenNearestPosXR = initObj.sSenNearestPosXR
      }
      else {
        this.sSenNearestPosXR = new coord();
      }
      if (initObj.hasOwnProperty('sSenNearestPosYL')) {
        this.sSenNearestPosYL = initObj.sSenNearestPosYL
      }
      else {
        this.sSenNearestPosYL = new coord();
      }
      if (initObj.hasOwnProperty('sSenNearestPosYR')) {
        this.sSenNearestPosYR = initObj.sSenNearestPosYR
      }
      else {
        this.sSenNearestPosYR = new coord();
      }
      if (initObj.hasOwnProperty('sBoundingBox')) {
        this.sBoundingBox = initObj.sBoundingBox
      }
      else {
        this.sBoundingBox = [];
      }
      if (initObj.hasOwnProperty('u1MovingSt')) {
        this.u1MovingSt = initObj.u1MovingSt
      }
      else {
        this.u1MovingSt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dynamic_object
    // Serialize message field [u8Dist]
    bufferOffset = _serializer.float64(obj.u8Dist, buffer, bufferOffset);
    // Serialize message field [u8NearestDist]
    bufferOffset = _serializer.float64(obj.u8NearestDist, buffer, bufferOffset);
    // Serialize message field [u8RelativeVelx]
    bufferOffset = _serializer.float64(obj.u8RelativeVelx, buffer, bufferOffset);
    // Serialize message field [u8RelativeVely]
    bufferOffset = _serializer.float64(obj.u8RelativeVely, buffer, bufferOffset);
    // Serialize message field [u8RelativeAccx]
    bufferOffset = _serializer.float64(obj.u8RelativeAccx, buffer, bufferOffset);
    // Serialize message field [u8RelativeAccy]
    bufferOffset = _serializer.float64(obj.u8RelativeAccy, buffer, bufferOffset);
    // Serialize message field [u8HeadingAngle]
    bufferOffset = _serializer.float64(obj.u8HeadingAngle, buffer, bufferOffset);
    // Serialize message field [sSensorPos]
    bufferOffset = coord.serialize(obj.sSensorPos, buffer, bufferOffset);
    // Serialize message field [sNearestSensorPos]
    bufferOffset = coord.serialize(obj.sNearestSensorPos, buffer, bufferOffset);
    // Serialize message field [sSenNearestPosXL]
    bufferOffset = coord.serialize(obj.sSenNearestPosXL, buffer, bufferOffset);
    // Serialize message field [sSenNearestPosXR]
    bufferOffset = coord.serialize(obj.sSenNearestPosXR, buffer, bufferOffset);
    // Serialize message field [sSenNearestPosYL]
    bufferOffset = coord.serialize(obj.sSenNearestPosYL, buffer, bufferOffset);
    // Serialize message field [sSenNearestPosYR]
    bufferOffset = coord.serialize(obj.sSenNearestPosYR, buffer, bufferOffset);
    // Serialize message field [sBoundingBox]
    // Serialize the length for message field [sBoundingBox]
    bufferOffset = _serializer.uint32(obj.sBoundingBox.length, buffer, bufferOffset);
    obj.sBoundingBox.forEach((val) => {
      bufferOffset = point3d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [u1MovingSt]
    bufferOffset = _serializer.uint8(obj.u1MovingSt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dynamic_object
    let len;
    let data = new dynamic_object(null);
    // Deserialize message field [u8Dist]
    data.u8Dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8NearestDist]
    data.u8NearestDist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8RelativeVelx]
    data.u8RelativeVelx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8RelativeVely]
    data.u8RelativeVely = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8RelativeAccx]
    data.u8RelativeAccx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8RelativeAccy]
    data.u8RelativeAccy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8HeadingAngle]
    data.u8HeadingAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sSensorPos]
    data.sSensorPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sNearestSensorPos]
    data.sNearestSensorPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sSenNearestPosXL]
    data.sSenNearestPosXL = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sSenNearestPosXR]
    data.sSenNearestPosXR = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sSenNearestPosYL]
    data.sSenNearestPosYL = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sSenNearestPosYR]
    data.sSenNearestPosYR = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sBoundingBox]
    // Deserialize array length for message field [sBoundingBox]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sBoundingBox = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sBoundingBox[i] = point3d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [u1MovingSt]
    data.u1MovingSt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.sBoundingBox.length;
    return length + 283;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/dynamic_object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0fca4830c1def89864a68dc2897f16f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 传感器探测到的对象信息 ------ */
    
    float64    u8Dist
    float64    u8NearestDist
    float64    u8RelativeVelx
    float64    u8RelativeVely
    float64    u8RelativeAccx
    float64    u8RelativeAccy
    float64    u8HeadingAngle
    coord      sSensorPos
    coord      sNearestSensorPos
    coord      sSenNearestPosXL
    coord      sSenNearestPosXR
    coord      sSenNearestPosYL
    coord      sSenNearestPosYR
    point3d[]  sBoundingBox
    uint8      u1MovingSt
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
    MSG: RosAdapter/point3d
    float64      u8x
    float64      u8y
    float64      u8z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dynamic_object(null);
    if (msg.u8Dist !== undefined) {
      resolved.u8Dist = msg.u8Dist;
    }
    else {
      resolved.u8Dist = 0.0
    }

    if (msg.u8NearestDist !== undefined) {
      resolved.u8NearestDist = msg.u8NearestDist;
    }
    else {
      resolved.u8NearestDist = 0.0
    }

    if (msg.u8RelativeVelx !== undefined) {
      resolved.u8RelativeVelx = msg.u8RelativeVelx;
    }
    else {
      resolved.u8RelativeVelx = 0.0
    }

    if (msg.u8RelativeVely !== undefined) {
      resolved.u8RelativeVely = msg.u8RelativeVely;
    }
    else {
      resolved.u8RelativeVely = 0.0
    }

    if (msg.u8RelativeAccx !== undefined) {
      resolved.u8RelativeAccx = msg.u8RelativeAccx;
    }
    else {
      resolved.u8RelativeAccx = 0.0
    }

    if (msg.u8RelativeAccy !== undefined) {
      resolved.u8RelativeAccy = msg.u8RelativeAccy;
    }
    else {
      resolved.u8RelativeAccy = 0.0
    }

    if (msg.u8HeadingAngle !== undefined) {
      resolved.u8HeadingAngle = msg.u8HeadingAngle;
    }
    else {
      resolved.u8HeadingAngle = 0.0
    }

    if (msg.sSensorPos !== undefined) {
      resolved.sSensorPos = coord.Resolve(msg.sSensorPos)
    }
    else {
      resolved.sSensorPos = new coord()
    }

    if (msg.sNearestSensorPos !== undefined) {
      resolved.sNearestSensorPos = coord.Resolve(msg.sNearestSensorPos)
    }
    else {
      resolved.sNearestSensorPos = new coord()
    }

    if (msg.sSenNearestPosXL !== undefined) {
      resolved.sSenNearestPosXL = coord.Resolve(msg.sSenNearestPosXL)
    }
    else {
      resolved.sSenNearestPosXL = new coord()
    }

    if (msg.sSenNearestPosXR !== undefined) {
      resolved.sSenNearestPosXR = coord.Resolve(msg.sSenNearestPosXR)
    }
    else {
      resolved.sSenNearestPosXR = new coord()
    }

    if (msg.sSenNearestPosYL !== undefined) {
      resolved.sSenNearestPosYL = coord.Resolve(msg.sSenNearestPosYL)
    }
    else {
      resolved.sSenNearestPosYL = new coord()
    }

    if (msg.sSenNearestPosYR !== undefined) {
      resolved.sSenNearestPosYR = coord.Resolve(msg.sSenNearestPosYR)
    }
    else {
      resolved.sSenNearestPosYR = new coord()
    }

    if (msg.sBoundingBox !== undefined) {
      resolved.sBoundingBox = new Array(msg.sBoundingBox.length);
      for (let i = 0; i < resolved.sBoundingBox.length; ++i) {
        resolved.sBoundingBox[i] = point3d.Resolve(msg.sBoundingBox[i]);
      }
    }
    else {
      resolved.sBoundingBox = []
    }

    if (msg.u1MovingSt !== undefined) {
      resolved.u1MovingSt = msg.u1MovingSt;
    }
    else {
      resolved.u1MovingSt = 0
    }

    return resolved;
    }
};

module.exports = dynamic_object;
