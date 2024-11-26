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

class override_controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8ThrottleValue = null;
      this.u8BrakeValue = null;
      this.u8SteeringWheelValue = null;
      this.u8ParkingBrakeValue = null;
      this.u8ClutchValue = null;
      this.u8GearValue = null;
      this.u4ObjectId = null;
      this.u1ThrottleActive = null;
      this.u1BrakeActive = null;
      this.u1SteeringWheelActive = null;
      this.u1ParkingBrakeActive = null;
      this.u1ClutchActive = null;
      this.u1GearActive = null;
    }
    else {
      if (initObj.hasOwnProperty('u8ThrottleValue')) {
        this.u8ThrottleValue = initObj.u8ThrottleValue
      }
      else {
        this.u8ThrottleValue = 0.0;
      }
      if (initObj.hasOwnProperty('u8BrakeValue')) {
        this.u8BrakeValue = initObj.u8BrakeValue
      }
      else {
        this.u8BrakeValue = 0.0;
      }
      if (initObj.hasOwnProperty('u8SteeringWheelValue')) {
        this.u8SteeringWheelValue = initObj.u8SteeringWheelValue
      }
      else {
        this.u8SteeringWheelValue = 0.0;
      }
      if (initObj.hasOwnProperty('u8ParkingBrakeValue')) {
        this.u8ParkingBrakeValue = initObj.u8ParkingBrakeValue
      }
      else {
        this.u8ParkingBrakeValue = 0.0;
      }
      if (initObj.hasOwnProperty('u8ClutchValue')) {
        this.u8ClutchValue = initObj.u8ClutchValue
      }
      else {
        this.u8ClutchValue = 0.0;
      }
      if (initObj.hasOwnProperty('u8GearValue')) {
        this.u8GearValue = initObj.u8GearValue
      }
      else {
        this.u8GearValue = 0.0;
      }
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('u1ThrottleActive')) {
        this.u1ThrottleActive = initObj.u1ThrottleActive
      }
      else {
        this.u1ThrottleActive = false;
      }
      if (initObj.hasOwnProperty('u1BrakeActive')) {
        this.u1BrakeActive = initObj.u1BrakeActive
      }
      else {
        this.u1BrakeActive = false;
      }
      if (initObj.hasOwnProperty('u1SteeringWheelActive')) {
        this.u1SteeringWheelActive = initObj.u1SteeringWheelActive
      }
      else {
        this.u1SteeringWheelActive = false;
      }
      if (initObj.hasOwnProperty('u1ParkingBrakeActive')) {
        this.u1ParkingBrakeActive = initObj.u1ParkingBrakeActive
      }
      else {
        this.u1ParkingBrakeActive = false;
      }
      if (initObj.hasOwnProperty('u1ClutchActive')) {
        this.u1ClutchActive = initObj.u1ClutchActive
      }
      else {
        this.u1ClutchActive = false;
      }
      if (initObj.hasOwnProperty('u1GearActive')) {
        this.u1GearActive = initObj.u1GearActive
      }
      else {
        this.u1GearActive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type override_controller
    // Serialize message field [u8ThrottleValue]
    bufferOffset = _serializer.float64(obj.u8ThrottleValue, buffer, bufferOffset);
    // Serialize message field [u8BrakeValue]
    bufferOffset = _serializer.float64(obj.u8BrakeValue, buffer, bufferOffset);
    // Serialize message field [u8SteeringWheelValue]
    bufferOffset = _serializer.float64(obj.u8SteeringWheelValue, buffer, bufferOffset);
    // Serialize message field [u8ParkingBrakeValue]
    bufferOffset = _serializer.float64(obj.u8ParkingBrakeValue, buffer, bufferOffset);
    // Serialize message field [u8ClutchValue]
    bufferOffset = _serializer.float64(obj.u8ClutchValue, buffer, bufferOffset);
    // Serialize message field [u8GearValue]
    bufferOffset = _serializer.float64(obj.u8GearValue, buffer, bufferOffset);
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [u1ThrottleActive]
    bufferOffset = _serializer.bool(obj.u1ThrottleActive, buffer, bufferOffset);
    // Serialize message field [u1BrakeActive]
    bufferOffset = _serializer.bool(obj.u1BrakeActive, buffer, bufferOffset);
    // Serialize message field [u1SteeringWheelActive]
    bufferOffset = _serializer.bool(obj.u1SteeringWheelActive, buffer, bufferOffset);
    // Serialize message field [u1ParkingBrakeActive]
    bufferOffset = _serializer.bool(obj.u1ParkingBrakeActive, buffer, bufferOffset);
    // Serialize message field [u1ClutchActive]
    bufferOffset = _serializer.bool(obj.u1ClutchActive, buffer, bufferOffset);
    // Serialize message field [u1GearActive]
    bufferOffset = _serializer.bool(obj.u1GearActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type override_controller
    let len;
    let data = new override_controller(null);
    // Deserialize message field [u8ThrottleValue]
    data.u8ThrottleValue = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8BrakeValue]
    data.u8BrakeValue = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8SteeringWheelValue]
    data.u8SteeringWheelValue = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8ParkingBrakeValue]
    data.u8ParkingBrakeValue = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8ClutchValue]
    data.u8ClutchValue = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8GearValue]
    data.u8GearValue = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u1ThrottleActive]
    data.u1ThrottleActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1BrakeActive]
    data.u1BrakeActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1SteeringWheelActive]
    data.u1SteeringWheelActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1ParkingBrakeActive]
    data.u1ParkingBrakeActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1ClutchActive]
    data.u1ClutchActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [u1GearActive]
    data.u1GearActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 58;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/override_controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ea5a19cb588ee701c9b5157e9aab0b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------接管控制器 ------ */
    
    float64   u8ThrottleValue
    float64   u8BrakeValue
    float64   u8SteeringWheelValue
    float64   u8ParkingBrakeValue
    float64   u8ClutchValue
    float64   u8GearValue
    uint32    u4ObjectId
    bool      u1ThrottleActive
    bool      u1BrakeActive
    bool      u1SteeringWheelActive
    bool      u1ParkingBrakeActive
    bool      u1ClutchActive
    bool      u1GearActive
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new override_controller(null);
    if (msg.u8ThrottleValue !== undefined) {
      resolved.u8ThrottleValue = msg.u8ThrottleValue;
    }
    else {
      resolved.u8ThrottleValue = 0.0
    }

    if (msg.u8BrakeValue !== undefined) {
      resolved.u8BrakeValue = msg.u8BrakeValue;
    }
    else {
      resolved.u8BrakeValue = 0.0
    }

    if (msg.u8SteeringWheelValue !== undefined) {
      resolved.u8SteeringWheelValue = msg.u8SteeringWheelValue;
    }
    else {
      resolved.u8SteeringWheelValue = 0.0
    }

    if (msg.u8ParkingBrakeValue !== undefined) {
      resolved.u8ParkingBrakeValue = msg.u8ParkingBrakeValue;
    }
    else {
      resolved.u8ParkingBrakeValue = 0.0
    }

    if (msg.u8ClutchValue !== undefined) {
      resolved.u8ClutchValue = msg.u8ClutchValue;
    }
    else {
      resolved.u8ClutchValue = 0.0
    }

    if (msg.u8GearValue !== undefined) {
      resolved.u8GearValue = msg.u8GearValue;
    }
    else {
      resolved.u8GearValue = 0.0
    }

    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.u1ThrottleActive !== undefined) {
      resolved.u1ThrottleActive = msg.u1ThrottleActive;
    }
    else {
      resolved.u1ThrottleActive = false
    }

    if (msg.u1BrakeActive !== undefined) {
      resolved.u1BrakeActive = msg.u1BrakeActive;
    }
    else {
      resolved.u1BrakeActive = false
    }

    if (msg.u1SteeringWheelActive !== undefined) {
      resolved.u1SteeringWheelActive = msg.u1SteeringWheelActive;
    }
    else {
      resolved.u1SteeringWheelActive = false
    }

    if (msg.u1ParkingBrakeActive !== undefined) {
      resolved.u1ParkingBrakeActive = msg.u1ParkingBrakeActive;
    }
    else {
      resolved.u1ParkingBrakeActive = false
    }

    if (msg.u1ClutchActive !== undefined) {
      resolved.u1ClutchActive = msg.u1ClutchActive;
    }
    else {
      resolved.u1ClutchActive = false
    }

    if (msg.u1GearActive !== undefined) {
      resolved.u1GearActive = msg.u1GearActive;
    }
    else {
      resolved.u1GearActive = false
    }

    return resolved;
    }
};

module.exports = override_controller;
