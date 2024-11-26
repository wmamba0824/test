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
let lane_info = require('./lane_info.js');
let sensor_info = require('./sensor_info.js');
let sensor_detection_info = require('./sensor_detection_info.js');
let contact_point = require('./contact_point.js');
let traffic_sign = require('./traffic_sign.js');
let road_state = require('./road_state.js');
let environment = require('./environment.js');
let traffic_light = require('./traffic_light.js');
let road_query = require('./road_query.js');
let mil_ego_state = require('./mil_ego_state.js');
let mil_object_state = require('./mil_object_state.js');
let mil_roadmark = require('./mil_roadmark.js');
let init_param = require('./init_param.js');
let mil_amesim_signal = require('./mil_amesim_signal.js');
let activate_controller = require('./activate_controller.js');
let assign_controller = require('./assign_controller.js');
let override_controller = require('./override_controller.js');
let custom_command = require('./custom_command.js');
let parkingSpace = require('./parkingSpace.js');
let driver_ctrl = require('./driver_ctrl.js');
let sync = require('./sync.js');
let imu_data = require('./imu_data.js');
let gnss_gga = require('./gnss_gga.js');
let uwb_data = require('./uwb_data.js');
let model_outline = require('./model_outline.js');
let rsu_vnfp_info = require('./rsu_vnfp_info.js');

//-----------------------------------------------------------

class rosSimproToAD {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.laneInfos = null;
      this.sensorStates = null;
      this.sensorObjects = null;
      this.contactPoints = null;
      this.trafficSigns = null;
      this.roadStates = null;
      this.environments = null;
      this.trafficLights = null;
      this.roadQueries = null;
      this.egoStates = null;
      this.milObjStates = null;
      this.milRoadMarks = null;
      this.initParams = null;
      this.milAmesimSignals = null;
      this.activateControllers = null;
      this.assignControllers = null;
      this.overrideControllers = null;
      this.customCommands = null;
      this.parkingSpaces = null;
      this.driverCtrls = null;
      this.syncs = null;
      this.imuDatas = null;
      this.gnssGgaS = null;
      this.uwbDatas = null;
      this.modelOutlines = null;
      this.rsuVnfpInfo = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new header();
      }
      if (initObj.hasOwnProperty('laneInfos')) {
        this.laneInfos = initObj.laneInfos
      }
      else {
        this.laneInfos = [];
      }
      if (initObj.hasOwnProperty('sensorStates')) {
        this.sensorStates = initObj.sensorStates
      }
      else {
        this.sensorStates = [];
      }
      if (initObj.hasOwnProperty('sensorObjects')) {
        this.sensorObjects = initObj.sensorObjects
      }
      else {
        this.sensorObjects = [];
      }
      if (initObj.hasOwnProperty('contactPoints')) {
        this.contactPoints = initObj.contactPoints
      }
      else {
        this.contactPoints = [];
      }
      if (initObj.hasOwnProperty('trafficSigns')) {
        this.trafficSigns = initObj.trafficSigns
      }
      else {
        this.trafficSigns = [];
      }
      if (initObj.hasOwnProperty('roadStates')) {
        this.roadStates = initObj.roadStates
      }
      else {
        this.roadStates = [];
      }
      if (initObj.hasOwnProperty('environments')) {
        this.environments = initObj.environments
      }
      else {
        this.environments = [];
      }
      if (initObj.hasOwnProperty('trafficLights')) {
        this.trafficLights = initObj.trafficLights
      }
      else {
        this.trafficLights = [];
      }
      if (initObj.hasOwnProperty('roadQueries')) {
        this.roadQueries = initObj.roadQueries
      }
      else {
        this.roadQueries = [];
      }
      if (initObj.hasOwnProperty('egoStates')) {
        this.egoStates = initObj.egoStates
      }
      else {
        this.egoStates = [];
      }
      if (initObj.hasOwnProperty('milObjStates')) {
        this.milObjStates = initObj.milObjStates
      }
      else {
        this.milObjStates = [];
      }
      if (initObj.hasOwnProperty('milRoadMarks')) {
        this.milRoadMarks = initObj.milRoadMarks
      }
      else {
        this.milRoadMarks = [];
      }
      if (initObj.hasOwnProperty('initParams')) {
        this.initParams = initObj.initParams
      }
      else {
        this.initParams = [];
      }
      if (initObj.hasOwnProperty('milAmesimSignals')) {
        this.milAmesimSignals = initObj.milAmesimSignals
      }
      else {
        this.milAmesimSignals = [];
      }
      if (initObj.hasOwnProperty('activateControllers')) {
        this.activateControllers = initObj.activateControllers
      }
      else {
        this.activateControllers = [];
      }
      if (initObj.hasOwnProperty('assignControllers')) {
        this.assignControllers = initObj.assignControllers
      }
      else {
        this.assignControllers = [];
      }
      if (initObj.hasOwnProperty('overrideControllers')) {
        this.overrideControllers = initObj.overrideControllers
      }
      else {
        this.overrideControllers = [];
      }
      if (initObj.hasOwnProperty('customCommands')) {
        this.customCommands = initObj.customCommands
      }
      else {
        this.customCommands = [];
      }
      if (initObj.hasOwnProperty('parkingSpaces')) {
        this.parkingSpaces = initObj.parkingSpaces
      }
      else {
        this.parkingSpaces = [];
      }
      if (initObj.hasOwnProperty('driverCtrls')) {
        this.driverCtrls = initObj.driverCtrls
      }
      else {
        this.driverCtrls = [];
      }
      if (initObj.hasOwnProperty('syncs')) {
        this.syncs = initObj.syncs
      }
      else {
        this.syncs = [];
      }
      if (initObj.hasOwnProperty('imuDatas')) {
        this.imuDatas = initObj.imuDatas
      }
      else {
        this.imuDatas = [];
      }
      if (initObj.hasOwnProperty('gnssGgaS')) {
        this.gnssGgaS = initObj.gnssGgaS
      }
      else {
        this.gnssGgaS = [];
      }
      if (initObj.hasOwnProperty('uwbDatas')) {
        this.uwbDatas = initObj.uwbDatas
      }
      else {
        this.uwbDatas = [];
      }
      if (initObj.hasOwnProperty('modelOutlines')) {
        this.modelOutlines = initObj.modelOutlines
      }
      else {
        this.modelOutlines = [];
      }
      if (initObj.hasOwnProperty('rsuVnfpInfo')) {
        this.rsuVnfpInfo = initObj.rsuVnfpInfo
      }
      else {
        this.rsuVnfpInfo = new rsu_vnfp_info();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rosSimproToAD
    // Serialize message field [head]
    bufferOffset = header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [laneInfos]
    // Serialize the length for message field [laneInfos]
    bufferOffset = _serializer.uint32(obj.laneInfos.length, buffer, bufferOffset);
    obj.laneInfos.forEach((val) => {
      bufferOffset = lane_info.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensorStates]
    // Serialize the length for message field [sensorStates]
    bufferOffset = _serializer.uint32(obj.sensorStates.length, buffer, bufferOffset);
    obj.sensorStates.forEach((val) => {
      bufferOffset = sensor_info.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensorObjects]
    // Serialize the length for message field [sensorObjects]
    bufferOffset = _serializer.uint32(obj.sensorObjects.length, buffer, bufferOffset);
    obj.sensorObjects.forEach((val) => {
      bufferOffset = sensor_detection_info.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contactPoints]
    // Serialize the length for message field [contactPoints]
    bufferOffset = _serializer.uint32(obj.contactPoints.length, buffer, bufferOffset);
    obj.contactPoints.forEach((val) => {
      bufferOffset = contact_point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trafficSigns]
    // Serialize the length for message field [trafficSigns]
    bufferOffset = _serializer.uint32(obj.trafficSigns.length, buffer, bufferOffset);
    obj.trafficSigns.forEach((val) => {
      bufferOffset = traffic_sign.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [roadStates]
    // Serialize the length for message field [roadStates]
    bufferOffset = _serializer.uint32(obj.roadStates.length, buffer, bufferOffset);
    obj.roadStates.forEach((val) => {
      bufferOffset = road_state.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [environments]
    // Serialize the length for message field [environments]
    bufferOffset = _serializer.uint32(obj.environments.length, buffer, bufferOffset);
    obj.environments.forEach((val) => {
      bufferOffset = environment.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trafficLights]
    // Serialize the length for message field [trafficLights]
    bufferOffset = _serializer.uint32(obj.trafficLights.length, buffer, bufferOffset);
    obj.trafficLights.forEach((val) => {
      bufferOffset = traffic_light.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [roadQueries]
    // Serialize the length for message field [roadQueries]
    bufferOffset = _serializer.uint32(obj.roadQueries.length, buffer, bufferOffset);
    obj.roadQueries.forEach((val) => {
      bufferOffset = road_query.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [egoStates]
    // Serialize the length for message field [egoStates]
    bufferOffset = _serializer.uint32(obj.egoStates.length, buffer, bufferOffset);
    obj.egoStates.forEach((val) => {
      bufferOffset = mil_ego_state.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [milObjStates]
    // Serialize the length for message field [milObjStates]
    bufferOffset = _serializer.uint32(obj.milObjStates.length, buffer, bufferOffset);
    obj.milObjStates.forEach((val) => {
      bufferOffset = mil_object_state.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [milRoadMarks]
    // Serialize the length for message field [milRoadMarks]
    bufferOffset = _serializer.uint32(obj.milRoadMarks.length, buffer, bufferOffset);
    obj.milRoadMarks.forEach((val) => {
      bufferOffset = mil_roadmark.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [initParams]
    // Serialize the length for message field [initParams]
    bufferOffset = _serializer.uint32(obj.initParams.length, buffer, bufferOffset);
    obj.initParams.forEach((val) => {
      bufferOffset = init_param.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [milAmesimSignals]
    // Serialize the length for message field [milAmesimSignals]
    bufferOffset = _serializer.uint32(obj.milAmesimSignals.length, buffer, bufferOffset);
    obj.milAmesimSignals.forEach((val) => {
      bufferOffset = mil_amesim_signal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [activateControllers]
    // Serialize the length for message field [activateControllers]
    bufferOffset = _serializer.uint32(obj.activateControllers.length, buffer, bufferOffset);
    obj.activateControllers.forEach((val) => {
      bufferOffset = activate_controller.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [assignControllers]
    // Serialize the length for message field [assignControllers]
    bufferOffset = _serializer.uint32(obj.assignControllers.length, buffer, bufferOffset);
    obj.assignControllers.forEach((val) => {
      bufferOffset = assign_controller.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [overrideControllers]
    // Serialize the length for message field [overrideControllers]
    bufferOffset = _serializer.uint32(obj.overrideControllers.length, buffer, bufferOffset);
    obj.overrideControllers.forEach((val) => {
      bufferOffset = override_controller.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [customCommands]
    // Serialize the length for message field [customCommands]
    bufferOffset = _serializer.uint32(obj.customCommands.length, buffer, bufferOffset);
    obj.customCommands.forEach((val) => {
      bufferOffset = custom_command.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parkingSpaces]
    // Serialize the length for message field [parkingSpaces]
    bufferOffset = _serializer.uint32(obj.parkingSpaces.length, buffer, bufferOffset);
    obj.parkingSpaces.forEach((val) => {
      bufferOffset = parkingSpace.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [driverCtrls]
    // Serialize the length for message field [driverCtrls]
    bufferOffset = _serializer.uint32(obj.driverCtrls.length, buffer, bufferOffset);
    obj.driverCtrls.forEach((val) => {
      bufferOffset = driver_ctrl.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [syncs]
    // Serialize the length for message field [syncs]
    bufferOffset = _serializer.uint32(obj.syncs.length, buffer, bufferOffset);
    obj.syncs.forEach((val) => {
      bufferOffset = sync.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [imuDatas]
    // Serialize the length for message field [imuDatas]
    bufferOffset = _serializer.uint32(obj.imuDatas.length, buffer, bufferOffset);
    obj.imuDatas.forEach((val) => {
      bufferOffset = imu_data.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gnssGgaS]
    // Serialize the length for message field [gnssGgaS]
    bufferOffset = _serializer.uint32(obj.gnssGgaS.length, buffer, bufferOffset);
    obj.gnssGgaS.forEach((val) => {
      bufferOffset = gnss_gga.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [uwbDatas]
    // Serialize the length for message field [uwbDatas]
    bufferOffset = _serializer.uint32(obj.uwbDatas.length, buffer, bufferOffset);
    obj.uwbDatas.forEach((val) => {
      bufferOffset = uwb_data.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [modelOutlines]
    // Serialize the length for message field [modelOutlines]
    bufferOffset = _serializer.uint32(obj.modelOutlines.length, buffer, bufferOffset);
    obj.modelOutlines.forEach((val) => {
      bufferOffset = model_outline.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rsuVnfpInfo]
    bufferOffset = rsu_vnfp_info.serialize(obj.rsuVnfpInfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rosSimproToAD
    let len;
    let data = new rosSimproToAD(null);
    // Deserialize message field [head]
    data.head = header.deserialize(buffer, bufferOffset);
    // Deserialize message field [laneInfos]
    // Deserialize array length for message field [laneInfos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.laneInfos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.laneInfos[i] = lane_info.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensorStates]
    // Deserialize array length for message field [sensorStates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensorStates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensorStates[i] = sensor_info.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensorObjects]
    // Deserialize array length for message field [sensorObjects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensorObjects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensorObjects[i] = sensor_detection_info.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contactPoints]
    // Deserialize array length for message field [contactPoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contactPoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contactPoints[i] = contact_point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trafficSigns]
    // Deserialize array length for message field [trafficSigns]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trafficSigns = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trafficSigns[i] = traffic_sign.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [roadStates]
    // Deserialize array length for message field [roadStates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.roadStates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.roadStates[i] = road_state.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [environments]
    // Deserialize array length for message field [environments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.environments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.environments[i] = environment.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trafficLights]
    // Deserialize array length for message field [trafficLights]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trafficLights = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trafficLights[i] = traffic_light.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [roadQueries]
    // Deserialize array length for message field [roadQueries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.roadQueries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.roadQueries[i] = road_query.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [egoStates]
    // Deserialize array length for message field [egoStates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.egoStates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.egoStates[i] = mil_ego_state.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [milObjStates]
    // Deserialize array length for message field [milObjStates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.milObjStates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.milObjStates[i] = mil_object_state.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [milRoadMarks]
    // Deserialize array length for message field [milRoadMarks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.milRoadMarks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.milRoadMarks[i] = mil_roadmark.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [initParams]
    // Deserialize array length for message field [initParams]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.initParams = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.initParams[i] = init_param.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [milAmesimSignals]
    // Deserialize array length for message field [milAmesimSignals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.milAmesimSignals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.milAmesimSignals[i] = mil_amesim_signal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [activateControllers]
    // Deserialize array length for message field [activateControllers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.activateControllers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.activateControllers[i] = activate_controller.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [assignControllers]
    // Deserialize array length for message field [assignControllers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.assignControllers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.assignControllers[i] = assign_controller.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [overrideControllers]
    // Deserialize array length for message field [overrideControllers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.overrideControllers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.overrideControllers[i] = override_controller.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [customCommands]
    // Deserialize array length for message field [customCommands]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.customCommands = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.customCommands[i] = custom_command.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parkingSpaces]
    // Deserialize array length for message field [parkingSpaces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parkingSpaces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parkingSpaces[i] = parkingSpace.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [driverCtrls]
    // Deserialize array length for message field [driverCtrls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.driverCtrls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.driverCtrls[i] = driver_ctrl.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [syncs]
    // Deserialize array length for message field [syncs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.syncs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.syncs[i] = sync.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [imuDatas]
    // Deserialize array length for message field [imuDatas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.imuDatas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.imuDatas[i] = imu_data.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gnssGgaS]
    // Deserialize array length for message field [gnssGgaS]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gnssGgaS = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gnssGgaS[i] = gnss_gga.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [uwbDatas]
    // Deserialize array length for message field [uwbDatas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uwbDatas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uwbDatas[i] = uwb_data.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [modelOutlines]
    // Deserialize array length for message field [modelOutlines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.modelOutlines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.modelOutlines[i] = model_outline.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rsuVnfpInfo]
    data.rsuVnfpInfo = rsu_vnfp_info.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 22 * object.laneInfos.length;
    object.sensorStates.forEach((val) => {
      length += sensor_info.getMessageSize(val);
    });
    object.sensorObjects.forEach((val) => {
      length += sensor_detection_info.getMessageSize(val);
    });
    length += 39 * object.contactPoints.length;
    object.trafficSigns.forEach((val) => {
      length += traffic_sign.getMessageSize(val);
    });
    length += 24 * object.roadStates.length;
    length += 43 * object.environments.length;
    object.trafficLights.forEach((val) => {
      length += traffic_light.getMessageSize(val);
    });
    length += 10 * object.roadQueries.length;
    object.egoStates.forEach((val) => {
      length += mil_ego_state.getMessageSize(val);
    });
    object.milObjStates.forEach((val) => {
      length += mil_object_state.getMessageSize(val);
    });
    length += 60 * object.milRoadMarks.length;
    object.initParams.forEach((val) => {
      length += init_param.getMessageSize(val);
    });
    length += 57 * object.milAmesimSignals.length;
    length += 6 * object.activateControllers.length;
    object.assignControllers.forEach((val) => {
      length += assign_controller.getMessageSize(val);
    });
    length += 58 * object.overrideControllers.length;
    object.customCommands.forEach((val) => {
      length += custom_command.getMessageSize(val);
    });
    length += 77 * object.parkingSpaces.length;
    length += 296 * object.driverCtrls.length;
    length += 8 * object.syncs.length;
    length += 49 * object.imuDatas.length;
    object.gnssGgaS.forEach((val) => {
      length += gnss_gga.getMessageSize(val);
    });
    length += 25 * object.uwbDatas.length;
    object.modelOutlines.forEach((val) => {
      length += model_outline.getMessageSize(val);
    });
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RosAdapter/rosSimproToAD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c51422c0a9306e26c68900e995989ad4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # simpro发送给AD的数据
    header                         head
    lane_info[]                    laneInfos
    sensor_info[]                  sensorStates
    sensor_detection_info[]        sensorObjects
    contact_point[]                contactPoints
    traffic_sign[]                 trafficSigns
    road_state[]                   roadStates
    environment[]                  environments
    traffic_light[]                trafficLights
    road_query[]                   roadQueries
    mil_ego_state[]                egoStates
    mil_object_state[]             milObjStates
    mil_roadmark[]                 milRoadMarks
    init_param[]                   initParams
    mil_amesim_signal[]            milAmesimSignals
    activate_controller[]          activateControllers
    assign_controller[]            assignControllers
    override_controller[]          overrideControllers
    custom_command[]               customCommands
    parkingSpace[]                 parkingSpaces
    driver_ctrl[]                  driverCtrls
    sync[]                         syncs   
    imu_data[]                     imuDatas     
    gnss_gga[]                     gnssGgaS
    uwb_data[]                     uwbDatas
    model_outline[]                modelOutlines
    rsu_vnfp_info                  rsuVnfpInfo
    ================================================================================
    MSG: RosAdapter/header
    # /** ------ Msg header ------ */
    float64 u8SimTime
    uint32  u4HeaderSize
    uint32  u4DataSize
    uint32  u4FrameNo
    ================================================================================
    MSG: RosAdapter/lane_info
    # /** ------ 车道信息 ------ */
    uint64   u8RoadId
    uint32   u4ObjectId
    float32  u4Width
    uint16   u2Type
    int8     u1Id
    uint8    u1NeighborMask
    int8     u1LeftLaneId
    int8     u1RightLaneId
    ================================================================================
    MSG: RosAdapter/sensor_info
    # /** ------ 传感器定义和状态 ------ */
    coord      sPos
    coord      sOriginCoordSys
    string     au1Name
    uint32     u8HostId
    uint32     u8Id
    float32[]  au4FovHV
    float32[]  au4ClipNF
    float32[]  au4FovOffHV
    uint8      u1Type                   
    uint8      u1ModelType
    float64	   u4IdealFreq
    uint32	   u4ResL
    uint32     u4ResV
    float64	   u4SenSizeL
    float64	   u4SenSizeW
    float64	   u4LenFd
    float64	   u4DistCenL
    float64	   u4DistCenW
    float64	   u4DistParK1
    float64	   u4DistParK2
    
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
    MSG: RosAdapter/sensor_detection_info
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
    ================================================================================
    MSG: RosAdapter/contact_point
    # /** ------ 接触点信息 ------ */
    coord  sRoadDataIn
    uint16 u2Id
    ================================================================================
    MSG: RosAdapter/traffic_sign
    # /** ------ 交通标志信息 ------ */
    string  au1Type
    coord   sPos
    uint32  u4TrafficSignId
    uint32  u4ObjectId
    string  au1SubType
    float32 u4RoadDist
    float32 u4Value
    int8    u1MinLane
    int8    u1MaxLane
    ================================================================================
    MSG: RosAdapter/road_state
    #/** ------ 车辆对应的道路状态 ------ */
    uint64  u8RoadId
    uint32  u4ObjectId
    float32 u4DefaultSpeed
    float32 u4WaterLevel
    float32 u4DistToJunc
    ================================================================================
    MSG: RosAdapter/environment
    # /** ------ 环境信息 ------ */
    float64      u8RainIntensity
    float64      u8SnowIntensity
    float64      u8FogIntensity
    float64      u8FogVisualRange
    uint32       u4TimeOfDay
    int16        u2TimeZoneMinutesWest
    uint16       u2Year
    uint8        u1CloudState
    uint8        u1Day
    uint8        u1Month
    ================================================================================
    MSG: RosAdapter/traffic_light
    # /** ------ 交通灯信息 ------ */
    int32                    u4Id
    int32                    u4CtrlId
    uint32                   u4NoPhases
    uint32                   u4DataSize
    float32                  u4State
    float32                  u4CycleTime
    traffic_light_phase[]    phases
    ================================================================================
    MSG: RosAdapter/traffic_light_phase
    # /** ------ 交通灯相位信息 ------ */
    
    float32     u4Duration
    uint8       u1Status   
    ================================================================================
    MSG: RosAdapter/road_query
    # /** ------ 查询道路点 ------ */
    float32 u8X
    float32 u8Y
    uint16  u2Id
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
    MSG: RosAdapter/geometry
    # /** ------ 几何信息 ------ */
    float32 u4DimX
    float32 u4DimY
    float32 u4DimZ
    float32 u4OffX
    float32 u4OffY
    float32 u4OffZ
    ================================================================================
    MSG: RosAdapter/mil_object_state
    # /** ------ MIL测试环境车、行人、障碍物信息 ------ */
    object_state           sObjectState
    mil_object_state_base  sMilBase
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
    ================================================================================
    MSG: RosAdapter/mil_roadmark
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
    ================================================================================
    MSG: RosAdapter/init_param
    # /** ------ 初始化参数 ------ */
    
    string             au1OpenScenario
    string             au1OpenDrive
    uint64             u8StartRoadId
    uint64             u8EndRoadId
    float32            u4StartRoadS
    float32            u4EndRoadS
    float32            u4Speed
    uint16             u2ScenarioId
    int8               u1StartLaneId
    int8               u1EndLaneId
    ================================================================================
    MSG: RosAdapter/mil_amesim_signal
    # /** ------ MIL AMESim 测试信息描述包 ------ */
    
    float32       u4LeftLen
    float32       u4NextLen
    float32       u4NextAgeSpeed
    float32       u4NextMinSpeed
    float32       u4NextMaxSpeed
    float32       u4NextGradient
    float32       u4NextCongest
    uint8         u1RoadType
    float32       u4DisLimit
    bool          u1IsFarAwayLimit
    float32       u4LimitSpeed
    bool          ulIsJunction
    float32       u4DisJunction
    bool          ulIsFarAwayJunc
    uint8         ultrafficLightStat
    float32       u4Curvity
    float32       u4RelativeVel
    float32       u4RelativeDis
    ================================================================================
    MSG: RosAdapter/activate_controller
    # /** ------激活控制器 ------ */
    
    uint32          u4ObjectId
    bool            u1Lateral
    bool            u1Longitudinal
    ================================================================================
    MSG: RosAdapter/assign_controller
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
    ================================================================================
    MSG: RosAdapter/override_controller
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
    ================================================================================
    MSG: RosAdapter/custom_command
    # /** ------自定义指令 ------ */
    
    string   au1Type
    string   au1Command
    uint32   u4ObjectId
    ================================================================================
    MSG: RosAdapter/parkingSpace
    #/** ------ 停车位信息 ------ */
    geometry  sGeo
    coord     sPos
    float32   u4RoadS
    float32   u4RoadT
    uint64    u8SlotId
    
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
    MSG: RosAdapter/sync
    # /** ------ 同步信号 ------ */
    uint32 u4CmdMask
    uint32 u4UserData
    ================================================================================
    MSG: RosAdapter/imu_data
    uint8         msgcnt
    float64       u8X
    float64       u8Y
    float64       u8Z
    float64       yaw
    float64       pitch
    float64       roll
    ================================================================================
    MSG: RosAdapter/gnss_gga
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
    ================================================================================
    MSG: RosAdapter/uwb_data
    uint8         msgcnt
    float64       u8x
    float64       u8y
    float64       u8z
    ================================================================================
    MSG: RosAdapter/model_outline
    string                au1ModelName
    double_array[]        au8OutlinePoints    
    ================================================================================
    MSG: RosAdapter/double_array
    float64[]  data
    ================================================================================
    MSG: RosAdapter/rsu_vnfp_info
    uint32    type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rosSimproToAD(null);
    if (msg.head !== undefined) {
      resolved.head = header.Resolve(msg.head)
    }
    else {
      resolved.head = new header()
    }

    if (msg.laneInfos !== undefined) {
      resolved.laneInfos = new Array(msg.laneInfos.length);
      for (let i = 0; i < resolved.laneInfos.length; ++i) {
        resolved.laneInfos[i] = lane_info.Resolve(msg.laneInfos[i]);
      }
    }
    else {
      resolved.laneInfos = []
    }

    if (msg.sensorStates !== undefined) {
      resolved.sensorStates = new Array(msg.sensorStates.length);
      for (let i = 0; i < resolved.sensorStates.length; ++i) {
        resolved.sensorStates[i] = sensor_info.Resolve(msg.sensorStates[i]);
      }
    }
    else {
      resolved.sensorStates = []
    }

    if (msg.sensorObjects !== undefined) {
      resolved.sensorObjects = new Array(msg.sensorObjects.length);
      for (let i = 0; i < resolved.sensorObjects.length; ++i) {
        resolved.sensorObjects[i] = sensor_detection_info.Resolve(msg.sensorObjects[i]);
      }
    }
    else {
      resolved.sensorObjects = []
    }

    if (msg.contactPoints !== undefined) {
      resolved.contactPoints = new Array(msg.contactPoints.length);
      for (let i = 0; i < resolved.contactPoints.length; ++i) {
        resolved.contactPoints[i] = contact_point.Resolve(msg.contactPoints[i]);
      }
    }
    else {
      resolved.contactPoints = []
    }

    if (msg.trafficSigns !== undefined) {
      resolved.trafficSigns = new Array(msg.trafficSigns.length);
      for (let i = 0; i < resolved.trafficSigns.length; ++i) {
        resolved.trafficSigns[i] = traffic_sign.Resolve(msg.trafficSigns[i]);
      }
    }
    else {
      resolved.trafficSigns = []
    }

    if (msg.roadStates !== undefined) {
      resolved.roadStates = new Array(msg.roadStates.length);
      for (let i = 0; i < resolved.roadStates.length; ++i) {
        resolved.roadStates[i] = road_state.Resolve(msg.roadStates[i]);
      }
    }
    else {
      resolved.roadStates = []
    }

    if (msg.environments !== undefined) {
      resolved.environments = new Array(msg.environments.length);
      for (let i = 0; i < resolved.environments.length; ++i) {
        resolved.environments[i] = environment.Resolve(msg.environments[i]);
      }
    }
    else {
      resolved.environments = []
    }

    if (msg.trafficLights !== undefined) {
      resolved.trafficLights = new Array(msg.trafficLights.length);
      for (let i = 0; i < resolved.trafficLights.length; ++i) {
        resolved.trafficLights[i] = traffic_light.Resolve(msg.trafficLights[i]);
      }
    }
    else {
      resolved.trafficLights = []
    }

    if (msg.roadQueries !== undefined) {
      resolved.roadQueries = new Array(msg.roadQueries.length);
      for (let i = 0; i < resolved.roadQueries.length; ++i) {
        resolved.roadQueries[i] = road_query.Resolve(msg.roadQueries[i]);
      }
    }
    else {
      resolved.roadQueries = []
    }

    if (msg.egoStates !== undefined) {
      resolved.egoStates = new Array(msg.egoStates.length);
      for (let i = 0; i < resolved.egoStates.length; ++i) {
        resolved.egoStates[i] = mil_ego_state.Resolve(msg.egoStates[i]);
      }
    }
    else {
      resolved.egoStates = []
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

    if (msg.milRoadMarks !== undefined) {
      resolved.milRoadMarks = new Array(msg.milRoadMarks.length);
      for (let i = 0; i < resolved.milRoadMarks.length; ++i) {
        resolved.milRoadMarks[i] = mil_roadmark.Resolve(msg.milRoadMarks[i]);
      }
    }
    else {
      resolved.milRoadMarks = []
    }

    if (msg.initParams !== undefined) {
      resolved.initParams = new Array(msg.initParams.length);
      for (let i = 0; i < resolved.initParams.length; ++i) {
        resolved.initParams[i] = init_param.Resolve(msg.initParams[i]);
      }
    }
    else {
      resolved.initParams = []
    }

    if (msg.milAmesimSignals !== undefined) {
      resolved.milAmesimSignals = new Array(msg.milAmesimSignals.length);
      for (let i = 0; i < resolved.milAmesimSignals.length; ++i) {
        resolved.milAmesimSignals[i] = mil_amesim_signal.Resolve(msg.milAmesimSignals[i]);
      }
    }
    else {
      resolved.milAmesimSignals = []
    }

    if (msg.activateControllers !== undefined) {
      resolved.activateControllers = new Array(msg.activateControllers.length);
      for (let i = 0; i < resolved.activateControllers.length; ++i) {
        resolved.activateControllers[i] = activate_controller.Resolve(msg.activateControllers[i]);
      }
    }
    else {
      resolved.activateControllers = []
    }

    if (msg.assignControllers !== undefined) {
      resolved.assignControllers = new Array(msg.assignControllers.length);
      for (let i = 0; i < resolved.assignControllers.length; ++i) {
        resolved.assignControllers[i] = assign_controller.Resolve(msg.assignControllers[i]);
      }
    }
    else {
      resolved.assignControllers = []
    }

    if (msg.overrideControllers !== undefined) {
      resolved.overrideControllers = new Array(msg.overrideControllers.length);
      for (let i = 0; i < resolved.overrideControllers.length; ++i) {
        resolved.overrideControllers[i] = override_controller.Resolve(msg.overrideControllers[i]);
      }
    }
    else {
      resolved.overrideControllers = []
    }

    if (msg.customCommands !== undefined) {
      resolved.customCommands = new Array(msg.customCommands.length);
      for (let i = 0; i < resolved.customCommands.length; ++i) {
        resolved.customCommands[i] = custom_command.Resolve(msg.customCommands[i]);
      }
    }
    else {
      resolved.customCommands = []
    }

    if (msg.parkingSpaces !== undefined) {
      resolved.parkingSpaces = new Array(msg.parkingSpaces.length);
      for (let i = 0; i < resolved.parkingSpaces.length; ++i) {
        resolved.parkingSpaces[i] = parkingSpace.Resolve(msg.parkingSpaces[i]);
      }
    }
    else {
      resolved.parkingSpaces = []
    }

    if (msg.driverCtrls !== undefined) {
      resolved.driverCtrls = new Array(msg.driverCtrls.length);
      for (let i = 0; i < resolved.driverCtrls.length; ++i) {
        resolved.driverCtrls[i] = driver_ctrl.Resolve(msg.driverCtrls[i]);
      }
    }
    else {
      resolved.driverCtrls = []
    }

    if (msg.syncs !== undefined) {
      resolved.syncs = new Array(msg.syncs.length);
      for (let i = 0; i < resolved.syncs.length; ++i) {
        resolved.syncs[i] = sync.Resolve(msg.syncs[i]);
      }
    }
    else {
      resolved.syncs = []
    }

    if (msg.imuDatas !== undefined) {
      resolved.imuDatas = new Array(msg.imuDatas.length);
      for (let i = 0; i < resolved.imuDatas.length; ++i) {
        resolved.imuDatas[i] = imu_data.Resolve(msg.imuDatas[i]);
      }
    }
    else {
      resolved.imuDatas = []
    }

    if (msg.gnssGgaS !== undefined) {
      resolved.gnssGgaS = new Array(msg.gnssGgaS.length);
      for (let i = 0; i < resolved.gnssGgaS.length; ++i) {
        resolved.gnssGgaS[i] = gnss_gga.Resolve(msg.gnssGgaS[i]);
      }
    }
    else {
      resolved.gnssGgaS = []
    }

    if (msg.uwbDatas !== undefined) {
      resolved.uwbDatas = new Array(msg.uwbDatas.length);
      for (let i = 0; i < resolved.uwbDatas.length; ++i) {
        resolved.uwbDatas[i] = uwb_data.Resolve(msg.uwbDatas[i]);
      }
    }
    else {
      resolved.uwbDatas = []
    }

    if (msg.modelOutlines !== undefined) {
      resolved.modelOutlines = new Array(msg.modelOutlines.length);
      for (let i = 0; i < resolved.modelOutlines.length; ++i) {
        resolved.modelOutlines[i] = model_outline.Resolve(msg.modelOutlines[i]);
      }
    }
    else {
      resolved.modelOutlines = []
    }

    if (msg.rsuVnfpInfo !== undefined) {
      resolved.rsuVnfpInfo = rsu_vnfp_info.Resolve(msg.rsuVnfpInfo)
    }
    else {
      resolved.rsuVnfpInfo = new rsu_vnfp_info()
    }

    return resolved;
    }
};

module.exports = rosSimproToAD;
