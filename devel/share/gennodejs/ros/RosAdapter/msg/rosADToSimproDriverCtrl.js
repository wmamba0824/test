// Auto-generated. Do not edit!

// (in-package RosAdapter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let header = require('./header.js');
let driver_ctrl = require('./driver_ctrl.js');
let mil_ego_state = require('./mil_ego_state.js');
let csv_data = require('./csv_data.js');
let v2x_warninginformation = require('./v2x_warninginformation.js');
let obu_vnfp_info = require('./obu_vnfp_info.js');
let ad_signal_data = require('./ad_signal_data.js');
let ttc_control = require('./ttc_control.js');

//-----------------------------------------------------------

class rosADToSimproDriverCtrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.driverCtrl = null;
      this.egoState = null;
      this.csvData = null;
      this.v2xWarning = null;
      this.obuVnfpInfo = null;
      this.adSignalDatas = null;
      this.ttcControl = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new header();
      }
      if (initObj.hasOwnProperty('driverCtrl')) {
        this.driverCtrl = initObj.driverCtrl
      }
      else {
        this.driverCtrl = new driver_ctrl();
      }
      if (initObj.hasOwnProperty('egoState')) {
        this.egoState = initObj.egoState
      }
      else {
        this.egoState = new mil_ego_state();
      }
      if (initObj.hasOwnProperty('csvData')) {
        this.csvData = initObj.csvData
      }
      else {
        this.csvData = new csv_data();
      }
      if (initObj.hasOwnProperty('v2xWarning')) {
        this.v2xWarning = initObj.v2xWarning
      }
      else {
        this.v2xWarning = new v2x_warninginformation();
      }
      if (initObj.hasOwnProperty('obuVnfpInfo')) {
        this.obuVnfpInfo = initObj.obuVnfpInfo
      }
      else {
        this.obuVnfpInfo = new obu_vnfp_info();
      }
      if (initObj.hasOwnProperty('adSignalDatas')) {
        this.adSignalDatas = initObj.adSignalDatas
      }
      else {
        this.adSignalDatas = new ad_signal_data();
      }
      if (initObj.hasOwnProperty('ttcControl')) {
        this.ttcControl = initObj.ttcControl
      }
      else {
        this.ttcControl = new ttc_control();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rosADToSimproDriverCtrl
    // Serialize message field [head]
    bufferOffset = header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [driverCtrl]
    bufferOffset = driver_ctrl.serialize(obj.driverCtrl, buffer, bufferOffset);
    // Serialize message field [egoState]
    bufferOffset = mil_ego_state.serialize(obj.egoState, buffer, bufferOffset);
    // Serialize message field [csvData]
    bufferOffset = csv_data.serialize(obj.csvData, buffer, bufferOffset);
    // Serialize message field [v2xWarning]
    bufferOffset = v2x_warninginformation.serialize(obj.v2xWarning, buffer, bufferOffset);
    // Serialize message field [obuVnfpInfo]
    bufferOffset = obu_vnfp_info.serialize(obj.obuVnfpInfo, buffer, bufferOffset);
    // Serialize message field [adSignalDatas]
    bufferOffset = ad_signal_data.serialize(obj.adSignalDatas, buffer, bufferOffset);
    // Serialize message field [ttcControl]
    bufferOffset = ttc_control.serialize(obj.ttcControl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rosADToSimproDriverCtrl
    let len;
    let data = new rosADToSimproDriverCtrl(null);
    // Deserialize message field [head]
    data.head = header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driverCtrl]
    data.driverCtrl = driver_ctrl.deserialize(buffer, bufferOffset);
    // Deserialize message field [egoState]
    data.egoState = mil_ego_state.deserialize(buffer, bufferOffset);
    // Deserialize message field [csvData]
    data.csvData = csv_data.deserialize(buffer, bufferOffset);
    // Deserialize message field [v2xWarning]
    data.v2xWarning = v2x_warninginformation.deserialize(buffer, bufferOffset);
    // Deserialize message field [obuVnfpInfo]
    data.obuVnfpInfo = obu_vnfp_info.deserialize(buffer, bufferOffset);
    // Deserialize message field [adSignalDatas]
    data.adSignalDatas = ad_signal_data.deserialize(buffer, bufferOffset);
    // Deserialize message field [ttcControl]
    data.ttcControl = ttc_control.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mil_ego_state.getMessageSize(object.egoState);
    length += ad_signal_data.getMessageSize(object.adSignalDatas);
    return length + 340;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/rosADToSimproDriverCtrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7665be9ba648b35520d49a30fcb2afed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    header                            head
    driver_ctrl                       driverCtrl
    mil_ego_state                     egoState
    csv_data                          csvData
    v2x_warninginformation            v2xWarning
    obu_vnfp_info                     obuVnfpInfo
    ad_signal_data                    adSignalDatas
    ttc_control                       ttcControl
    ================================================================================
    MSG: RosAdapter/header
    # /** ------ Msg header ------ */
    float64 u8SimTime
    uint32  u4HeaderSize
    uint32  u4DataSize
    uint32  u4FrameNo
    ================================================================================
    MSG: RosAdapter/driver_ctrl
    # /** ------ 驾驶员控制输入的信息 ------ */
    
    uint32       u4ObjectId
    float32      u4MtWheel
    float64      u8MasterCylinderPressure
    float64      u8SteeringWheel
    float64      u8ThrottlePedal
    float64      u8BrakePedal
    float64      u8AccelTgt
    float64      u8SteeringTorque
    float64      u8StopDistance
    float64      u8TargetSpeed
    float64      u8Vx
    float64      u8Wr
    float64      u8VLFWheelSpd
    float64      u8VRFWheelSpd
    float64      u8VLRWheelSpd
    float64      u8VRRWheelSpd
    float64      u8Ax
    float64      u8Ay
    float64      u8SteeringWheelAngularRate
    float64      u8DrvTorqAct
    float64      u8Xmc
    float64      u8Ymc
    float64      u8YawThetaVehicle
    float64      u8PitchThetaVehicle
    float64      u8RollThetaVehicle
    float64      u8PitchRateVehicle
    float64      u8RollRateVehicle
    float64      u8SinSlopeout
    float64      u8VehicleCurv
    float64      u8TmotorCmd
    float64      u8Tmotor
    float64      u8EnergySourceLevel
    float64      u8WLFWheelSpd
    float64      u8WRFWheelSpd
    float64      u8WLRWheelSpd
    float64      u8WRRWheelSpd
    float64      u8WGearSpd
    uint8        u1LFWheelRotatedDir
    uint8        u1LRWheelRotatedDir
    uint8        u1RFWheelRotatedDir
    uint8        u1RRWheelRotatedDir
    uint8        u1BrakePedalStatus
    uint8        u1VehicleDir
    uint8        u1BrkType
    int8         u1Gear 
    ================================================================================
    MSG: RosAdapter/mil_ego_state
    # /** ------ MIL测试主车信息描述包 ------ */
    
    object_state   sObjectState
    float64        u4initSpeed
    float64        u8DistRoadEnd
    uint32         u4LightMask               
    float32        u4WheelSpeedFL
    float32        u4WheelSpeedFR
    float32        u4WheelSpeedRL
    float32        u4WheelSpeedRR
    float32        u4MasterCylinderPressure
    float32        u4WheelHeightLF
    float32        u4WheelHeightLR
    float32        u4WheelHeightRF
    float32        u4WheelHeightRR
    float32        u4SteerAngle
    uint8          u1objQuantity
    uint8          u1irc_id
    uint8          u1irc_left_id
    uint8          u1irc_right_id
    uint8          u1cipv_id
    uint8          u1lmc_id
    uint8          u1rmc_id
    uint8          u1isReachInitSpeed
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
    MSG: RosAdapter/csv_data
    # /** ------ AD发送给simpro的CSV数据 ------ */
    
    float32  u4AccelTgt
    float32  u4SteeringWheel
    uint32   u4ADStatus
    ================================================================================
    MSG: RosAdapter/v2x_warninginformation
    # /** ------ V2X 告警信息 ------ */
    
    uint32 u4Type
    ================================================================================
    MSG: RosAdapter/obu_vnfp_info
    uint32   type
    ================================================================================
    MSG: RosAdapter/ad_signal_data
    string      au1SignalName
    float64     u8SignalValue
    ================================================================================
    MSG: RosAdapter/ttc_control
    uint32  u4Status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rosADToSimproDriverCtrl(null);
    if (msg.head !== undefined) {
      resolved.head = header.Resolve(msg.head)
    }
    else {
      resolved.head = new header()
    }

    if (msg.driverCtrl !== undefined) {
      resolved.driverCtrl = driver_ctrl.Resolve(msg.driverCtrl)
    }
    else {
      resolved.driverCtrl = new driver_ctrl()
    }

    if (msg.egoState !== undefined) {
      resolved.egoState = mil_ego_state.Resolve(msg.egoState)
    }
    else {
      resolved.egoState = new mil_ego_state()
    }

    if (msg.csvData !== undefined) {
      resolved.csvData = csv_data.Resolve(msg.csvData)
    }
    else {
      resolved.csvData = new csv_data()
    }

    if (msg.v2xWarning !== undefined) {
      resolved.v2xWarning = v2x_warninginformation.Resolve(msg.v2xWarning)
    }
    else {
      resolved.v2xWarning = new v2x_warninginformation()
    }

    if (msg.obuVnfpInfo !== undefined) {
      resolved.obuVnfpInfo = obu_vnfp_info.Resolve(msg.obuVnfpInfo)
    }
    else {
      resolved.obuVnfpInfo = new obu_vnfp_info()
    }

    if (msg.adSignalDatas !== undefined) {
      resolved.adSignalDatas = ad_signal_data.Resolve(msg.adSignalDatas)
    }
    else {
      resolved.adSignalDatas = new ad_signal_data()
    }

    if (msg.ttcControl !== undefined) {
      resolved.ttcControl = ttc_control.Resolve(msg.ttcControl)
    }
    else {
      resolved.ttcControl = new ttc_control()
    }

    return resolved;
    }
};

module.exports = rosADToSimproDriverCtrl;
