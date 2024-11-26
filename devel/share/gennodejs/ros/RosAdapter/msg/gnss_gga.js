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

class gnss_gga {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startChar = null;
      this.cmd = null;
      this.mTime = null;
      this.lat = null;
      this.NorS = null;
      this.lon = null;
      this.EorW = null;
      this.mode = null;
      this.count = null;
      this.horizonprecious = null;
      this.geoidalheight = null;
      this.meter1 = null;
      this.height = null;
      this.meter2 = null;
      this.dataage = null;
      this.basestationflag = null;
      this.sperator = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('startChar')) {
        this.startChar = initObj.startChar
      }
      else {
        this.startChar = 0;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = [];
      }
      if (initObj.hasOwnProperty('mTime')) {
        this.mTime = initObj.mTime
      }
      else {
        this.mTime = [];
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('NorS')) {
        this.NorS = initObj.NorS
      }
      else {
        this.NorS = 0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('EorW')) {
        this.EorW = initObj.EorW
      }
      else {
        this.EorW = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = [];
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('horizonprecious')) {
        this.horizonprecious = initObj.horizonprecious
      }
      else {
        this.horizonprecious = 0.0;
      }
      if (initObj.hasOwnProperty('geoidalheight')) {
        this.geoidalheight = initObj.geoidalheight
      }
      else {
        this.geoidalheight = 0.0;
      }
      if (initObj.hasOwnProperty('meter1')) {
        this.meter1 = initObj.meter1
      }
      else {
        this.meter1 = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('meter2')) {
        this.meter2 = initObj.meter2
      }
      else {
        this.meter2 = 0;
      }
      if (initObj.hasOwnProperty('dataage')) {
        this.dataage = initObj.dataage
      }
      else {
        this.dataage = 0.0;
      }
      if (initObj.hasOwnProperty('basestationflag')) {
        this.basestationflag = initObj.basestationflag
      }
      else {
        this.basestationflag = 0;
      }
      if (initObj.hasOwnProperty('sperator')) {
        this.sperator = initObj.sperator
      }
      else {
        this.sperator = 0;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gnss_gga
    // Serialize message field [startChar]
    bufferOffset = _serializer.uint8(obj.startChar, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _arraySerializer.uint8(obj.cmd, buffer, bufferOffset, null);
    // Serialize message field [mTime]
    bufferOffset = _arraySerializer.uint8(obj.mTime, buffer, bufferOffset, null);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [NorS]
    bufferOffset = _serializer.uint8(obj.NorS, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [EorW]
    bufferOffset = _serializer.uint8(obj.EorW, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.uint8(obj.mode, buffer, bufferOffset, null);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [horizonprecious]
    bufferOffset = _serializer.float64(obj.horizonprecious, buffer, bufferOffset);
    // Serialize message field [geoidalheight]
    bufferOffset = _serializer.float64(obj.geoidalheight, buffer, bufferOffset);
    // Serialize message field [meter1]
    bufferOffset = _serializer.uint8(obj.meter1, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [meter2]
    bufferOffset = _serializer.uint8(obj.meter2, buffer, bufferOffset);
    // Serialize message field [dataage]
    bufferOffset = _serializer.float64(obj.dataage, buffer, bufferOffset);
    // Serialize message field [basestationflag]
    bufferOffset = _serializer.int32(obj.basestationflag, buffer, bufferOffset);
    // Serialize message field [sperator]
    bufferOffset = _serializer.uint8(obj.sperator, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _arraySerializer.uint8(obj.checksum, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gnss_gga
    let len;
    let data = new gnss_gga(null);
    // Deserialize message field [startChar]
    data.startChar = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [mTime]
    data.mTime = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [NorS]
    data.NorS = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EorW]
    data.EorW = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horizonprecious]
    data.horizonprecious = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [geoidalheight]
    data.geoidalheight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [meter1]
    data.meter1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [meter2]
    data.meter2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dataage]
    data.dataage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [basestationflag]
    data.basestationflag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sperator]
    data.sperator = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd.length;
    length += object.mTime.length;
    length += object.mode.length;
    length += object.checksum.length;
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/gnss_gga';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f522481e07bd152c1ddc9897d588fb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8         startChar
    uint8[]       cmd
    uint8[]       mTime
    float64       lat
    uint8         NorS
    float64       lon
    uint8         EorW
    uint8[]       mode
    int32         count
    float64       horizonprecious 
    float64       geoidalheight
    uint8         meter1
    float64       height
    uint8         meter2
    float64       dataage
    int32         basestationflag
    uint8         sperator
    uint8[]       checksum
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gnss_gga(null);
    if (msg.startChar !== undefined) {
      resolved.startChar = msg.startChar;
    }
    else {
      resolved.startChar = 0
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = []
    }

    if (msg.mTime !== undefined) {
      resolved.mTime = msg.mTime;
    }
    else {
      resolved.mTime = []
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.NorS !== undefined) {
      resolved.NorS = msg.NorS;
    }
    else {
      resolved.NorS = 0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.EorW !== undefined) {
      resolved.EorW = msg.EorW;
    }
    else {
      resolved.EorW = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = []
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.horizonprecious !== undefined) {
      resolved.horizonprecious = msg.horizonprecious;
    }
    else {
      resolved.horizonprecious = 0.0
    }

    if (msg.geoidalheight !== undefined) {
      resolved.geoidalheight = msg.geoidalheight;
    }
    else {
      resolved.geoidalheight = 0.0
    }

    if (msg.meter1 !== undefined) {
      resolved.meter1 = msg.meter1;
    }
    else {
      resolved.meter1 = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.meter2 !== undefined) {
      resolved.meter2 = msg.meter2;
    }
    else {
      resolved.meter2 = 0
    }

    if (msg.dataage !== undefined) {
      resolved.dataage = msg.dataage;
    }
    else {
      resolved.dataage = 0.0
    }

    if (msg.basestationflag !== undefined) {
      resolved.basestationflag = msg.basestationflag;
    }
    else {
      resolved.basestationflag = 0
    }

    if (msg.sperator !== undefined) {
      resolved.sperator = msg.sperator;
    }
    else {
      resolved.sperator = 0
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = []
    }

    return resolved;
    }
};

module.exports = gnss_gga;
