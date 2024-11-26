# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/model_outline.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import RosAdapter.msg

class model_outline(genpy.Message):
  _md5sum = "21a3ac0ff6ce066332bb8e9a1448b5b3"
  _type = "RosAdapter/model_outline"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string                au1ModelName
double_array[]        au8OutlinePoints    
================================================================================
MSG: RosAdapter/double_array
float64[]  data"""
  __slots__ = ['au1ModelName','au8OutlinePoints']
  _slot_types = ['string','RosAdapter/double_array[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       au1ModelName,au8OutlinePoints

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(model_outline, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.au1ModelName is None:
        self.au1ModelName = ''
      if self.au8OutlinePoints is None:
        self.au8OutlinePoints = []
    else:
      self.au1ModelName = ''
      self.au8OutlinePoints = []

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
      _x = self.au1ModelName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.au8OutlinePoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.au8OutlinePoints:
        length = len(val1.data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.data))
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
      if self.au8OutlinePoints is None:
        self.au8OutlinePoints = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.au1ModelName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.au1ModelName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.au8OutlinePoints = []
      for i in range(0, length):
        val1 = RosAdapter.msg.double_array()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.data = s.unpack(str[start:end])
        self.au8OutlinePoints.append(val1)
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
      _x = self.au1ModelName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.au8OutlinePoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.au8OutlinePoints:
        length = len(val1.data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.data.tostring())
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
      if self.au8OutlinePoints is None:
        self.au8OutlinePoints = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.au1ModelName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.au1ModelName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.au8OutlinePoints = []
      for i in range(0, length):
        val1 = RosAdapter.msg.double_array()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        self.au8OutlinePoints.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
