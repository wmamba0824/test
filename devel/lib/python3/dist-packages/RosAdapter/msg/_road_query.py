# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/road_query.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class road_query(genpy.Message):
  _md5sum = "197c272ebc790a868b90d572669363c5"
  _type = "RosAdapter/road_query"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------ 查询道路点 ------ */
float32 u8X
float32 u8Y
uint16  u2Id"""
  __slots__ = ['u8X','u8Y','u2Id']
  _slot_types = ['float32','float32','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u8X,u8Y,u2Id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(road_query, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u8X is None:
        self.u8X = 0.
      if self.u8Y is None:
        self.u8Y = 0.
      if self.u2Id is None:
        self.u2Id = 0
    else:
      self.u8X = 0.
      self.u8Y = 0.
      self.u2Id = 0

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
      buff.write(_get_struct_2fH().pack(_x.u8X, _x.u8Y, _x.u2Id))
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
      end += 10
      (_x.u8X, _x.u8Y, _x.u2Id,) = _get_struct_2fH().unpack(str[start:end])
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
      buff.write(_get_struct_2fH().pack(_x.u8X, _x.u8Y, _x.u2Id))
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
      end += 10
      (_x.u8X, _x.u8Y, _x.u2Id,) = _get_struct_2fH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2fH = None
def _get_struct_2fH():
    global _struct_2fH
    if _struct_2fH is None:
        _struct_2fH = struct.Struct("<2fH")
    return _struct_2fH
