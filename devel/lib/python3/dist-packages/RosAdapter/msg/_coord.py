# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/coord.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class coord(genpy.Message):
  _md5sum = "b91c4545f116a70c5f09e1d7ccb453d9"
  _type = "RosAdapter/coord"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type"""
  __slots__ = ['u8X','u8Y','u8Z','u4H','u4P','u4R','u1Type']
  _slot_types = ['float64','float64','float64','float32','float32','float32','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u8X,u8Y,u8Z,u4H,u4P,u4R,u1Type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(coord, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u8X is None:
        self.u8X = 0.
      if self.u8Y is None:
        self.u8Y = 0.
      if self.u8Z is None:
        self.u8Z = 0.
      if self.u4H is None:
        self.u4H = 0.
      if self.u4P is None:
        self.u4P = 0.
      if self.u4R is None:
        self.u4R = 0.
      if self.u1Type is None:
        self.u1Type = 0
    else:
      self.u8X = 0.
      self.u8Y = 0.
      self.u8Z = 0.
      self.u4H = 0.
      self.u4P = 0.
      self.u4R = 0.
      self.u1Type = 0

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
      buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
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
      end += 37
      (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
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
      buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
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
      end += 37
      (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d3fB = None
def _get_struct_3d3fB():
    global _struct_3d3fB
    if _struct_3d3fB is None:
        _struct_3d3fB = struct.Struct("<3d3fB")
    return _struct_3d3fB
