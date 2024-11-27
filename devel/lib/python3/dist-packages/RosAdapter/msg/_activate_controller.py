# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/activate_controller.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class activate_controller(genpy.Message):
  _md5sum = "5767c52dad068fee51764b887eed08ec"
  _type = "RosAdapter/activate_controller"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------激活控制器 ------ */

uint32          u4ObjectId
bool            u1Lateral
bool            u1Longitudinal"""
  __slots__ = ['u4ObjectId','u1Lateral','u1Longitudinal']
  _slot_types = ['uint32','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u4ObjectId,u1Lateral,u1Longitudinal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(activate_controller, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u4ObjectId is None:
        self.u4ObjectId = 0
      if self.u1Lateral is None:
        self.u1Lateral = False
      if self.u1Longitudinal is None:
        self.u1Longitudinal = False
    else:
      self.u4ObjectId = 0
      self.u1Lateral = False
      self.u1Longitudinal = False

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
      buff.write(_get_struct_I2B().pack(_x.u4ObjectId, _x.u1Lateral, _x.u1Longitudinal))
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
      end += 6
      (_x.u4ObjectId, _x.u1Lateral, _x.u1Longitudinal,) = _get_struct_I2B().unpack(str[start:end])
      self.u1Lateral = bool(self.u1Lateral)
      self.u1Longitudinal = bool(self.u1Longitudinal)
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
      buff.write(_get_struct_I2B().pack(_x.u4ObjectId, _x.u1Lateral, _x.u1Longitudinal))
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
      end += 6
      (_x.u4ObjectId, _x.u1Lateral, _x.u1Longitudinal,) = _get_struct_I2B().unpack(str[start:end])
      self.u1Lateral = bool(self.u1Lateral)
      self.u1Longitudinal = bool(self.u1Longitudinal)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I2B = None
def _get_struct_I2B():
    global _struct_I2B
    if _struct_I2B is None:
        _struct_I2B = struct.Struct("<I2B")
    return _struct_I2B