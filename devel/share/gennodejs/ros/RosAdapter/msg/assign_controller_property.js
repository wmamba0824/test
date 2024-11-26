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

class assign_controller_property {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.au1Name = null;
      this.au1Value = null;
    }
    else {
      if (initObj.hasOwnProperty('au1Name')) {
        this.au1Name = initObj.au1Name
      }
      else {
        this.au1Name = '';
      }
      if (initObj.hasOwnProperty('au1Value')) {
        this.au1Value = initObj.au1Value
      }
      else {
        this.au1Value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type assign_controller_property
    // Serialize message field [au1Name]
    bufferOffset = _serializer.string(obj.au1Name, buffer, bufferOffset);
    // Serialize message field [au1Value]
    bufferOffset = _serializer.string(obj.au1Value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type assign_controller_property
    let len;
    let data = new assign_controller_property(null);
    // Deserialize message field [au1Name]
    data.au1Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [au1Value]
    data.au1Value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.au1Name);
    length += _getByteLength(object.au1Value);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/assign_controller_property';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c8abeff0815c54344be4ebcd153b4cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new assign_controller_property(null);
    if (msg.au1Name !== undefined) {
      resolved.au1Name = msg.au1Name;
    }
    else {
      resolved.au1Name = ''
    }

    if (msg.au1Value !== undefined) {
      resolved.au1Value = msg.au1Value;
    }
    else {
      resolved.au1Value = ''
    }

    return resolved;
    }
};

module.exports = assign_controller_property;
