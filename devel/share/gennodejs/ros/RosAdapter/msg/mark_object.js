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

class mark_object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au8RoadMarkCoeffL = null;
      this.au8RoadMarkCoeffR = null;
    }
    else {
      if (initObj.hasOwnProperty('au8RoadMarkCoeffL')) {
        this.au8RoadMarkCoeffL = initObj.au8RoadMarkCoeffL
      }
      else {
        this.au8RoadMarkCoeffL = [];
      }
      if (initObj.hasOwnProperty('au8RoadMarkCoeffR')) {
        this.au8RoadMarkCoeffR = initObj.au8RoadMarkCoeffR
      }
      else {
        this.au8RoadMarkCoeffR = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mark_object
    // Serialize message field [au8RoadMarkCoeffL]
    bufferOffset = _arraySerializer.float64(obj.au8RoadMarkCoeffL, buffer, bufferOffset, null);
    // Serialize message field [au8RoadMarkCoeffR]
    bufferOffset = _arraySerializer.float64(obj.au8RoadMarkCoeffR, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mark_object
    let len;
    let data = new mark_object(null);
    // Deserialize message field [au8RoadMarkCoeffL]
    data.au8RoadMarkCoeffL = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [au8RoadMarkCoeffR]
    data.au8RoadMarkCoeffR = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.au8RoadMarkCoeffL.length;
    length += 8 * object.au8RoadMarkCoeffR.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/mark_object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e24fb0ae50c06f023e6ce66991b164da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 车道线
    
    float64[]	 au8RoadMarkCoeffL
    float64[]	 au8RoadMarkCoeffR
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mark_object(null);
    if (msg.au8RoadMarkCoeffL !== undefined) {
      resolved.au8RoadMarkCoeffL = msg.au8RoadMarkCoeffL;
    }
    else {
      resolved.au8RoadMarkCoeffL = []
    }

    if (msg.au8RoadMarkCoeffR !== undefined) {
      resolved.au8RoadMarkCoeffR = msg.au8RoadMarkCoeffR;
    }
    else {
      resolved.au8RoadMarkCoeffR = []
    }

    return resolved;
    }
};

module.exports = mark_object;
