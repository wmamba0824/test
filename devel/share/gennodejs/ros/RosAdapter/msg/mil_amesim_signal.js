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

class mil_amesim_signal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4LeftLen = null;
      this.u4NextLen = null;
      this.u4NextAgeSpeed = null;
      this.u4NextMinSpeed = null;
      this.u4NextMaxSpeed = null;
      this.u4NextGradient = null;
      this.u4NextCongest = null;
      this.u1RoadType = null;
      this.u4DisLimit = null;
      this.u1IsFarAwayLimit = null;
      this.u4LimitSpeed = null;
      this.ulIsJunction = null;
      this.u4DisJunction = null;
      this.ulIsFarAwayJunc = null;
      this.ultrafficLightStat = null;
      this.u4Curvity = null;
      this.u4RelativeVel = null;
      this.u4RelativeDis = null;
    }
    else {
      if (initObj.hasOwnProperty('u4LeftLen')) {
        this.u4LeftLen = initObj.u4LeftLen
      }
      else {
        this.u4LeftLen = 0.0;
      }
      if (initObj.hasOwnProperty('u4NextLen')) {
        this.u4NextLen = initObj.u4NextLen
      }
      else {
        this.u4NextLen = 0.0;
      }
      if (initObj.hasOwnProperty('u4NextAgeSpeed')) {
        this.u4NextAgeSpeed = initObj.u4NextAgeSpeed
      }
      else {
        this.u4NextAgeSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('u4NextMinSpeed')) {
        this.u4NextMinSpeed = initObj.u4NextMinSpeed
      }
      else {
        this.u4NextMinSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('u4NextMaxSpeed')) {
        this.u4NextMaxSpeed = initObj.u4NextMaxSpeed
      }
      else {
        this.u4NextMaxSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('u4NextGradient')) {
        this.u4NextGradient = initObj.u4NextGradient
      }
      else {
        this.u4NextGradient = 0.0;
      }
      if (initObj.hasOwnProperty('u4NextCongest')) {
        this.u4NextCongest = initObj.u4NextCongest
      }
      else {
        this.u4NextCongest = 0.0;
      }
      if (initObj.hasOwnProperty('u1RoadType')) {
        this.u1RoadType = initObj.u1RoadType
      }
      else {
        this.u1RoadType = 0;
      }
      if (initObj.hasOwnProperty('u4DisLimit')) {
        this.u4DisLimit = initObj.u4DisLimit
      }
      else {
        this.u4DisLimit = 0.0;
      }
      if (initObj.hasOwnProperty('u1IsFarAwayLimit')) {
        this.u1IsFarAwayLimit = initObj.u1IsFarAwayLimit
      }
      else {
        this.u1IsFarAwayLimit = false;
      }
      if (initObj.hasOwnProperty('u4LimitSpeed')) {
        this.u4LimitSpeed = initObj.u4LimitSpeed
      }
      else {
        this.u4LimitSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('ulIsJunction')) {
        this.ulIsJunction = initObj.ulIsJunction
      }
      else {
        this.ulIsJunction = false;
      }
      if (initObj.hasOwnProperty('u4DisJunction')) {
        this.u4DisJunction = initObj.u4DisJunction
      }
      else {
        this.u4DisJunction = 0.0;
      }
      if (initObj.hasOwnProperty('ulIsFarAwayJunc')) {
        this.ulIsFarAwayJunc = initObj.ulIsFarAwayJunc
      }
      else {
        this.ulIsFarAwayJunc = false;
      }
      if (initObj.hasOwnProperty('ultrafficLightStat')) {
        this.ultrafficLightStat = initObj.ultrafficLightStat
      }
      else {
        this.ultrafficLightStat = 0;
      }
      if (initObj.hasOwnProperty('u4Curvity')) {
        this.u4Curvity = initObj.u4Curvity
      }
      else {
        this.u4Curvity = 0.0;
      }
      if (initObj.hasOwnProperty('u4RelativeVel')) {
        this.u4RelativeVel = initObj.u4RelativeVel
      }
      else {
        this.u4RelativeVel = 0.0;
      }
      if (initObj.hasOwnProperty('u4RelativeDis')) {
        this.u4RelativeDis = initObj.u4RelativeDis
      }
      else {
        this.u4RelativeDis = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mil_amesim_signal
    // Serialize message field [u4LeftLen]
    bufferOffset = _serializer.float32(obj.u4LeftLen, buffer, bufferOffset);
    // Serialize message field [u4NextLen]
    bufferOffset = _serializer.float32(obj.u4NextLen, buffer, bufferOffset);
    // Serialize message field [u4NextAgeSpeed]
    bufferOffset = _serializer.float32(obj.u4NextAgeSpeed, buffer, bufferOffset);
    // Serialize message field [u4NextMinSpeed]
    bufferOffset = _serializer.float32(obj.u4NextMinSpeed, buffer, bufferOffset);
    // Serialize message field [u4NextMaxSpeed]
    bufferOffset = _serializer.float32(obj.u4NextMaxSpeed, buffer, bufferOffset);
    // Serialize message field [u4NextGradient]
    bufferOffset = _serializer.float32(obj.u4NextGradient, buffer, bufferOffset);
    // Serialize message field [u4NextCongest]
    bufferOffset = _serializer.float32(obj.u4NextCongest, buffer, bufferOffset);
    // Serialize message field [u1RoadType]
    bufferOffset = _serializer.uint8(obj.u1RoadType, buffer, bufferOffset);
    // Serialize message field [u4DisLimit]
    bufferOffset = _serializer.float32(obj.u4DisLimit, buffer, bufferOffset);
    // Serialize message field [u1IsFarAwayLimit]
    bufferOffset = _serializer.bool(obj.u1IsFarAwayLimit, buffer, bufferOffset);
    // Serialize message field [u4LimitSpeed]
    bufferOffset = _serializer.float32(obj.u4LimitSpeed, buffer, bufferOffset);
    // Serialize message field [ulIsJunction]
    bufferOffset = _serializer.bool(obj.ulIsJunction, buffer, bufferOffset);
    // Serialize message field [u4DisJunction]
    bufferOffset = _serializer.float32(obj.u4DisJunction, buffer, bufferOffset);
    // Serialize message field [ulIsFarAwayJunc]
    bufferOffset = _serializer.bool(obj.ulIsFarAwayJunc, buffer, bufferOffset);
    // Serialize message field [ultrafficLightStat]
    bufferOffset = _serializer.uint8(obj.ultrafficLightStat, buffer, bufferOffset);
    // Serialize message field [u4Curvity]
    bufferOffset = _serializer.float32(obj.u4Curvity, buffer, bufferOffset);
    // Serialize message field [u4RelativeVel]
    bufferOffset = _serializer.float32(obj.u4RelativeVel, buffer, bufferOffset);
    // Serialize message field [u4RelativeDis]
    bufferOffset = _serializer.float32(obj.u4RelativeDis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mil_amesim_signal
    let len;
    let data = new mil_amesim_signal(null);
    // Deserialize message field [u4LeftLen]
    data.u4LeftLen = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4NextLen]
    data.u4NextLen = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4NextAgeSpeed]
    data.u4NextAgeSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4NextMinSpeed]
    data.u4NextMinSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4NextMaxSpeed]
    data.u4NextMaxSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4NextGradient]
    data.u4NextGradient = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4NextCongest]
    data.u4NextCongest = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1RoadType]
    data.u1RoadType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u4DisLimit]
    data.u4DisLimit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u1IsFarAwayLimit]
    data.u1IsFarAwayLimit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u4LimitSpeed]
    data.u4LimitSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ulIsJunction]
    data.ulIsJunction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u4DisJunction]
    data.u4DisJunction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ulIsFarAwayJunc]
    data.ulIsFarAwayJunc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ultrafficLightStat]
    data.ultrafficLightStat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u4Curvity]
    data.u4Curvity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4RelativeVel]
    data.u4RelativeVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4RelativeDis]
    data.u4RelativeDis = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/mil_amesim_signal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b272e0120e62408b4b47d6764b084b50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ MIL AMESim 测试信息描述包 ------ */
    
    float32       u4LeftLen
    float32       u4NextLen
    float32       u4NextAgeSpeed
    float32       u4NextMinSpeed
    float32       u4NextMaxSpeed
    float32       u4NextGradient
    float32       u4NextCongest
    uint8         u1RoadType
    float32       u4DisLimit
    bool          u1IsFarAwayLimit
    float32       u4LimitSpeed
    bool          ulIsJunction
    float32       u4DisJunction
    bool          ulIsFarAwayJunc
    uint8         ultrafficLightStat
    float32       u4Curvity
    float32       u4RelativeVel
    float32       u4RelativeDis
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mil_amesim_signal(null);
    if (msg.u4LeftLen !== undefined) {
      resolved.u4LeftLen = msg.u4LeftLen;
    }
    else {
      resolved.u4LeftLen = 0.0
    }

    if (msg.u4NextLen !== undefined) {
      resolved.u4NextLen = msg.u4NextLen;
    }
    else {
      resolved.u4NextLen = 0.0
    }

    if (msg.u4NextAgeSpeed !== undefined) {
      resolved.u4NextAgeSpeed = msg.u4NextAgeSpeed;
    }
    else {
      resolved.u4NextAgeSpeed = 0.0
    }

    if (msg.u4NextMinSpeed !== undefined) {
      resolved.u4NextMinSpeed = msg.u4NextMinSpeed;
    }
    else {
      resolved.u4NextMinSpeed = 0.0
    }

    if (msg.u4NextMaxSpeed !== undefined) {
      resolved.u4NextMaxSpeed = msg.u4NextMaxSpeed;
    }
    else {
      resolved.u4NextMaxSpeed = 0.0
    }

    if (msg.u4NextGradient !== undefined) {
      resolved.u4NextGradient = msg.u4NextGradient;
    }
    else {
      resolved.u4NextGradient = 0.0
    }

    if (msg.u4NextCongest !== undefined) {
      resolved.u4NextCongest = msg.u4NextCongest;
    }
    else {
      resolved.u4NextCongest = 0.0
    }

    if (msg.u1RoadType !== undefined) {
      resolved.u1RoadType = msg.u1RoadType;
    }
    else {
      resolved.u1RoadType = 0
    }

    if (msg.u4DisLimit !== undefined) {
      resolved.u4DisLimit = msg.u4DisLimit;
    }
    else {
      resolved.u4DisLimit = 0.0
    }

    if (msg.u1IsFarAwayLimit !== undefined) {
      resolved.u1IsFarAwayLimit = msg.u1IsFarAwayLimit;
    }
    else {
      resolved.u1IsFarAwayLimit = false
    }

    if (msg.u4LimitSpeed !== undefined) {
      resolved.u4LimitSpeed = msg.u4LimitSpeed;
    }
    else {
      resolved.u4LimitSpeed = 0.0
    }

    if (msg.ulIsJunction !== undefined) {
      resolved.ulIsJunction = msg.ulIsJunction;
    }
    else {
      resolved.ulIsJunction = false
    }

    if (msg.u4DisJunction !== undefined) {
      resolved.u4DisJunction = msg.u4DisJunction;
    }
    else {
      resolved.u4DisJunction = 0.0
    }

    if (msg.ulIsFarAwayJunc !== undefined) {
      resolved.ulIsFarAwayJunc = msg.ulIsFarAwayJunc;
    }
    else {
      resolved.ulIsFarAwayJunc = false
    }

    if (msg.ultrafficLightStat !== undefined) {
      resolved.ultrafficLightStat = msg.ultrafficLightStat;
    }
    else {
      resolved.ultrafficLightStat = 0
    }

    if (msg.u4Curvity !== undefined) {
      resolved.u4Curvity = msg.u4Curvity;
    }
    else {
      resolved.u4Curvity = 0.0
    }

    if (msg.u4RelativeVel !== undefined) {
      resolved.u4RelativeVel = msg.u4RelativeVel;
    }
    else {
      resolved.u4RelativeVel = 0.0
    }

    if (msg.u4RelativeDis !== undefined) {
      resolved.u4RelativeDis = msg.u4RelativeDis;
    }
    else {
      resolved.u4RelativeDis = 0.0
    }

    return resolved;
    }
};

module.exports = mil_amesim_signal;
