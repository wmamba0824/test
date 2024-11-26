# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/contact_point.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import RosAdapter.msg

class contact_point(genpy.Message):
  _md5sum = "41a840108b4df99218eaa97f9aa87ec5"
  _type = "RosAdapter/contact_point"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------ 接触点信息 ------ */
coord  sRoadDataIn
uint16 u2Id
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
  __slots__ = ['sRoadDataIn','u2Id']
  _slot_types = ['RosAdapter/coord','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sRoadDataIn,u2Id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(contact_point, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.sRoadDataIn is None:
        self.sRoadDataIn = RosAdapter.msg.coord()
      if self.u2Id is None:
        self.u2Id = 0
    else:
      self.sRoadDataIn = RosAdapter.msg.coord()
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
      buff.write(_get_struct_3d3fBH().pack(_x.sRoadDataIn.u8X, _x.sRoadDataIn.u8Y, _x.sRoadDataIn.u8Z, _x.sRoadDataIn.u4H, _x.sRoadDataIn.u4P, _x.sRoadDataIn.u4R, _x.sRoadDataIn.u1Type, _x.u2Id))
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
      if self.sRoadDataIn is None:
        self.sRoadDataIn = RosAdapter.msg.coord()
      end = 0
      _x = self
      start = end
      end += 39
      (_x.sRoadDataIn.u8X, _x.sRoadDataIn.u8Y, _x.sRoadDataIn.u8Z, _x.sRoadDataIn.u4H, _x.sRoadDataIn.u4P, _x.sRoadDataIn.u4R, _x.sRoadDataIn.u1Type, _x.u2Id,) = _get_struct_3d3fBH().unpack(str[start:end])
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
      buff.write(_get_struct_3d3fBH().pack(_x.sRoadDataIn.u8X, _x.sRoadDataIn.u8Y, _x.sRoadDataIn.u8Z, _x.sRoadDataIn.u4H, _x.sRoadDataIn.u4P, _x.sRoadDataIn.u4R, _x.sRoadDataIn.u1Type, _x.u2Id))
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
      if self.sRoadDataIn is None:
        self.sRoadDataIn = RosAdapter.msg.coord()
      end = 0
      _x = self
      start = end
      end += 39
      (_x.sRoadDataIn.u8X, _x.sRoadDataIn.u8Y, _x.sRoadDataIn.u8Z, _x.sRoadDataIn.u4H, _x.sRoadDataIn.u4P, _x.sRoadDataIn.u4R, _x.sRoadDataIn.u1Type, _x.u2Id,) = _get_struct_3d3fBH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d3fBH = None
def _get_struct_3d3fBH():
    global _struct_3d3fBH
    if _struct_3d3fBH is None:
        _struct_3d3fBH = struct.Struct("<3d3fBH")
    return _struct_3d3fBH
