// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mil_object_state = require('./mil_object_state.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LocalObsPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local_pose = null;
      this.milObjStates = null;
    }
    else {
      if (initObj.hasOwnProperty('local_pose')) {
        this.local_pose = initObj.local_pose
      }
      else {
        this.local_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('milObjStates')) {
        this.milObjStates = initObj.milObjStates
      }
      else {
        this.milObjStates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalObsPose
    // Serialize message field [local_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.local_pose, buffer, bufferOffset);
    // Serialize message field [milObjStates]
    // Serialize the length for message field [milObjStates]
    bufferOffset = _serializer.uint32(obj.milObjStates.length, buffer, bufferOffset);
    obj.milObjStates.forEach((val) => {
      bufferOffset = mil_object_state.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalObsPose
    let len;
    let data = new LocalObsPose(null);
    // Deserialize message field [local_pose]
    data.local_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [milObjStates]
    // Deserialize array length for message field [milObjStates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.milObjStates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.milObjStates[i] = mil_object_state.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.local_pose);
    object.milObjStates.forEach((val) => {
      length += mil_object_state.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/LocalObsPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fffebcc9c1d1377772720009d7127435';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 自定义信息 主车位姿和传感器监测物体所有信息
    
    geometry_msgs/PoseStamped       local_pose      #主车位置姿态
    mil_object_state[]              milObjStates    #障碍物位置姿态, simpro接口提供 
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: RosAdapter/mil_object_state
    # /** ------ MIL测试环境车、行人、障碍物信息 ------ */
    object_state           sObjectState
    mil_object_state_base  sMilBase
    ================================================================================
    MSG: RosAdapter/object_state
    # /** ------ 对象信息 ------ */
    coord           sSpeed
    coord           sAccel
    geometry        sGeo
    coord           sPos
    string          au1Name
    string          au1ModelFileName
    string          au1ModelName
    float64[]       au8ParamScale
    uint64          u8RoadId
    float64         u8SpeedLimit
    uint32          u4Id
    float32         u4RoadS
    float32         u4RoadT
    float32         u4HdgRel
    float32         u4LaneOffset
    float32         u4TraveledDist
    uint16          u2visMask
    uint8           u1Type
    int8            u1LaneId
    uint8           u1Dir
    bool            u1IsOnRoad
    uint8           u1category
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
    MSG: RosAdapter/geometry
    # /** ------ 几何信息 ------ */
    float32 u4DimX
    float32 u4DimY
    float32 u4DimZ
    float32 u4OffX
    float32 u4OffY
    float32 u4OffZ
    ================================================================================
    MSG: RosAdapter/mil_object_state_base
    #/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */
    
    uint32     u4LightMask
    float32    u4DistanceX
    float32    u4DistanceY
    float32    u4VelocityX
    float32    u4VelocityY
    float32    u4AccelerationX
    float32    u4AccelerationY
    float32    u4YawRate
    float32    u4Dist
    float32    u4Angle
    uint8      u1ObjClass
    uint8      u1Flag_detected
    uint8      u1Movable
    uint8      u1Moving
    uint8      u1Obj_Age
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalObsPose(null);
    if (msg.local_pose !== undefined) {
      resolved.local_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.local_pose)
    }
    else {
      resolved.local_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.milObjStates !== undefined) {
      resolved.milObjStates = new Array(msg.milObjStates.length);
      for (let i = 0; i < resolved.milObjStates.length; ++i) {
        resolved.milObjStates[i] = mil_object_state.Resolve(msg.milObjStates[i]);
      }
    }
    else {
      resolved.milObjStates = []
    }

    return resolved;
    }
};

module.exports = LocalObsPose;
