# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/road_state.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class road_state(genpy.Message):
  _md5sum = "7b99771b3b0714bf50c28d1e2e932612"
  _type = "RosAdapter/road_state"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#/** ------ 车辆对应的道路状态 ------ */
uint64  u8RoadId
uint32  u4ObjectId
float32 u4DefaultSpeed
float32 u4WaterLevel
float32 u4DistToJunc"""
  __slots__ = ['u8RoadId','u4ObjectId','u4DefaultSpeed','u4WaterLevel','u4DistToJunc']
  _slot_types = ['uint64','uint32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u8RoadId,u4ObjectId,u4DefaultSpeed,u4WaterLevel,u4DistToJunc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(road_state, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u8RoadId is None:
        self.u8RoadId = 0
      if self.u4ObjectId is None:
        self.u4ObjectId = 0
      if self.u4DefaultSpeed is None:
        self.u4DefaultSpeed = 0.
      if self.u4WaterLevel is None:
        self.u4WaterLevel = 0.
      if self.u4DistToJunc is None:
        self.u4DistToJunc = 0.
    else:
      self.u8RoadId = 0
      self.u4ObjectId = 0
      self.u4DefaultSpeed = 0.
      self.u4WaterLevel = 0.
      self.u4DistToJunc = 0.

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
      buff.write(_get_struct_QI3f().pack(_x.u8RoadId, _x.u4ObjectId, _x.u4DefaultSpeed, _x.u4WaterLevel, _x.u4DistToJunc))
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
      end = 0
      _x = self
      start = end
      end += 24
      (_x.u8RoadId, _x.u4ObjectId, _x.u4DefaultSpeed, _x.u4WaterLevel, _x.u4DistToJunc,) = _get_struct_QI3f().unpack(str[start:end])
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
      buff.write(_get_struct_QI3f().pack(_x.u8RoadId, _x.u4ObjectId, _x.u4DefaultSpeed, _x.u4WaterLevel, _x.u4DistToJunc))
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
      end = 0
      _x = self
      start = end
      end += 24
      (_x.u8RoadId, _x.u4ObjectId, _x.u4DefaultSpeed, _x.u4WaterLevel, _x.u4DistToJunc,) = _get_struct_QI3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_QI3f = None
def _get_struct_QI3f():
    global _struct_QI3f
    if _struct_QI3f is None:
        _struct_QI3f = struct.Struct("<QI3f")
    return _struct_QI3f