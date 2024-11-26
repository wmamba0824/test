# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/sign_object.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import RosAdapter.msg

class sign_object(genpy.Message):
  _md5sum = "126cf5cd9bff85cc03e9822c09ab25cf"
  _type = "RosAdapter/sign_object"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# 交通标志

float64   u8Dist
float64   u8NearestDist
float64   u8TrafficSignDistX
float64   u8TrafficSignDistY
coord     sSensorPos
coord     sNearestSensorPos
uint8     u1TrafficSignType
================================================================================
MSG: RosAdapter/coord
# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type"""
  __slots__ = ['u8Dist','u8NearestDist','u8TrafficSignDistX','u8TrafficSignDistY','sSensorPos','sNearestSensorPos','u1TrafficSignType']
  _slot_types = ['float64','float64','float64','float64','RosAdapter/coord','RosAdapter/coord','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u8Dist,u8NearestDist,u8TrafficSignDistX,u8TrafficSignDistY,sSensorPos,sNearestSensorPos,u1TrafficSignType

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(sign_object, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u8Dist is None:
        self.u8Dist = 0.
      if self.u8NearestDist is None:
        self.u8NearestDist = 0.
      if self.u8TrafficSignDistX is None:
        self.u8TrafficSignDistX = 0.
      if self.u8TrafficSignDistY is None:
        self.u8TrafficSignDistY = 0.
      if self.sSensorPos is None:
        self.sSensorPos = RosAdapter.msg.coord()
      if self.sNearestSensorPos is None:
        self.sNearestSensorPos = RosAdapter.msg.coord()
      if self.u1TrafficSignType is None:
        self.u1TrafficSignType = 0
    else:
      self.u8Dist = 0.
      self.u8NearestDist = 0.
      self.u8TrafficSignDistX = 0.
      self.u8TrafficSignDistY = 0.
      self.sSensorPos = RosAdapter.msg.coord()
      self.sNearestSensorPos = RosAdapter.msg.coord()
      self.u1TrafficSignType = 0

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
      buff.write(_get_struct_7d3fB3d3f2B().pack(_x.u8Dist, _x.u8NearestDist, _x.u8TrafficSignDistX, _x.u8TrafficSignDistY, _x.sSensorPos.u8X, _x.sSensorPos.u8Y, _x.sSensorPos.u8Z, _x.sSensorPos.u4H, _x.sSensorPos.u4P, _x.sSensorPos.u4R, _x.sSensorPos.u1Type, _x.sNearestSensorPos.u8X, _x.sNearestSensorPos.u8Y, _x.sNearestSensorPos.u8Z, _x.sNearestSensorPos.u4H, _x.sNearestSensorPos.u4P, _x.sNearestSensorPos.u4R, _x.sNearestSensorPos.u1Type, _x.u1TrafficSignType))
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
      if self.sSensorPos is None:
        self.sSensorPos = RosAdapter.msg.coord()
      if self.sNearestSensorPos is None:
        self.sNearestSensorPos = RosAdapter.msg.coord()
      end = 0
      _x = self
      start = end
      end += 107
      (_x.u8Dist, _x.u8NearestDist, _x.u8TrafficSignDistX, _x.u8TrafficSignDistY, _x.sSensorPos.u8X, _x.sSensorPos.u8Y, _x.sSensorPos.u8Z, _x.sSensorPos.u4H, _x.sSensorPos.u4P, _x.sSensorPos.u4R, _x.sSensorPos.u1Type, _x.sNearestSensorPos.u8X, _x.sNearestSensorPos.u8Y, _x.sNearestSensorPos.u8Z, _x.sNearestSensorPos.u4H, _x.sNearestSensorPos.u4P, _x.sNearestSensorPos.u4R, _x.sNearestSensorPos.u1Type, _x.u1TrafficSignType,) = _get_struct_7d3fB3d3f2B().unpack(str[start:end])
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
      buff.write(_get_struct_7d3fB3d3f2B().pack(_x.u8Dist, _x.u8NearestDist, _x.u8TrafficSignDistX, _x.u8TrafficSignDistY, _x.sSensorPos.u8X, _x.sSensorPos.u8Y, _x.sSensorPos.u8Z, _x.sSensorPos.u4H, _x.sSensorPos.u4P, _x.sSensorPos.u4R, _x.sSensorPos.u1Type, _x.sNearestSensorPos.u8X, _x.sNearestSensorPos.u8Y, _x.sNearestSensorPos.u8Z, _x.sNearestSensorPos.u4H, _x.sNearestSensorPos.u4P, _x.sNearestSensorPos.u4R, _x.sNearestSensorPos.u1Type, _x.u1TrafficSignType))
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
      if self.sSensorPos is None:
        self.sSensorPos = RosAdapter.msg.coord()
      if self.sNearestSensorPos is None:
        self.sNearestSensorPos = RosAdapter.msg.coord()
      end = 0
      _x = self
      start = end
      end += 107
      (_x.u8Dist, _x.u8NearestDist, _x.u8TrafficSignDistX, _x.u8TrafficSignDistY, _x.sSensorPos.u8X, _x.sSensorPos.u8Y, _x.sSensorPos.u8Z, _x.sSensorPos.u4H, _x.sSensorPos.u4P, _x.sSensorPos.u4R, _x.sSensorPos.u1Type, _x.sNearestSensorPos.u8X, _x.sNearestSensorPos.u8Y, _x.sNearestSensorPos.u8Z, _x.sNearestSensorPos.u4H, _x.sNearestSensorPos.u4P, _x.sNearestSensorPos.u4R, _x.sNearestSensorPos.u1Type, _x.u1TrafficSignType,) = _get_struct_7d3fB3d3f2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d3fB3d3f2B = None
def _get_struct_7d3fB3d3f2B():
    global _struct_7d3fB3d3f2B
    if _struct_7d3fB3d3f2B is None:
        _struct_7d3fB3d3f2B = struct.Struct("<7d3fB3d3f2B")
    return _struct_7d3fB3d3f2B
