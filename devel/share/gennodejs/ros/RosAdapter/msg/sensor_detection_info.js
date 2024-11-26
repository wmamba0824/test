// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let object_uion = require('./object_uion.js');

//-----------------------------------------------------------

class sensor_detection_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u4Id = null;
      this.u4SensorId = null;
      this.u2Flags = null;
      this.u1Type = null;
      this.u1Occlusion = null;
      this.u1DeltaLanePos = null;
      this.u1ValidFlag = null;
      this.u8ExistProb = null;
      this.u8TypeIdProb = null;
      this.sExtraInfo = null;
    }
    else {
      if (initObj.hasOwnProperty('u4Id')) {
        this.u4Id = initObj.u4Id
      }
      else {
        this.u4Id = 0;
      }
      if (initObj.hasOwnProperty('u4SensorId')) {
        this.u4SensorId = initObj.u4SensorId
      }
      else {
        this.u4SensorId = 0;
      }
      if (initObj.hasOwnProperty('u2Flags')) {
        this.u2Flags = initObj.u2Flags
      }
      else {
        this.u2Flags = 0;
      }
      if (initObj.hasOwnProperty('u1Type')) {
        this.u1Type = initObj.u1Type
      }
      else {
        this.u1Type = 0;
      }
      if (initObj.hasOwnProperty('u1Occlusion')) {
        this.u1Occlusion = initObj.u1Occlusion
      }
      else {
        this.u1Occlusion = 0;
      }
      if (initObj.hasOwnProperty('u1DeltaLanePos')) {
        this.u1DeltaLanePos = initObj.u1DeltaLanePos
      }
      else {
        this.u1DeltaLanePos = 0;
      }
      if (initObj.hasOwnProperty('u1ValidFlag')) {
        this.u1ValidFlag = initObj.u1ValidFlag
      }
      else {
        this.u1ValidFlag = 0;
      }
      if (initObj.hasOwnProperty('u8ExistProb')) {
        this.u8ExistProb = initObj.u8ExistProb
      }
      else {
        this.u8ExistProb = 0.0;
      }
      if (initObj.hasOwnProperty('u8TypeIdProb')) {
        this.u8TypeIdProb = initObj.u8TypeIdProb
      }
      else {
        this.u8TypeIdProb = 0.0;
      }
      if (initObj.hasOwnProperty('sExtraInfo')) {
        this.sExtraInfo = initObj.sExtraInfo
      }
      else {
        this.sExtraInfo = new object_uion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensor_detection_info
    // Serialize message field [u4Id]
    bufferOffset = _serializer.uint32(obj.u4Id, buffer, bufferOffset);
    // Serialize message field [u4SensorId]
    bufferOffset = _serializer.uint32(obj.u4SensorId, buffer, bufferOffset);
    // Serialize message field [u2Flags]
    bufferOffset = _serializer.uint16(obj.u2Flags, buffer, bufferOffset);
    // Serialize message field [u1Type]
    bufferOffset = _serializer.uint8(obj.u1Type, buffer, bufferOffset);
    // Serialize message field [u1Occlusion]
    bufferOffset = _serializer.int8(obj.u1Occlusion, buffer, bufferOffset);
    // Serialize message field [u1DeltaLanePos]
    bufferOffset = _serializer.int8(obj.u1DeltaLanePos, buffer, bufferOffset);
    // Serialize message field [u1ValidFlag]
    bufferOffset = _serializer.uint8(obj.u1ValidFlag, buffer, bufferOffset);
    // Serialize message field [u8ExistProb]
    bufferOffset = _serializer.float64(obj.u8ExistProb, buffer, bufferOffset);
    // Serialize message field [u8TypeIdProb]
    bufferOffset = _serializer.float64(obj.u8TypeIdProb, buffer, bufferOffset);
    // Serialize message field [sExtraInfo]
    bufferOffset = object_uion.serialize(obj.sExtraInfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensor_detection_info
    let len;
    let data = new sensor_detection_info(null);
    // Deserialize message field [u4Id]
    data.u4Id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4SensorId]
    data.u4SensorId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u2Flags]
    data.u2Flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [u1Type]
    data.u1Type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u1Occlusion]
    data.u1Occlusion = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1DeltaLanePos]
    data.u1DeltaLanePos = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [u1ValidFlag]
    data.u1ValidFlag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u8ExistProb]
    data.u8ExistProb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u8TypeIdProb]
    data.u8TypeIdProb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sExtraInfo]
    data.sExtraInfo = object_uion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object_uion.getMessageSize(object.sExtraInfo);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/sensor_detection_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c1cb322c1ecab3b195230dfd2011618';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 传感器监测物体所有信息
    
    uint32            u4Id
    uint32            u4SensorId
    uint16            u2Flags
    uint8             u1Type
    int8              u1Occlusion
    int8              u1DeltaLanePos
    uint8             u1ValidFlag
    float64           u8ExistProb
    float64           u8TypeIdProb
    object_uion       sExtraInfo
    ================================================================================
    MSG: RosAdapter/object_uion
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
    const resolved = new sensor_detection_info(null);
    if (msg.u4Id !== undefined) {
      resolved.u4Id = msg.u4Id;
    }
    else {
      resolved.u4Id = 0
    }

    if (msg.u4SensorId !== undefined) {
      resolved.u4SensorId = msg.u4SensorId;
    }
    else {
      resolved.u4SensorId = 0
    }

    if (msg.u2Flags !== undefined) {
      resolved.u2Flags = msg.u2Flags;
    }
    else {
      resolved.u2Flags = 0
    }

    if (msg.u1Type !== undefined) {
      resolved.u1Type = msg.u1Type;
    }
    else {
      resolved.u1Type = 0
    }

    if (msg.u1Occlusion !== undefined) {
      resolved.u1Occlusion = msg.u1Occlusion;
    }
    else {
      resolved.u1Occlusion = 0
    }

    if (msg.u1DeltaLanePos !== undefined) {
      resolved.u1DeltaLanePos = msg.u1DeltaLanePos;
    }
    else {
      resolved.u1DeltaLanePos = 0
    }

    if (msg.u1ValidFlag !== undefined) {
      resolved.u1ValidFlag = msg.u1ValidFlag;
    }
    else {
      resolved.u1ValidFlag = 0
    }

    if (msg.u8ExistProb !== undefined) {
      resolved.u8ExistProb = msg.u8ExistProb;
    }
    else {
      resolved.u8ExistProb = 0.0
    }

    if (msg.u8TypeIdProb !== undefined) {
      resolved.u8TypeIdProb = msg.u8TypeIdProb;
    }
    else {
      resolved.u8TypeIdProb = 0.0
    }

    if (msg.sExtraInfo !== undefined) {
      resolved.sExtraInfo = object_uion.Resolve(msg.sExtraInfo)
    }
    else {
      resolved.sExtraInfo = new object_uion()
    }

    return resolved;
    }
};

module.exports = sensor_detection_info;
