# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/gnss_gga.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class gnss_gga(genpy.Message):
  _md5sum = "3f522481e07bd152c1ddc9897d588fb8"
  _type = "RosAdapter/gnss_gga"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8         startChar
uint8[]       cmd
uint8[]       mTime
float64       lat
uint8         NorS
float64       lon
uint8         EorW
uint8[]       mode
int32         count
float64       horizonprecious 
float64       geoidalheight
uint8         meter1
float64       height
uint8         meter2
float64       dataage
int32         basestationflag
uint8         sperator
uint8[]       checksum"""
  __slots__ = ['startChar','cmd','mTime','lat','NorS','lon','EorW','mode','count','horizonprecious','geoidalheight','meter1','height','meter2','dataage','basestationflag','sperator','checksum']
  _slot_types = ['uint8','uint8[]','uint8[]','float64','uint8','float64','uint8','uint8[]','int32','float64','float64','uint8','float64','uint8','float64','int32','uint8','uint8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       startChar,cmd,mTime,lat,NorS,lon,EorW,mode,count,horizonprecious,geoidalheight,meter1,height,meter2,dataage,basestationflag,sperator,checksum

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(gnss_gga, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.startChar is None:
        self.startChar = 0
      if self.cmd is None:
        self.cmd = b''
      if self.mTime is None:
        self.mTime = b''
      if self.lat is None:
        self.lat = 0.
      if self.NorS is None:
        self.NorS = 0
      if self.lon is None:
        self.lon = 0.
      if self.EorW is None:
        self.EorW = 0
      if self.mode is None:
        self.mode = b''
      if self.count is None:
        self.count = 0
      if self.horizonprecious is None:
        self.horizonprecious = 0.
      if self.geoidalheight is None:
        self.geoidalheight = 0.
      if self.meter1 is None:
        self.meter1 = 0
      if self.height is None:
        self.height = 0.
      if self.meter2 is None:
        self.meter2 = 0
      if self.dataage is None:
        self.dataage = 0.
      if self.basestationflag is None:
        self.basestationflag = 0
      if self.sperator is None:
        self.sperator = 0
      if self.checksum is None:
        self.checksum = b''
    else:
      self.startChar = 0
      self.cmd = b''
      self.mTime = b''
      self.lat = 0.
      self.NorS = 0
      self.lon = 0.
      self.EorW = 0
      self.mode = b''
      self.count = 0
      self.horizonprecious = 0.
      self.geoidalheight = 0.
      self.meter1 = 0
      self.height = 0.
      self.meter2 = 0
      self.dataage = 0.
      self.basestationflag = 0
      self.sperator = 0
      self.checksum = b''

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
      _x = self.startChar
      buff.write(_get_struct_B().pack(_x))
      _x = self.cmd
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mTime
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_dBdB().pack(_x.lat, _x.NorS, _x.lon, _x.EorW))
      _x = self.mode
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2dBdBdiB().pack(_x.count, _x.horizonprecious, _x.geoidalheight, _x.meter1, _x.height, _x.meter2, _x.dataage, _x.basestationflag, _x.sperator))
      _x = self.checksum
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      start = end
      end += 1
      (self.startChar,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cmd = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.mTime = str[start:end]
      _x = self
      start = end
      end += 18
      (_x.lat, _x.NorS, _x.lon, _x.EorW,) = _get_struct_dBdB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.mode = str[start:end]
      _x = self
      start = end
      end += 43
      (_x.count, _x.horizonprecious, _x.geoidalheight, _x.meter1, _x.height, _x.meter2, _x.dataage, _x.basestationflag, _x.sperator,) = _get_struct_i2dBdBdiB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.checksum = str[start:end]
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
      _x = self.startChar
      buff.write(_get_struct_B().pack(_x))
      _x = self.cmd
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mTime
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_dBdB().pack(_x.lat, _x.NorS, _x.lon, _x.EorW))
      _x = self.mode
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2dBdBdiB().pack(_x.count, _x.horizonprecious, _x.geoidalheight, _x.meter1, _x.height, _x.meter2, _x.dataage, _x.basestationflag, _x.sperator))
      _x = self.checksum
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      start = end
      end += 1
      (self.startChar,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cmd = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.mTime = str[start:end]
      _x = self
      start = end
      end += 18
      (_x.lat, _x.NorS, _x.lon, _x.EorW,) = _get_struct_dBdB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.mode = str[start:end]
      _x = self
      start = end
      end += 43
      (_x.count, _x.horizonprecious, _x.geoidalheight, _x.meter1, _x.height, _x.meter2, _x.dataage, _x.basestationflag, _x.sperator,) = _get_struct_i2dBdBdiB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.checksum = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_dBdB = None
def _get_struct_dBdB():
    global _struct_dBdB
    if _struct_dBdB is None:
        _struct_dBdB = struct.Struct("<dBdB")
    return _struct_dBdB
_struct_i2dBdBdiB = None
def _get_struct_i2dBdBdiB():
    global _struct_i2dBdBdiB
    if _struct_i2dBdBdiB is None:
        _struct_i2dBdBdiB = struct.Struct("<i2dBdBdiB")
    return _struct_i2dBdBdiB
