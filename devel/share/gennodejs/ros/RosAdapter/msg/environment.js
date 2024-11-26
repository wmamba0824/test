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

class environment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8RainIntensity = null;
      this.u8SnowIntensity = null;
      this.u8FogIntensity = null;
      this.u8FogVisualRange = null;
      this.u4TimeOfDay = null;
      this.u2TimeZoneMinutesWest = null;
      this.u2Year = null;
      this.u1CloudState = null;
      this.u1Day = null;
      this.u1Month = null;
    }
    else {
      if (initObj.hasOwnProperty('u8RainIntensity')) {
        this.u8RainIntensity = initObj.u8RainIntensity
      }
      else {
        this.u8RainIntensity = 0.0;
      }
      if (initObj.hasOwnProperty('u8SnowIntensity')) {
        this.u8SnowIntensity = initObj.u8SnowIntensity
      }
      else {
        this.u8SnowIntensity = 0.0;
      }
      if (initObj.hasOwnProperty('u8FogIntensity')) {
        this.u8FogIntensity = initObj.u8FogIntensity
      }
      else {
        this.u8FogIntensity = 0.0;
      }
      if (initObj.hasOwnProperty('u8FogVisualRange')) {
        this.u8FogVisualRange = initObj.u8FogVisualRange
      }
      else {
        this.u8FogVisualRange = 0.0;
      }
      if (initObj.hasOwnProperty('u4TimeOfDay')) {
        this.u4TimeOfDay = initObj.u4TimeOfDay
      }
      else {
        this.u4TimeOfDay = 0;
      }
      if (initObj.hasOwnProperty('u2TimeZoneMinutesWest')) {
        this.u2TimeZoneMinutesWest = initObj.u2TimeZoneMinutesWest
      }
      else {
        this.u2TimeZoneMinutesWest = 0;
      }
      if (initObj.hasOwnProperty('u2Year')) {
        this.u2Year = initObj.u2Year
      }
      else {
        this.u2Year = 0;
      }
      if (initObj.hasOwnProperty('u1CloudState')) {
        this.u1CloudState = initObj.u1CloudState
      }
      else {
        this.u1CloudState = 0;
      }
      if (initObj.hasOwnProperty('u1Day')) {
        this.u1Day = initObj.u1Day
      }
      else {
        this.u1Day = 0;
      }
      if (initObj.hasOwnProperty('u1Month')) {
        this.u1Month = initObj.u1Month
      }
      else {
        this.u1Month = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type environment
    // Serialize message field [u8RainIntensity]
    bufferOffset = _serializer.float64(obj.u8RainIntensity, buffer, bufferOffset);
    // Serialize message field [u8SnowIntensity]
    bufferOffset = _serializer.float64(obj.u8SnowIntensity, buffer, bufferOffset);
    // Serialize message field [u8FogIntensity]
    bufferOffset = _serializer.float64(obj.u8FogIntensity, buffer, bufferOffset);
    // Serialize message field [u8FogVisualRange]
    bufferOffset = _serializer.float64(obj.u8FogVisualRange, buffer, bufferOffset);
    // Serialize message field [u4TimeOfDay]
    bufferOffset = _serializer.uint32(obj.u4TimeOfDay, buffer, bufferOffset);
    // Serialize message field [u2TimeZoneMinutesWest]
    bufferOffset = _serializer.int16(obj.u2TimeZoneMinutesWest, buffer, bufferOffset);
    // Serialize message field [u2Year]
    bufferOffset = _serializer.uint16(obj.u2Year, buffer, bufferOffset);
    // Serialize message field [u1CloudState]
    bufferOffset = _serializer.uint8(obj.u1CloudState, buffer, bufferOffset);
    // Serialize message field [u1Day]
    bufferOffset = _serializer.uint8(obj.u1Day, buffer, bufferOffset);
    // Serialize message field [u1Month]
    bufferOffset = _serializer.uint8(obj.u1Month, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type environment
    let len;
    let data = new environment(null);
    // Deserialize message field [u8RainIntensity]
    data.u8RainIntensity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8SnowIntensity]
    data.u8SnowIntensity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8FogIntensity]
    data.u8FogIntensity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8FogVisualRange]
    data.u8FogVisualRange = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4TimeOfDay]
    data.u4TimeOfDay = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u2TimeZoneMinutesWest]
    data.u2TimeZoneMinutesWest = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [u2Year]
    data.u2Year = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [u1CloudState]
    data.u1CloudState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Day]
    data.u1Day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Month]
    data.u1Month = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/environment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd90b74b2548174d66e34a98a2d7dbde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 环境信息 ------ */
    float64      u8RainIntensity
    float64      u8SnowIntensity
    float64      u8FogIntensity
    float64      u8FogVisualRange
    uint32       u4TimeOfDay
    int16        u2TimeZoneMinutesWest
    uint16       u2Year
    uint8        u1CloudState
    uint8        u1Day
    uint8        u1Month
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new environment(null);
    if (msg.u8RainIntensity !== undefined) {
      resolved.u8RainIntensity = msg.u8RainIntensity;
    }
    else {
      resolved.u8RainIntensity = 0.0
    }

    if (msg.u8SnowIntensity !== undefined) {
      resolved.u8SnowIntensity = msg.u8SnowIntensity;
    }
    else {
      resolved.u8SnowIntensity = 0.0
    }

    if (msg.u8FogIntensity !== undefined) {
      resolved.u8FogIntensity = msg.u8FogIntensity;
    }
    else {
      resolved.u8FogIntensity = 0.0
    }

    if (msg.u8FogVisualRange !== undefined) {
      resolved.u8FogVisualRange = msg.u8FogVisualRange;
    }
    else {
      resolved.u8FogVisualRange = 0.0
    }

    if (msg.u4TimeOfDay !== undefined) {
      resolved.u4TimeOfDay = msg.u4TimeOfDay;
    }
    else {
      resolved.u4TimeOfDay = 0
    }

    if (msg.u2TimeZoneMinutesWest !== undefined) {
      resolved.u2TimeZoneMinutesWest = msg.u2TimeZoneMinutesWest;
    }
    else {
      resolved.u2TimeZoneMinutesWest = 0
    }

    if (msg.u2Year !== undefined) {
      resolved.u2Year = msg.u2Year;
    }
    else {
      resolved.u2Year = 0
    }

    if (msg.u1CloudState !== undefined) {
      resolved.u1CloudState = msg.u1CloudState;
    }
    else {
      resolved.u1CloudState = 0
    }

    if (msg.u1Day !== undefined) {
      resolved.u1Day = msg.u1Day;
    }
    else {
      resolved.u1Day = 0
    }

    if (msg.u1Month !== undefined) {
      resolved.u1Month = msg.u1Month;
    }
    else {
      resolved.u1Month = 0
    }

    return resolved;
    }
};

module.exports = environment;
