# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/imu_data.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class imu_data(genpy.Message):
  _md5sum = "4178d59bbaf80ca00b22a79f7e80938d"
  _type = "RosAdapter/imu_data"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8         msgcnt
float64       u8X
float64       u8Y
float64       u8Z
float64       yaw
float64       pitch
float64       roll"""
  __slots__ = ['msgcnt','u8X','u8Y','u8Z','yaw','pitch','roll']
  _slot_types = ['uint8','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       msgcnt,u8X,u8Y,u8Z,yaw,pitch,roll

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(imu_data, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.msgcnt is None:
        self.msgcnt = 0
      if self.u8X is None:
        self.u8X = 0.
      if self.u8Y is None:
        self.u8Y = 0.
      if self.u8Z is None:
        self.u8Z = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.roll is None:
        self.roll = 0.
    else:
      self.msgcnt = 0
      self.u8X = 0.
      self.u8Y = 0.
      self.u8Z = 0.
      self.yaw = 0.
      self.pitch = 0.
      self.roll = 0.

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
      buff.write(_get_struct_B6d().pack(_x.msgcnt, _x.u8X, _x.u8Y, _x.u8Z, _x.yaw, _x.pitch, _x.roll))
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
      end += 49
      (_x.msgcnt, _x.u8X, _x.u8Y, _x.u8Z, _x.yaw, _x.pitch, _x.roll,) = _get_struct_B6d().unpack(str[start:end])
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
      buff.write(_get_struct_B6d().pack(_x.msgcnt, _x.u8X, _x.u8Y, _x.u8Z, _x.yaw, _x.pitch, _x.roll))
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
      end += 49
      (_x.msgcnt, _x.u8X, _x.u8Y, _x.u8Z, _x.yaw, _x.pitch, _x.roll,) = _get_struct_B6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B6d = None
def _get_struct_B6d():
    global _struct_B6d
    if _struct_B6d is None:
        _struct_B6d = struct.Struct("<B6d")
    return _struct_B6d
