# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/geometry.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class geometry(genpy.Message):
  _md5sum = "dd5e9e63f2d15bb3fd1e5ec306048461"
  _type = "RosAdapter/geometry"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ"""
  __slots__ = ['u4DimX','u4DimY','u4DimZ','u4OffX','u4OffY','u4OffZ']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u4DimX,u4DimY,u4DimZ,u4OffX,u4OffY,u4OffZ

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(geometry, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u4DimX is None:
        self.u4DimX = 0.
      if self.u4DimY is None:
        self.u4DimY = 0.
      if self.u4DimZ is None:
        self.u4DimZ = 0.
      if self.u4OffX is None:
        self.u4OffX = 0.
      if self.u4OffY is None:
        self.u4OffY = 0.
      if self.u4OffZ is None:
        self.u4OffZ = 0.
    else:
      self.u4DimX = 0.
      self.u4DimY = 0.
      self.u4DimZ = 0.
      self.u4OffX = 0.
      self.u4OffY = 0.
      self.u4OffZ = 0.

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
      buff.write(_get_struct_6f().pack(_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ))
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
      (_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ,) = _get_struct_6f().unpack(str[start:end])
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
      buff.write(_get_struct_6f().pack(_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ))
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
      (_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
