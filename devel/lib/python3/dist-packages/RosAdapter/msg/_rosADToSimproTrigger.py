# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/rosADToSimproTrigger.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import RosAdapter.msg

class rosADToSimproTrigger(genpy.Message):
  _md5sum = "2da15b25b1d5918bbf88a5b655854d59"
  _type = "RosAdapter/rosADToSimproTrigger"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """header head
sync   adTrigger
================================================================================
MSG: RosAdapter/header
# /** ------ Msg header ------ */
float64 u8SimTime
uint32  u4HeaderSize
uint32  u4DataSize
uint32  u4FrameNo
================================================================================
MSG: RosAdapter/sync
# /** ------ 同步信号 ------ */
uint32 u4CmdMask
uint32 u4UserData"""
  __slots__ = ['head','adTrigger']
  _slot_types = ['RosAdapter/header','RosAdapter/sync']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       head,adTrigger

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(rosADToSimproTrigger, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.head is None:
        self.head = RosAdapter.msg.header()
      if self.adTrigger is None:
        self.adTrigger = RosAdapter.msg.sync()
    else:
      self.head = RosAdapter.msg.header()
      self.adTrigger = RosAdapter.msg.sync()

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
      buff.write(_get_struct_d5I().pack(_x.head.u8SimTime, _x.head.u4HeaderSize, _x.head.u4DataSize, _x.head.u4FrameNo, _x.adTrigger.u4CmdMask, _x.adTrigger.u4UserData))
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
      if self.head is None:
        self.head = RosAdapter.msg.header()
      if self.adTrigger is None:
        self.adTrigger = RosAdapter.msg.sync()
      end = 0
      _x = self
      start = end
      end += 28
      (_x.head.u8SimTime, _x.head.u4HeaderSize, _x.head.u4DataSize, _x.head.u4FrameNo, _x.adTrigger.u4CmdMask, _x.adTrigger.u4UserData,) = _get_struct_d5I().unpack(str[start:end])
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
      buff.write(_get_struct_d5I().pack(_x.head.u8SimTime, _x.head.u4HeaderSize, _x.head.u4DataSize, _x.head.u4FrameNo, _x.adTrigger.u4CmdMask, _x.adTrigger.u4UserData))
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
      if self.head is None:
        self.head = RosAdapter.msg.header()
      if self.adTrigger is None:
        self.adTrigger = RosAdapter.msg.sync()
      end = 0
      _x = self
      start = end
      end += 28
      (_x.head.u8SimTime, _x.head.u4HeaderSize, _x.head.u4DataSize, _x.head.u4FrameNo, _x.adTrigger.u4CmdMask, _x.adTrigger.u4UserData,) = _get_struct_d5I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d5I = None
def _get_struct_d5I():
    global _struct_d5I
    if _struct_d5I is None:
        _struct_d5I = struct.Struct("<d5I")
    return _struct_d5I
