// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let dynamic_object = require('./dynamic_object.js');
let mark_object = require('./mark_object.js');
let sign_object = require('./sign_object.js');

//-----------------------------------------------------------

class object_uion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sDynamicObj = null;
      this.sMarkObj = null;
      this.sSignObj = null;
    }
    else {
      if (initObj.hasOwnProperty('sDynamicObj')) {
        this.sDynamicObj = initObj.sDynamicObj
      }
      else {
        this.sDynamicObj = new dynamic_object();
      }
      if (initObj.hasOwnProperty('sMarkObj')) {
        this.sMarkObj = initObj.sMarkObj
      }
      else {
        this.sMarkObj = new mark_object();
      }
      if (initObj.hasOwnProperty('sSignObj')) {
        this.sSignObj = initObj.sSignObj
      }
      else {
        this.sSignObj = new sign_object();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type object_uion
    // Serialize message field [sDynamicObj]
    bufferOffset = dynamic_object.serialize(obj.sDynamicObj, buffer, bufferOffset);
    // Serialize message field [sMarkObj]
    bufferOffset = mark_object.serialize(obj.sMarkObj, buffer, bufferOffset);
    // Serialize message field [sSignObj]
    bufferOffset = sign_object.serialize(obj.sSignObj, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type object_uion
    let len;
    let data = new object_uion(null);
    // Deserialize message field [sDynamicObj]
    data.sDynamicObj = dynamic_object.deserialize(buffer, bufferOffset);
    // Deserialize message field [sMarkObj]
    data.sMarkObj = mark_object.deserialize(buffer, bufferOffset);
    // Deserialize message field [sSignObj]
    data.sSignObj = sign_object.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += dynamic_object.getMessageSize(object.sDynamicObj);
    length += mark_object.getMessageSize(object.sMarkObj);
    return length + 107;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/object_uion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7852172eb40c908fcc049083af8007a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dynamic_object sDynamicObj
    mark_object    sMarkObj
    sign_object    sSignObj 
    ================================================================================
    MSG: RosAdapter/dynamic_object
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
    ================================================================================
    MSG: RosAdapter/mark_object
    # 车道线
    
    float64[]	 au8RoadMarkCoeffL
    float64[]	 au8RoadMarkCoeffR
    ================================================================================
    MSG: RosAdapter/sign_object
    # 交通标志
    
    float64   u8Dist
    float64   u8NearestDist
    float64   u8TrafficSignDistX
    float64   u8TrafficSignDistY
    coord     sSensorPos
    coord     sNearestSensorPos
    uint8     u1TrafficSignType
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new object_uion(null);
    if (msg.sDynamicObj !== undefined) {
      resolved.sDynamicObj = dynamic_object.Resolve(msg.sDynamicObj)
    }
    else {
      resolved.sDynamicObj = new dynamic_object()
    }

    if (msg.sMarkObj !== undefined) {
      resolved.sMarkObj = mark_object.Resolve(msg.sMarkObj)
    }
    else {
      resolved.sMarkObj = new mark_object()
    }

    if (msg.sSignObj !== undefined) {
      resolved.sSignObj = sign_object.Resolve(msg.sSignObj)
    }
    else {
      resolved.sSignObj = new sign_object()
    }

    return resolved;
    }
};

module.exports = object_uion;
