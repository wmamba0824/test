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

class mil_roadmark {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8RoadId = null;
      this.curvVert = null;
      this.u4StartDx = null;
      this.u4Width = null;
      this.u4ViewRangeStart = null;
      this.u4ViewRangeEnd = null;
      this.u4MeasuredVREnd = null;
      this.u4C0 = null;
      this.u4C1 = null;
      this.u4C2 = null;
      this.u4C3 = null;
      this.u2LaneChange = null;
      this.u1LaneId = null;
      this.u1Quality = null;
      this.u1Type = null;
      this.u1Color = null;
      this.u1LeftCrossing = null;
      this.u1RightCrossing = null;
    }
    else {
      if (initObj.hasOwnProperty('u8RoadId')) {
        this.u8RoadId = initObj.u8RoadId
      }
      else {
        this.u8RoadId = 0;
      }
      if (initObj.hasOwnProperty('curvVert')) {
        this.curvVert = initObj.curvVert
      }
      else {
        this.curvVert = 0.0;
      }
      if (initObj.hasOwnProperty('u4StartDx')) {
        this.u4StartDx = initObj.u4StartDx
      }
      else {
        this.u4StartDx = 0.0;
      }
      if (initObj.hasOwnProperty('u4Width')) {
        this.u4Width = initObj.u4Width
      }
      else {
        this.u4Width = 0.0;
      }
      if (initObj.hasOwnProperty('u4ViewRangeStart')) {
        this.u4ViewRangeStart = initObj.u4ViewRangeStart
      }
      else {
        this.u4ViewRangeStart = 0.0;
      }
      if (initObj.hasOwnProperty('u4ViewRangeEnd')) {
        this.u4ViewRangeEnd = initObj.u4ViewRangeEnd
      }
      else {
        this.u4ViewRangeEnd = 0.0;
      }
      if (initObj.hasOwnProperty('u4MeasuredVREnd')) {
        this.u4MeasuredVREnd = initObj.u4MeasuredVREnd
      }
      else {
        this.u4MeasuredVREnd = 0.0;
      }
      if (initObj.hasOwnProperty('u4C0')) {
        this.u4C0 = initObj.u4C0
      }
      else {
        this.u4C0 = 0.0;
      }
      if (initObj.hasOwnProperty('u4C1')) {
        this.u4C1 = initObj.u4C1
      }
      else {
        this.u4C1 = 0.0;
      }
      if (initObj.hasOwnProperty('u4C2')) {
        this.u4C2 = initObj.u4C2
      }
      else {
        this.u4C2 = 0.0;
      }
      if (initObj.hasOwnProperty('u4C3')) {
        this.u4C3 = initObj.u4C3
      }
      else {
        this.u4C3 = 0.0;
      }
      if (initObj.hasOwnProperty('u2LaneChange')) {
        this.u2LaneChange = initObj.u2LaneChange
      }
      else {
        this.u2LaneChange = 0;
      }
      if (initObj.hasOwnProperty('u1LaneId')) {
        this.u1LaneId = initObj.u1LaneId
      }
      else {
        this.u1LaneId = 0;
      }
      if (initObj.hasOwnProperty('u1Quality')) {
        this.u1Quality = initObj.u1Quality
      }
      else {
        this.u1Quality = 0;
      }
      if (initObj.hasOwnProperty('u1Type')) {
        this.u1Type = initObj.u1Type
      }
      else {
        this.u1Type = 0;
      }
      if (initObj.hasOwnProperty('u1Color')) {
        this.u1Color = initObj.u1Color
      }
      else {
        this.u1Color = 0;
      }
      if (initObj.hasOwnProperty('u1LeftCrossing')) {
        this.u1LeftCrossing = initObj.u1LeftCrossing
      }
      else {
        this.u1LeftCrossing = 0;
      }
      if (initObj.hasOwnProperty('u1RightCrossing')) {
        this.u1RightCrossing = initObj.u1RightCrossing
      }
      else {
        this.u1RightCrossing = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mil_roadmark
    // Serialize message field [u8RoadId]
    bufferOffset = _serializer.uint64(obj.u8RoadId, buffer, bufferOffset);
    // Serialize message field [curvVert]
    bufferOffset = _serializer.float64(obj.curvVert, buffer, bufferOffset);
    // Serialize message field [u4StartDx]
    bufferOffset = _serializer.float32(obj.u4StartDx, buffer, bufferOffset);
    // Serialize message field [u4Width]
    bufferOffset = _serializer.float32(obj.u4Width, buffer, bufferOffset);
    // Serialize message field [u4ViewRangeStart]
    bufferOffset = _serializer.float32(obj.u4ViewRangeStart, buffer, bufferOffset);
    // Serialize message field [u4ViewRangeEnd]
    bufferOffset = _serializer.float32(obj.u4ViewRangeEnd, buffer, bufferOffset);
    // Serialize message field [u4MeasuredVREnd]
    bufferOffset = _serializer.float32(obj.u4MeasuredVREnd, buffer, bufferOffset);
    // Serialize message field [u4C0]
    bufferOffset = _serializer.float32(obj.u4C0, buffer, bufferOffset);
    // Serialize message field [u4C1]
    bufferOffset = _serializer.float32(obj.u4C1, buffer, bufferOffset);
    // Serialize message field [u4C2]
    bufferOffset = _serializer.float32(obj.u4C2, buffer, bufferOffset);
    // Serialize message field [u4C3]
    bufferOffset = _serializer.float32(obj.u4C3, buffer, bufferOffset);
    // Serialize message field [u2LaneChange]
    bufferOffset = _serializer.uint16(obj.u2LaneChange, buffer, bufferOffset);
    // Serialize message field [u1LaneId]
    bufferOffset = _serializer.int8(obj.u1LaneId, buffer, bufferOffset);
    // Serialize message field [u1Quality]
    bufferOffset = _serializer.uint8(obj.u1Quality, buffer, bufferOffset);
    // Serialize message field [u1Type]
    bufferOffset = _serializer.uint8(obj.u1Type, buffer, bufferOffset);
    // Serialize message field [u1Color]
    bufferOffset = _serializer.uint8(obj.u1Color, buffer, bufferOffset);
    // Serialize message field [u1LeftCrossing]
    bufferOffset = _serializer.uint8(obj.u1LeftCrossing, buffer, bufferOffset);
    // Serialize message field [u1RightCrossing]
    bufferOffset = _serializer.uint8(obj.u1RightCrossing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mil_roadmark
    let len;
    let data = new mil_roadmark(null);
    // Deserialize message field [u8RoadId]
    data.u8RoadId = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [curvVert]
    data.curvVert = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u4StartDx]
    data.u4StartDx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4Width]
    data.u4Width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4ViewRangeStart]
    data.u4ViewRangeStart = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4ViewRangeEnd]
    data.u4ViewRangeEnd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4MeasuredVREnd]
    data.u4MeasuredVREnd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4C0]
    data.u4C0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4C1]
    data.u4C1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4C2]
    data.u4C2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u4C3]
    data.u4C3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u2LaneChange]
    data.u2LaneChange = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [u1LaneId]
    data.u1LaneId = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1Quality]
    data.u1Quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Type]
    data.u1Type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Color]
    data.u1Color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1LeftCrossing]
    data.u1LeftCrossing = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1RightCrossing]
    data.u1RightCrossing = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/mil_roadmark';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7aee4a86eef20d62dcd9e9c417a01ceb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     # /** ------ MIL测试车道线信息描述包 ------ */
    
    uint64  u8RoadId
    float64 curvVert
    float32 u4StartDx
    float32 u4Width
    float32 u4ViewRangeStart
    float32 u4ViewRangeEnd
    float32 u4MeasuredVREnd
    float32 u4C0
    float32 u4C1
    float32 u4C2
    float32 u4C3
    uint16  u2LaneChange
    int8    u1LaneId
    uint8   u1Quality
    uint8   u1Type
    uint8   u1Color
    uint8   u1LeftCrossing
    uint8   u1RightCrossing
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mil_roadmark(null);
    if (msg.u8RoadId !== undefined) {
      resolved.u8RoadId = msg.u8RoadId;
    }
    else {
      resolved.u8RoadId = 0
    }

    if (msg.curvVert !== undefined) {
      resolved.curvVert = msg.curvVert;
    }
    else {
      resolved.curvVert = 0.0
    }

    if (msg.u4StartDx !== undefined) {
      resolved.u4StartDx = msg.u4StartDx;
    }
    else {
      resolved.u4StartDx = 0.0
    }

    if (msg.u4Width !== undefined) {
      resolved.u4Width = msg.u4Width;
    }
    else {
      resolved.u4Width = 0.0
    }

    if (msg.u4ViewRangeStart !== undefined) {
      resolved.u4ViewRangeStart = msg.u4ViewRangeStart;
    }
    else {
      resolved.u4ViewRangeStart = 0.0
    }

    if (msg.u4ViewRangeEnd !== undefined) {
      resolved.u4ViewRangeEnd = msg.u4ViewRangeEnd;
    }
    else {
      resolved.u4ViewRangeEnd = 0.0
    }

    if (msg.u4MeasuredVREnd !== undefined) {
      resolved.u4MeasuredVREnd = msg.u4MeasuredVREnd;
    }
    else {
      resolved.u4MeasuredVREnd = 0.0
    }

    if (msg.u4C0 !== undefined) {
      resolved.u4C0 = msg.u4C0;
    }
    else {
      resolved.u4C0 = 0.0
    }

    if (msg.u4C1 !== undefined) {
      resolved.u4C1 = msg.u4C1;
    }
    else {
      resolved.u4C1 = 0.0
    }

    if (msg.u4C2 !== undefined) {
      resolved.u4C2 = msg.u4C2;
    }
    else {
      resolved.u4C2 = 0.0
    }

    if (msg.u4C3 !== undefined) {
      resolved.u4C3 = msg.u4C3;
    }
    else {
      resolved.u4C3 = 0.0
    }

    if (msg.u2LaneChange !== undefined) {
      resolved.u2LaneChange = msg.u2LaneChange;
    }
    else {
      resolved.u2LaneChange = 0
    }

    if (msg.u1LaneId !== undefined) {
      resolved.u1LaneId = msg.u1LaneId;
    }
    else {
      resolved.u1LaneId = 0
    }

    if (msg.u1Quality !== undefined) {
      resolved.u1Quality = msg.u1Quality;
    }
    else {
      resolved.u1Quality = 0
    }

    if (msg.u1Type !== undefined) {
      resolved.u1Type = msg.u1Type;
    }
    else {
      resolved.u1Type = 0
    }

    if (msg.u1Color !== undefined) {
      resolved.u1Color = msg.u1Color;
    }
    else {
      resolved.u1Color = 0
    }

    if (msg.u1LeftCrossing !== undefined) {
      resolved.u1LeftCrossing = msg.u1LeftCrossing;
    }
    else {
      resolved.u1LeftCrossing = 0
    }

    if (msg.u1RightCrossing !== undefined) {
      resolved.u1RightCrossing = msg.u1RightCrossing;
    }
    else {
      resolved.u1RightCrossing = 0
    }

    return resolved;
    }
};

module.exports = mil_roadmark;
