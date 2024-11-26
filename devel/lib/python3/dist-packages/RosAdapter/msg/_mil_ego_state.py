# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/mil_ego_state.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import RosAdapter.msg

class mil_ego_state(genpy.Message):
  _md5sum = "163aed62265e04fd2e9211889cc3cfd3"
  _type = "RosAdapter/mil_ego_state"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------ MIL测试主车信息描述包 ------ */

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
float32 u4OffZ"""
  __slots__ = ['sObjectState','u4initSpeed','u8DistRoadEnd','u4LightMask','u4WheelSpeedFL','u4WheelSpeedFR','u4WheelSpeedRL','u4WheelSpeedRR','u4MasterCylinderPressure','u4WheelHeightLF','u4WheelHeightLR','u4WheelHeightRF','u4WheelHeightRR','u4SteerAngle','u1objQuantity','u1irc_id','u1irc_left_id','u1irc_right_id','u1cipv_id','u1lmc_id','u1rmc_id','u1isReachInitSpeed']
  _slot_types = ['RosAdapter/object_state','float64','float64','uint32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sObjectState,u4initSpeed,u8DistRoadEnd,u4LightMask,u4WheelSpeedFL,u4WheelSpeedFR,u4WheelSpeedRL,u4WheelSpeedRR,u4MasterCylinderPressure,u4WheelHeightLF,u4WheelHeightLR,u4WheelHeightRF,u4WheelHeightRR,u4SteerAngle,u1objQuantity,u1irc_id,u1irc_left_id,u1irc_right_id,u1cipv_id,u1lmc_id,u1rmc_id,u1isReachInitSpeed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(mil_ego_state, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.sObjectState is None:
        self.sObjectState = RosAdapter.msg.object_state()
      if self.u4initSpeed is None:
        self.u4initSpeed = 0.
      if self.u8DistRoadEnd is None:
        self.u8DistRoadEnd = 0.
      if self.u4LightMask is None:
        self.u4LightMask = 0
      if self.u4WheelSpeedFL is None:
        self.u4WheelSpeedFL = 0.
      if self.u4WheelSpeedFR is None:
        self.u4WheelSpeedFR = 0.
      if self.u4WheelSpeedRL is None:
        self.u4WheelSpeedRL = 0.
      if self.u4WheelSpeedRR is None:
        self.u4WheelSpeedRR = 0.
      if self.u4MasterCylinderPressure is None:
        self.u4MasterCylinderPressure = 0.
      if self.u4WheelHeightLF is None:
        self.u4WheelHeightLF = 0.
      if self.u4WheelHeightLR is None:
        self.u4WheelHeightLR = 0.
      if self.u4WheelHeightRF is None:
        self.u4WheelHeightRF = 0.
      if self.u4WheelHeightRR is None:
        self.u4WheelHeightRR = 0.
      if self.u4SteerAngle is None:
        self.u4SteerAngle = 0.
      if self.u1objQuantity is None:
        self.u1objQuantity = 0
      if self.u1irc_id is None:
        self.u1irc_id = 0
      if self.u1irc_left_id is None:
        self.u1irc_left_id = 0
      if self.u1irc_right_id is None:
        self.u1irc_right_id = 0
      if self.u1cipv_id is None:
        self.u1cipv_id = 0
      if self.u1lmc_id is None:
        self.u1lmc_id = 0
      if self.u1rmc_id is None:
        self.u1rmc_id = 0
      if self.u1isReachInitSpeed is None:
        self.u1isReachInitSpeed = 0
    else:
      self.sObjectState = RosAdapter.msg.object_state()
      self.u4initSpeed = 0.
      self.u8DistRoadEnd = 0.
      self.u4LightMask = 0
      self.u4WheelSpeedFL = 0.
      self.u4WheelSpeedFR = 0.
      self.u4WheelSpeedRL = 0.
      self.u4WheelSpeedRR = 0.
      self.u4MasterCylinderPressure = 0.
      self.u4WheelHeightLF = 0.
      self.u4WheelHeightLR = 0.
      self.u4WheelHeightRF = 0.
      self.u4WheelHeightRR = 0.
      self.u4SteerAngle = 0.
      self.u1objQuantity = 0
      self.u1irc_id = 0
      self.u1irc_left_id = 0
      self.u1irc_right_id = 0
      self.u1cipv_id = 0
      self.u1lmc_id = 0
      self.u1rmc_id = 0
      self.u1isReachInitSpeed = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3d3fB3d3fB6f3d3fB().pack(_x.sObjectState.sSpeed.u8X, _x.sObjectState.sSpeed.u8Y, _x.sObjectState.sSpeed.u8Z, _x.sObjectState.sSpeed.u4H, _x.sObjectState.sSpeed.u4P, _x.sObjectState.sSpeed.u4R, _x.sObjectState.sSpeed.u1Type, _x.sObjectState.sAccel.u8X, _x.sObjectState.sAccel.u8Y, _x.sObjectState.sAccel.u8Z, _x.sObjectState.sAccel.u4H, _x.sObjectState.sAccel.u4P, _x.sObjectState.sAccel.u4R, _x.sObjectState.sAccel.u1Type, _x.sObjectState.sGeo.u4DimX, _x.sObjectState.sGeo.u4DimY, _x.sObjectState.sGeo.u4DimZ, _x.sObjectState.sGeo.u4OffX, _x.sObjectState.sGeo.u4OffY, _x.sObjectState.sGeo.u4OffZ, _x.sObjectState.sPos.u8X, _x.sObjectState.sPos.u8Y, _x.sObjectState.sPos.u8Z, _x.sObjectState.sPos.u4H, _x.sObjectState.sPos.u4P, _x.sObjectState.sPos.u4R, _x.sObjectState.sPos.u1Type))
      _x = self.sObjectState.au1Name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sObjectState.au1ModelFileName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sObjectState.au1ModelName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.sObjectState.au8ParamScale)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.sObjectState.au8ParamScale))
      _x = self
      buff.write(_get_struct_QdI5fHBb3B2dI10f8B().pack(_x.sObjectState.u8RoadId, _x.sObjectState.u8SpeedLimit, _x.sObjectState.u4Id, _x.sObjectState.u4RoadS, _x.sObjectState.u4RoadT, _x.sObjectState.u4HdgRel, _x.sObjectState.u4LaneOffset, _x.sObjectState.u4TraveledDist, _x.sObjectState.u2visMask, _x.sObjectState.u1Type, _x.sObjectState.u1LaneId, _x.sObjectState.u1Dir, _x.sObjectState.u1IsOnRoad, _x.sObjectState.u1category, _x.u4initSpeed, _x.u8DistRoadEnd, _x.u4LightMask, _x.u4WheelSpeedFL, _x.u4WheelSpeedFR, _x.u4WheelSpeedRL, _x.u4WheelSpeedRR, _x.u4MasterCylinderPressure, _x.u4WheelHeightLF, _x.u4WheelHeightLR, _x.u4WheelHeightRF, _x.u4WheelHeightRR, _x.u4SteerAngle, _x.u1objQuantity, _x.u1irc_id, _x.u1irc_left_id, _x.u1irc_right_id, _x.u1cipv_id, _x.u1lmc_id, _x.u1rmc_id, _x.u1isReachInitSpeed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.sObjectState is None:
        self.sObjectState = RosAdapter.msg.object_state()
      end = 0
      _x = self
      start = end
      end += 135
      (_x.sObjectState.sSpeed.u8X, _x.sObjectState.sSpeed.u8Y, _x.sObjectState.sSpeed.u8Z, _x.sObjectState.sSpeed.u4H, _x.sObjectState.sSpeed.u4P, _x.sObjectState.sSpeed.u4R, _x.sObjectState.sSpeed.u1Type, _x.sObjectState.sAccel.u8X, _x.sObjectState.sAccel.u8Y, _x.sObjectState.sAccel.u8Z, _x.sObjectState.sAccel.u4H, _x.sObjectState.sAccel.u4P, _x.sObjectState.sAccel.u4R, _x.sObjectState.sAccel.u1Type, _x.sObjectState.sGeo.u4DimX, _x.sObjectState.sGeo.u4DimY, _x.sObjectState.sGeo.u4DimZ, _x.sObjectState.sGeo.u4OffX, _x.sObjectState.sGeo.u4OffY, _x.sObjectState.sGeo.u4OffZ, _x.sObjectState.sPos.u8X, _x.sObjectState.sPos.u8Y, _x.sObjectState.sPos.u8Z, _x.sObjectState.sPos.u4H, _x.sObjectState.sPos.u4P, _x.sObjectState.sPos.u4R, _x.sObjectState.sPos.u1Type,) = _get_struct_3d3fB3d3fB6f3d3fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sObjectState.au1Name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sObjectState.au1Name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sObjectState.au1ModelFileName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sObjectState.au1ModelFileName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sObjectState.au1ModelName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sObjectState.au1ModelName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.sObjectState.au8ParamScale = s.unpack(str[start:end])
      _x = self
      start = end
      end += 115
      (_x.sObjectState.u8RoadId, _x.sObjectState.u8SpeedLimit, _x.sObjectState.u4Id, _x.sObjectState.u4RoadS, _x.sObjectState.u4RoadT, _x.sObjectState.u4HdgRel, _x.sObjectState.u4LaneOffset, _x.sObjectState.u4TraveledDist, _x.sObjectState.u2visMask, _x.sObjectState.u1Type, _x.sObjectState.u1LaneId, _x.sObjectState.u1Dir, _x.sObjectState.u1IsOnRoad, _x.sObjectState.u1category, _x.u4initSpeed, _x.u8DistRoadEnd, _x.u4LightMask, _x.u4WheelSpeedFL, _x.u4WheelSpeedFR, _x.u4WheelSpeedRL, _x.u4WheelSpeedRR, _x.u4MasterCylinderPressure, _x.u4WheelHeightLF, _x.u4WheelHeightLR, _x.u4WheelHeightRF, _x.u4WheelHeightRR, _x.u4SteerAngle, _x.u1objQuantity, _x.u1irc_id, _x.u1irc_left_id, _x.u1irc_right_id, _x.u1cipv_id, _x.u1lmc_id, _x.u1rmc_id, _x.u1isReachInitSpeed,) = _get_struct_QdI5fHBb3B2dI10f8B().unpack(str[start:end])
      self.sObjectState.u1IsOnRoad = bool(self.sObjectState.u1IsOnRoad)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3d3fB3d3fB6f3d3fB().pack(_x.sObjectState.sSpeed.u8X, _x.sObjectState.sSpeed.u8Y, _x.sObjectState.sSpeed.u8Z, _x.sObjectState.sSpeed.u4H, _x.sObjectState.sSpeed.u4P, _x.sObjectState.sSpeed.u4R, _x.sObjectState.sSpeed.u1Type, _x.sObjectState.sAccel.u8X, _x.sObjectState.sAccel.u8Y, _x.sObjectState.sAccel.u8Z, _x.sObjectState.sAccel.u4H, _x.sObjectState.sAccel.u4P, _x.sObjectState.sAccel.u4R, _x.sObjectState.sAccel.u1Type, _x.sObjectState.sGeo.u4DimX, _x.sObjectState.sGeo.u4DimY, _x.sObjectState.sGeo.u4DimZ, _x.sObjectState.sGeo.u4OffX, _x.sObjectState.sGeo.u4OffY, _x.sObjectState.sGeo.u4OffZ, _x.sObjectState.sPos.u8X, _x.sObjectState.sPos.u8Y, _x.sObjectState.sPos.u8Z, _x.sObjectState.sPos.u4H, _x.sObjectState.sPos.u4P, _x.sObjectState.sPos.u4R, _x.sObjectState.sPos.u1Type))
      _x = self.sObjectState.au1Name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sObjectState.au1ModelFileName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sObjectState.au1ModelName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.sObjectState.au8ParamScale)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.sObjectState.au8ParamScale.tostring())
      _x = self
      buff.write(_get_struct_QdI5fHBb3B2dI10f8B().pack(_x.sObjectState.u8RoadId, _x.sObjectState.u8SpeedLimit, _x.sObjectState.u4Id, _x.sObjectState.u4RoadS, _x.sObjectState.u4RoadT, _x.sObjectState.u4HdgRel, _x.sObjectState.u4LaneOffset, _x.sObjectState.u4TraveledDist, _x.sObjectState.u2visMask, _x.sObjectState.u1Type, _x.sObjectState.u1LaneId, _x.sObjectState.u1Dir, _x.sObjectState.u1IsOnRoad, _x.sObjectState.u1category, _x.u4initSpeed, _x.u8DistRoadEnd, _x.u4LightMask, _x.u4WheelSpeedFL, _x.u4WheelSpeedFR, _x.u4WheelSpeedRL, _x.u4WheelSpeedRR, _x.u4MasterCylinderPressure, _x.u4WheelHeightLF, _x.u4WheelHeightLR, _x.u4WheelHeightRF, _x.u4WheelHeightRR, _x.u4SteerAngle, _x.u1objQuantity, _x.u1irc_id, _x.u1irc_left_id, _x.u1irc_right_id, _x.u1cipv_id, _x.u1lmc_id, _x.u1rmc_id, _x.u1isReachInitSpeed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.sObjectState is None:
        self.sObjectState = RosAdapter.msg.object_state()
      end = 0
      _x = self
      start = end
      end += 135
      (_x.sObjectState.sSpeed.u8X, _x.sObjectState.sSpeed.u8Y, _x.sObjectState.sSpeed.u8Z, _x.sObjectState.sSpeed.u4H, _x.sObjectState.sSpeed.u4P, _x.sObjectState.sSpeed.u4R, _x.sObjectState.sSpeed.u1Type, _x.sObjectState.sAccel.u8X, _x.sObjectState.sAccel.u8Y, _x.sObjectState.sAccel.u8Z, _x.sObjectState.sAccel.u4H, _x.sObjectState.sAccel.u4P, _x.sObjectState.sAccel.u4R, _x.sObjectState.sAccel.u1Type, _x.sObjectState.sGeo.u4DimX, _x.sObjectState.sGeo.u4DimY, _x.sObjectState.sGeo.u4DimZ, _x.sObjectState.sGeo.u4OffX, _x.sObjectState.sGeo.u4OffY, _x.sObjectState.sGeo.u4OffZ, _x.sObjectState.sPos.u8X, _x.sObjectState.sPos.u8Y, _x.sObjectState.sPos.u8Z, _x.sObjectState.sPos.u4H, _x.sObjectState.sPos.u4P, _x.sObjectState.sPos.u4R, _x.sObjectState.sPos.u1Type,) = _get_struct_3d3fB3d3fB6f3d3fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sObjectState.au1Name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sObjectState.au1Name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sObjectState.au1ModelFileName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sObjectState.au1ModelFileName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sObjectState.au1ModelName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sObjectState.au1ModelName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.sObjectState.au8ParamScale = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 115
      (_x.sObjectState.u8RoadId, _x.sObjectState.u8SpeedLimit, _x.sObjectState.u4Id, _x.sObjectState.u4RoadS, _x.sObjectState.u4RoadT, _x.sObjectState.u4HdgRel, _x.sObjectState.u4LaneOffset, _x.sObjectState.u4TraveledDist, _x.sObjectState.u2visMask, _x.sObjectState.u1Type, _x.sObjectState.u1LaneId, _x.sObjectState.u1Dir, _x.sObjectState.u1IsOnRoad, _x.sObjectState.u1category, _x.u4initSpeed, _x.u8DistRoadEnd, _x.u4LightMask, _x.u4WheelSpeedFL, _x.u4WheelSpeedFR, _x.u4WheelSpeedRL, _x.u4WheelSpeedRR, _x.u4MasterCylinderPressure, _x.u4WheelHeightLF, _x.u4WheelHeightLR, _x.u4WheelHeightRF, _x.u4WheelHeightRR, _x.u4SteerAngle, _x.u1objQuantity, _x.u1irc_id, _x.u1irc_left_id, _x.u1irc_right_id, _x.u1cipv_id, _x.u1lmc_id, _x.u1rmc_id, _x.u1isReachInitSpeed,) = _get_struct_QdI5fHBb3B2dI10f8B().unpack(str[start:end])
      self.sObjectState.u1IsOnRoad = bool(self.sObjectState.u1IsOnRoad)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d3fB3d3fB6f3d3fB = None
def _get_struct_3d3fB3d3fB6f3d3fB():
    global _struct_3d3fB3d3fB6f3d3fB
    if _struct_3d3fB3d3fB6f3d3fB is None:
        _struct_3d3fB3d3fB6f3d3fB = struct.Struct("<3d3fB3d3fB6f3d3fB")
    return _struct_3d3fB3d3fB6f3d3fB
_struct_QdI5fHBb3B2dI10f8B = None
def _get_struct_QdI5fHBb3B2dI10f8B():
    global _struct_QdI5fHBb3B2dI10f8B
    if _struct_QdI5fHBb3B2dI10f8B is None:
        _struct_QdI5fHBb3B2dI10f8B = struct.Struct("<QdI5fHBb3B2dI10f8B")
    return _struct_QdI5fHBb3B2dI10f8B
