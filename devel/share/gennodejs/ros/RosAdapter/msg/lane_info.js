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

class lane_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u8RoadId = null;
      this.u4ObjectId = null;
      this.u4Width = null;
      this.u2Type = null;
      this.u1Id = null;
      this.u1NeighborMask = null;
      this.u1LeftLaneId = null;
      this.u1RightLaneId = null;
    }
    else {
      if (initObj.hasOwnProperty('u8RoadId')) {
        this.u8RoadId = initObj.u8RoadId
      }
      else {
        this.u8RoadId = 0;
      }
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('u4Width')) {
        this.u4Width = initObj.u4Width
      }
      else {
        this.u4Width = 0.0;
      }
      if (initObj.hasOwnProperty('u2Type')) {
        this.u2Type = initObj.u2Type
      }
      else {
        this.u2Type = 0;
      }
      if (initObj.hasOwnProperty('u1Id')) {
        this.u1Id = initObj.u1Id
      }
      else {
        this.u1Id = 0;
      }
      if (initObj.hasOwnProperty('u1NeighborMask')) {
        this.u1NeighborMask = initObj.u1NeighborMask
      }
      else {
        this.u1NeighborMask = 0;
      }
      if (initObj.hasOwnProperty('u1LeftLaneId')) {
        this.u1LeftLaneId = initObj.u1LeftLaneId
      }
      else {
        this.u1LeftLaneId = 0;
      }
      if (initObj.hasOwnProperty('u1RightLaneId')) {
        this.u1RightLaneId = initObj.u1RightLaneId
      }
      else {
        this.u1RightLaneId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lane_info
    // Serialize message field [u8RoadId]
    bufferOffset = _serializer.uint64(obj.u8RoadId, buffer, bufferOffset);
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [u4Width]
    bufferOffset = _serializer.float32(obj.u4Width, buffer, bufferOffset);
    // Serialize message field [u2Type]
    bufferOffset = _serializer.uint16(obj.u2Type, buffer, bufferOffset);
    // Serialize message field [u1Id]
    bufferOffset = _serializer.int8(obj.u1Id, buffer, bufferOffset);
    // Serialize message field [u1NeighborMask]
    bufferOffset = _serializer.uint8(obj.u1NeighborMask, buffer, bufferOffset);
    // Serialize message field [u1LeftLaneId]
    bufferOffset = _serializer.int8(obj.u1LeftLaneId, buffer, bufferOffset);
    // Serialize message field [u1RightLaneId]
    bufferOffset = _serializer.int8(obj.u1RightLaneId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lane_info
    let len;
    let data = new lane_info(null);
    // Deserialize message field [u8RoadId]
    data.u8RoadId = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4Width]
    data.u4Width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u2Type]
    data.u2Type = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [u1Id]
    data.u1Id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1NeighborMask]
    data.u1NeighborMask = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1LeftLaneId]
    data.u1LeftLaneId = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1RightLaneId]
    data.u1RightLaneId = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/lane_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '956c49218f476e72e0ba077080aff039';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------ 车道信息 ------ */
    uint64   u8RoadId
    uint32   u4ObjectId
    float32  u4Width
    uint16   u2Type
    int8     u1Id
    uint8    u1NeighborMask
    int8     u1LeftLaneId
    int8     u1RightLaneId
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lane_info(null);
    if (msg.u8RoadId !== undefined) {
      resolved.u8RoadId = msg.u8RoadId;
    }
    else {
      resolved.u8RoadId = 0
    }

    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.u4Width !== undefined) {
      resolved.u4Width = msg.u4Width;
    }
    else {
      resolved.u4Width = 0.0
    }

    if (msg.u2Type !== undefined) {
      resolved.u2Type = msg.u2Type;
    }
    else {
      resolved.u2Type = 0
    }

    if (msg.u1Id !== undefined) {
      resolved.u1Id = msg.u1Id;
    }
    else {
      resolved.u1Id = 0
    }

    if (msg.u1NeighborMask !== undefined) {
      resolved.u1NeighborMask = msg.u1NeighborMask;
    }
    else {
      resolved.u1NeighborMask = 0
    }

    if (msg.u1LeftLaneId !== undefined) {
      resolved.u1LeftLaneId = msg.u1LeftLaneId;
    }
    else {
      resolved.u1LeftLaneId = 0
    }

    if (msg.u1RightLaneId !== undefined) {
      resolved.u1RightLaneId = msg.u1RightLaneId;
    }
    else {
      resolved.u1RightLaneId = 0
    }

    return resolved;
    }
};

module.exports = lane_info;
