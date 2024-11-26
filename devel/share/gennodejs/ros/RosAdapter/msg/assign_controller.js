// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let assign_controller_property = require('./assign_controller_property.js');

//-----------------------------------------------------------

class assign_controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1ControllerName = null;
      this.u4ObjectId = null;
      this.u4PropertyNum = null;
      this.properties = null;
    }
    else {
      if (initObj.hasOwnProperty('au1ControllerName')) {
        this.au1ControllerName = initObj.au1ControllerName
      }
      else {
        this.au1ControllerName = '';
      }
      if (initObj.hasOwnProperty('u4ObjectId')) {
        this.u4ObjectId = initObj.u4ObjectId
      }
      else {
        this.u4ObjectId = 0;
      }
      if (initObj.hasOwnProperty('u4PropertyNum')) {
        this.u4PropertyNum = initObj.u4PropertyNum
      }
      else {
        this.u4PropertyNum = 0;
      }
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type assign_controller
    // Serialize message field [au1ControllerName]
    bufferOffset = _serializer.string(obj.au1ControllerName, buffer, bufferOffset);
    // Serialize message field [u4ObjectId]
    bufferOffset = _serializer.uint32(obj.u4ObjectId, buffer, bufferOffset);
    // Serialize message field [u4PropertyNum]
    bufferOffset = _serializer.uint32(obj.u4PropertyNum, buffer, bufferOffset);
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = assign_controller_property.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type assign_controller
    let len;
    let data = new assign_controller(null);
    // Deserialize message field [au1ControllerName]
    data.au1ControllerName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [u4ObjectId]
    data.u4ObjectId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [u4PropertyNum]
    data.u4PropertyNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [properties]
    // Deserialize array length for message field [properties]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.properties = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.properties[i] = assign_controller_property.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1ControllerName);
    object.properties.forEach((val) => {
      length += assign_controller_property.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/assign_controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b69f794058ba5b23b8c59db3ddbf21fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /** ------分配控制器 ------ */
    
    string                               au1ControllerName
    uint32                               u4ObjectId
    uint32                               u4PropertyNum
    assign_controller_property[]         properties
    ================================================================================
    MSG: RosAdapter/assign_controller_property
    # /** ------分配控制器的属性信息 ------ */
    
    string   au1Name
    string   au1Value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new assign_controller(null);
    if (msg.au1ControllerName !== undefined) {
      resolved.au1ControllerName = msg.au1ControllerName;
    }
    else {
      resolved.au1ControllerName = ''
    }

    if (msg.u4ObjectId !== undefined) {
      resolved.u4ObjectId = msg.u4ObjectId;
    }
    else {
      resolved.u4ObjectId = 0
    }

    if (msg.u4PropertyNum !== undefined) {
      resolved.u4PropertyNum = msg.u4PropertyNum;
    }
    else {
      resolved.u4PropertyNum = 0
    }

    if (msg.properties !== undefined) {
      resolved.properties = new Array(msg.properties.length);
      for (let i = 0; i < resolved.properties.length; ++i) {
        resolved.properties[i] = assign_controller_property.Resolve(msg.properties[i]);
      }
    }
    else {
      resolved.properties = []
    }

    return resolved;
    }
};

module.exports = assign_controller;
