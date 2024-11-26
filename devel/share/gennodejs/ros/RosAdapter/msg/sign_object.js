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

class sign_object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8Dist = null;
      this.u8NearestDist = null;
      this.u8TrafficSignDistX = null;
      this.u8TrafficSignDistY = null;
      this.sSensorPos = null;
      this.sNearestSensorPos = null;
      this.u1TrafficSignType = null;
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
      if (initObj.hasOwnProperty('u8TrafficSignDistX')) {
        this.u8TrafficSignDistX = initObj.u8TrafficSignDistX
      }
      else {
        this.u8TrafficSignDistX = 0.0;
      }
      if (initObj.hasOwnProperty('u8TrafficSignDistY')) {
        this.u8TrafficSignDistY = initObj.u8TrafficSignDistY
      }
      else {
        this.u8TrafficSignDistY = 0.0;
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
      if (initObj.hasOwnProperty('u1TrafficSignType')) {
        this.u1TrafficSignType = initObj.u1TrafficSignType
      }
      else {
        this.u1TrafficSignType = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sign_object
    // Serialize message field [u8Dist]
    bufferOffset = _serializer.float64(obj.u8Dist, buffer, bufferOffset);
    // Serialize message field [u8NearestDist]
    bufferOffset = _serializer.float64(obj.u8NearestDist, buffer, bufferOffset);
    // Serialize message field [u8TrafficSignDistX]
    bufferOffset = _serializer.float64(obj.u8TrafficSignDistX, buffer, bufferOffset);
    // Serialize message field [u8TrafficSignDistY]
    bufferOffset = _serializer.float64(obj.u8TrafficSignDistY, buffer, bufferOffset);
    // Serialize message field [sSensorPos]
    bufferOffset = coord.serialize(obj.sSensorPos, buffer, bufferOffset);
    // Serialize message field [sNearestSensorPos]
    bufferOffset = coord.serialize(obj.sNearestSensorPos, buffer, bufferOffset);
    // Serialize message field [u1TrafficSignType]
    bufferOffset = _serializer.uint8(obj.u1TrafficSignType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sign_object
    let len;
    let data = new sign_object(null);
    // Deserialize message field [u8Dist]
    data.u8Dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8NearestDist]
    data.u8NearestDist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8TrafficSignDistX]
    data.u8TrafficSignDistX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8TrafficSignDistY]
    data.u8TrafficSignDistY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sSensorPos]
    data.sSensorPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [sNearestSensorPos]
    data.sNearestSensorPos = coord.deserialize(buffer, bufferOffset);
    // Deserialize message field [u1TrafficSignType]
    data.u1TrafficSignType = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 107;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/sign_object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '126cf5cd9bff85cc03e9822c09ab25cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 交通标志
    
    float64   u8Dist
    float64   u8NearestDist
    float64   u8TrafficSignDistX
    float64   u8TrafficSignDistY
    coord     sSensorPos
    coord     sNearestSensorPos
    uint8     u1TrafficSignType
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
    const resolved = new sign_object(null);
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

    if (msg.u8TrafficSignDistX !== undefined) {
      resolved.u8TrafficSignDistX = msg.u8TrafficSignDistX;
    }
    else {
      resolved.u8TrafficSignDistX = 0.0
    }

    if (msg.u8TrafficSignDistY !== undefined) {
      resolved.u8TrafficSignDistY = msg.u8TrafficSignDistY;
    }
    else {
      resolved.u8TrafficSignDistY = 0.0
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

    if (msg.u1TrafficSignType !== undefined) {
      resolved.u1TrafficSignType = msg.u1TrafficSignType;
    }
    else {
      resolved.u1TrafficSignType = 0
    }

    return resolved;
    }
};

module.exports = sign_object;
