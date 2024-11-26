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

class mil_object_state_base {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4LightMask = null;
      this.u4DistanceX = null;
      this.u4DistanceY = null;
      this.u4VelocityX = null;
      this.u4VelocityY = null;
      this.u4AccelerationX = null;
      this.u4AccelerationY = null;
      this.u4YawRate = null;
      this.u4Dist = null;
      this.u4Angle = null;
      this.u1ObjClass = null;
      this.u1Flag_detected = null;
      this.u1Movable = null;
      this.u1Moving = null;
      this.u1Obj_Age = null;
    }
    else {
      if (initObj.hasOwnProperty('u4LightMask')) {
        this.u4LightMask = initObj.u4LightMask
      }
      else {
        this.u4LightMask = 0;
      }
      if (initObj.hasOwnProperty('u4DistanceX')) {
        this.u4DistanceX = initObj.u4DistanceX
      }
      else {
        this.u4DistanceX = 0.0;
      }
      if (initObj.hasOwnProperty('u4DistanceY')) {
        this.u4DistanceY = initObj.u4DistanceY
      }
      else {
        this.u4DistanceY = 0.0;
      }
      if (initObj.hasOwnProperty('u4VelocityX')) {
        this.u4VelocityX = initObj.u4VelocityX
      }
      else {
        this.u4VelocityX = 0.0;
      }
      if (initObj.hasOwnProperty('u4VelocityY')) {
        this.u4VelocityY = initObj.u4VelocityY
      }
      else {
        this.u4VelocityY = 0.0;
      }
      if (initObj.hasOwnProperty('u4AccelerationX')) {
        this.u4AccelerationX = initObj.u4AccelerationX
      }
      else {
        this.u4AccelerationX = 0.0;
      }
      if (initObj.hasOwnProperty('u4AccelerationY')) {
        this.u4AccelerationY = initObj.u4AccelerationY
      }
      else {
        this.u4AccelerationY = 0.0;
      }
      if (initObj.hasOwnProperty('u4YawRate')) {
        this.u4YawRate = initObj.u4YawRate
      }
      else {
        this.u4YawRate = 0.0;
      }
      if (initObj.hasOwnProperty('u4Dist')) {
        this.u4Dist = initObj.u4Dist
      }
      else {
        this.u4Dist = 0.0;
      }
      if (initObj.hasOwnProperty('u4Angle')) {
        this.u4Angle = initObj.u4Angle
      }
      else {
        this.u4Angle = 0.0;
      }
      if (initObj.hasOwnProperty('u1ObjClass')) {
        this.u1ObjClass = initObj.u1ObjClass
      }
      else {
        this.u1ObjClass = 0;
      }
      if (initObj.hasOwnProperty('u1Flag_detected')) {
        this.u1Flag_detected = initObj.u1Flag_detected
      }
      else {
        this.u1Flag_detected = 0;
      }
      if (initObj.hasOwnProperty('u1Movable')) {
        this.u1Movable = initObj.u1Movable
      }
      else {
        this.u1Movable = 0;
      }
      if (initObj.hasOwnProperty('u1Moving')) {
        this.u1Moving = initObj.u1Moving
      }
      else {
        this.u1Moving = 0;
      }
      if (initObj.hasOwnProperty('u1Obj_Age')) {
        this.u1Obj_Age = initObj.u1Obj_Age
      }
      else {
        this.u1Obj_Age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mil_object_state_base
    // Serialize message field [u4LightMask]
    bufferOffset = _serializer.uint32(obj.u4LightMask, buffer, bufferOffset);
    // Serialize message field [u4DistanceX]
    bufferOffset = _serializer.float32(obj.u4DistanceX, buffer, bufferOffset);
    // Serialize message field [u4DistanceY]
    bufferOffset = _serializer.float32(obj.u4DistanceY, buffer, bufferOffset);
    // Serialize message field [u4VelocityX]
    bufferOffset = _serializer.float32(obj.u4VelocityX, buffer, bufferOffset);
    // Serialize message field [u4VelocityY]
    bufferOffset = _serializer.float32(obj.u4VelocityY, buffer, bufferOffset);
    // Serialize message field [u4AccelerationX]
    bufferOffset = _serializer.float32(obj.u4AccelerationX, buffer, bufferOffset);
    // Serialize message field [u4AccelerationY]
    bufferOffset = _serializer.float32(obj.u4AccelerationY, buffer, bufferOffset);
    // Serialize message field [u4YawRate]
    bufferOffset = _serializer.float32(obj.u4YawRate, buffer, bufferOffset);
    // Serialize message field [u4Dist]
    bufferOffset = _serializer.float32(obj.u4Dist, buffer, bufferOffset);
    // Serialize message field [u4Angle]
    bufferOffset = _serializer.float32(obj.u4Angle, buffer, bufferOffset);
    // Serialize message field [u1ObjClass]
    bufferOffset = _serializer.uint8(obj.u1ObjClass, buffer, bufferOffset);
    // Serialize message field [u1Flag_detected]
    bufferOffset = _serializer.uint8(obj.u1Flag_detected, buffer, bufferOffset);
    // Serialize message field [u1Movable]
    bufferOffset = _serializer.uint8(obj.u1Movable, buffer, bufferOffset);
    // Serialize message field [u1Moving]
    bufferOffset = _serializer.uint8(obj.u1Moving, buffer, bufferOffset);
    // Serialize message field [u1Obj_Age]
    bufferOffset = _serializer.uint8(obj.u1Obj_Age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mil_object_state_base
    let len;
    let data = new mil_object_state_base(null);
    // Deserialize message field [u4LightMask]
    data.u4LightMask = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4DistanceX]
    data.u4DistanceX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4DistanceY]
    data.u4DistanceY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4VelocityX]
    data.u4VelocityX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4VelocityY]
    data.u4VelocityY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4AccelerationX]
    data.u4AccelerationX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4AccelerationY]
    data.u4AccelerationY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4YawRate]
    data.u4YawRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4Dist]
    data.u4Dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4Angle]
    data.u4Angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1ObjClass]
    data.u1ObjClass = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Flag_detected]
    data.u1Flag_detected = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Movable]
    data.u1Movable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Moving]
    data.u1Moving = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Obj_Age]
    data.u1Obj_Age = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/mil_object_state_base';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '460517ddfac2850057332c48eb20e133';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new mil_object_state_base(null);
    if (msg.u4LightMask !== undefined) {
      resolved.u4LightMask = msg.u4LightMask;
    }
    else {
      resolved.u4LightMask = 0
    }

    if (msg.u4DistanceX !== undefined) {
      resolved.u4DistanceX = msg.u4DistanceX;
    }
    else {
      resolved.u4DistanceX = 0.0
    }

    if (msg.u4DistanceY !== undefined) {
      resolved.u4DistanceY = msg.u4DistanceY;
    }
    else {
      resolved.u4DistanceY = 0.0
    }

    if (msg.u4VelocityX !== undefined) {
      resolved.u4VelocityX = msg.u4VelocityX;
    }
    else {
      resolved.u4VelocityX = 0.0
    }

    if (msg.u4VelocityY !== undefined) {
      resolved.u4VelocityY = msg.u4VelocityY;
    }
    else {
      resolved.u4VelocityY = 0.0
    }

    if (msg.u4AccelerationX !== undefined) {
      resolved.u4AccelerationX = msg.u4AccelerationX;
    }
    else {
      resolved.u4AccelerationX = 0.0
    }

    if (msg.u4AccelerationY !== undefined) {
      resolved.u4AccelerationY = msg.u4AccelerationY;
    }
    else {
      resolved.u4AccelerationY = 0.0
    }

    if (msg.u4YawRate !== undefined) {
      resolved.u4YawRate = msg.u4YawRate;
    }
    else {
      resolved.u4YawRate = 0.0
    }

    if (msg.u4Dist !== undefined) {
      resolved.u4Dist = msg.u4Dist;
    }
    else {
      resolved.u4Dist = 0.0
    }

    if (msg.u4Angle !== undefined) {
      resolved.u4Angle = msg.u4Angle;
    }
    else {
      resolved.u4Angle = 0.0
    }

    if (msg.u1ObjClass !== undefined) {
      resolved.u1ObjClass = msg.u1ObjClass;
    }
    else {
      resolved.u1ObjClass = 0
    }

    if (msg.u1Flag_detected !== undefined) {
      resolved.u1Flag_detected = msg.u1Flag_detected;
    }
    else {
      resolved.u1Flag_detected = 0
    }

    if (msg.u1Movable !== undefined) {
      resolved.u1Movable = msg.u1Movable;
    }
    else {
      resolved.u1Movable = 0
    }

    if (msg.u1Moving !== undefined) {
      resolved.u1Moving = msg.u1Moving;
    }
    else {
      resolved.u1Moving = 0
    }

    if (msg.u1Obj_Age !== undefined) {
      resolved.u1Obj_Age = msg.u1Obj_Age;
    }
    else {
      resolved.u1Obj_Age = 0
    }

    return resolved;
    }
};

module.exports = mil_object_state_base;
