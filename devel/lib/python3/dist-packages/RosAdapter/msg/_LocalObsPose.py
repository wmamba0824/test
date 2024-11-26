# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/LocalObsPose.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import RosAdapter.msg
import geometry_msgs.msg
import std_msgs.msg

class LocalObsPose(genpy.Message):
  _md5sum = "fffebcc9c1d1377772720009d7127435"
  _type = "RosAdapter/LocalObsPose"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# 自定义信息 主车位姿和传感器监测物体所有信息

geometry_msgs/PoseStamped       local_pose      #主车位置姿态
mil_object_state[]              milObjStates    #障碍物位置姿态, simpro接口提供 
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: RosAdapter/mil_object_state
# /** ------ MIL测试环境车、行人、障碍物信息 ------ */
object_state           sObjectState
mil_object_state_base  sMilBase
================================================================================
MSG: RosAdapter/object_state
# /** ------ 对象信息 ------ */
coord           sSpeed
coord           sAccel
geometry        sGeo
coord           sPos
string          au1Name
string          au1ModelFileName
string          au1ModelName
float64[]       au8ParamScale
uint64          u8RoadId
float64         u8SpeedLimit
uint32          u4Id
float32         u4RoadS
float32         u4RoadT
float32         u4HdgRel
float32         u4LaneOffset
float32         u4TraveledDist
uint16          u2visMask
uint8           u1Type
int8            u1LaneId
uint8           u1Dir
bool            u1IsOnRoad
uint8           u1category
================================================================================
MSG: RosAdapter/coord
# /** ------ 坐标 ------ */
float64   u8X
float64   u8Y
float64   u8Z
float32   u4H
float32   u4P
float32   u4R
uint8     u1Type
================================================================================
MSG: RosAdapter/geometry
# /** ------ 几何信息 ------ */
float32 u4DimX
float32 u4DimY
float32 u4DimZ
float32 u4OffX
float32 u4OffY
float32 u4OffZ
================================================================================
MSG: RosAdapter/mil_object_state_base
#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */

uint32     u4LightMask
float32    u4DistanceX
float32    u4DistanceY
float32    u4VelocityX
float32    u4VelocityY
float32    u4AccelerationX
float32    u4AccelerationY
float32    u4YawRate
float32    u4Dist
float32    u4Angle
uint8      u1ObjClass
uint8      u1Flag_detected
uint8      u1Movable
uint8      u1Moving
uint8      u1Obj_Age"""
  __slots__ = ['local_pose','milObjStates']
  _slot_types = ['geometry_msgs/PoseStamped','RosAdapter/mil_object_state[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       local_pose,milObjStates

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocalObsPose, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.local_pose is None:
        self.local_pose = geometry_msgs.msg.PoseStamped()
      if self.milObjStates is None:
        self.milObjStates = []
    else:
      self.local_pose = geometry_msgs.msg.PoseStamped()
      self.milObjStates = []

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
      buff.write(_get_struct_3I().pack(_x.local_pose.header.seq, _x.local_pose.header.stamp.secs, _x.local_pose.header.stamp.nsecs))
      _x = self.local_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.local_pose.pose.position.x, _x.local_pose.pose.position.y, _x.local_pose.pose.position.z, _x.local_pose.pose.orientation.x, _x.local_pose.pose.orientation.y, _x.local_pose.pose.orientation.z, _x.local_pose.pose.orientation.w))
      length = len(self.milObjStates)
      buff.write(_struct_I.pack(length))
      for val1 in self.milObjStates:
        _v1 = val1.sObjectState
        _v2 = _v1.sSpeed
        _x = _v2
        buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
        _v3 = _v1.sAccel
        _x = _v3
        buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
        _v4 = _v1.sGeo
        _x = _v4
        buff.write(_get_struct_6f().pack(_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ))
        _v5 = _v1.sPos
        _x = _v5
        buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
        _x = _v1.au1Name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.au1ModelFileName
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.au1ModelName
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v1.au8ParamScale)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*_v1.au8ParamScale))
        _x = _v1
        buff.write(_get_struct_QdI5fHBb3B().pack(_x.u8RoadId, _x.u8SpeedLimit, _x.u4Id, _x.u4RoadS, _x.u4RoadT, _x.u4HdgRel, _x.u4LaneOffset, _x.u4TraveledDist, _x.u2visMask, _x.u1Type, _x.u1LaneId, _x.u1Dir, _x.u1IsOnRoad, _x.u1category))
        _v6 = val1.sMilBase
        _x = _v6
        buff.write(_get_struct_I9f5B().pack(_x.u4LightMask, _x.u4DistanceX, _x.u4DistanceY, _x.u4VelocityX, _x.u4VelocityY, _x.u4AccelerationX, _x.u4AccelerationY, _x.u4YawRate, _x.u4Dist, _x.u4Angle, _x.u1ObjClass, _x.u1Flag_detected, _x.u1Movable, _x.u1Moving, _x.u1Obj_Age))
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
      if self.local_pose is None:
        self.local_pose = geometry_msgs.msg.PoseStamped()
      if self.milObjStates is None:
        self.milObjStates = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.local_pose.header.seq, _x.local_pose.header.stamp.secs, _x.local_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.local_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.local_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.local_pose.pose.position.x, _x.local_pose.pose.position.y, _x.local_pose.pose.position.z, _x.local_pose.pose.orientation.x, _x.local_pose.pose.orientation.y, _x.local_pose.pose.orientation.z, _x.local_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.milObjStates = []
      for i in range(0, length):
        val1 = RosAdapter.msg.mil_object_state()
        _v7 = val1.sObjectState
        _v8 = _v7.sSpeed
        _x = _v8
        start = end
        end += 37
        (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
        _v9 = _v7.sAccel
        _x = _v9
        start = end
        end += 37
        (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
        _v10 = _v7.sGeo
        _x = _v10
        start = end
        end += 24
        (_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ,) = _get_struct_6f().unpack(str[start:end])
        _v11 = _v7.sPos
        _x = _v11
        start = end
        end += 37
        (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.au1Name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v7.au1Name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.au1ModelFileName = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v7.au1ModelFileName = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.au1ModelName = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v7.au1ModelName = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v7.au8ParamScale = s.unpack(str[start:end])
        _x = _v7
        start = end
        end += 47
        (_x.u8RoadId, _x.u8SpeedLimit, _x.u4Id, _x.u4RoadS, _x.u4RoadT, _x.u4HdgRel, _x.u4LaneOffset, _x.u4TraveledDist, _x.u2visMask, _x.u1Type, _x.u1LaneId, _x.u1Dir, _x.u1IsOnRoad, _x.u1category,) = _get_struct_QdI5fHBb3B().unpack(str[start:end])
        _v7.u1IsOnRoad = bool(_v7.u1IsOnRoad)
        _v12 = val1.sMilBase
        _x = _v12
        start = end
        end += 45
        (_x.u4LightMask, _x.u4DistanceX, _x.u4DistanceY, _x.u4VelocityX, _x.u4VelocityY, _x.u4AccelerationX, _x.u4AccelerationY, _x.u4YawRate, _x.u4Dist, _x.u4Angle, _x.u1ObjClass, _x.u1Flag_detected, _x.u1Movable, _x.u1Moving, _x.u1Obj_Age,) = _get_struct_I9f5B().unpack(str[start:end])
        self.milObjStates.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.local_pose.header.seq, _x.local_pose.header.stamp.secs, _x.local_pose.header.stamp.nsecs))
      _x = self.local_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.local_pose.pose.position.x, _x.local_pose.pose.position.y, _x.local_pose.pose.position.z, _x.local_pose.pose.orientation.x, _x.local_pose.pose.orientation.y, _x.local_pose.pose.orientation.z, _x.local_pose.pose.orientation.w))
      length = len(self.milObjStates)
      buff.write(_struct_I.pack(length))
      for val1 in self.milObjStates:
        _v13 = val1.sObjectState
        _v14 = _v13.sSpeed
        _x = _v14
        buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
        _v15 = _v13.sAccel
        _x = _v15
        buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
        _v16 = _v13.sGeo
        _x = _v16
        buff.write(_get_struct_6f().pack(_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ))
        _v17 = _v13.sPos
        _x = _v17
        buff.write(_get_struct_3d3fB().pack(_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type))
        _x = _v13.au1Name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v13.au1ModelFileName
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v13.au1ModelName
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v13.au8ParamScale)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(_v13.au8ParamScale.tostring())
        _x = _v13
        buff.write(_get_struct_QdI5fHBb3B().pack(_x.u8RoadId, _x.u8SpeedLimit, _x.u4Id, _x.u4RoadS, _x.u4RoadT, _x.u4HdgRel, _x.u4LaneOffset, _x.u4TraveledDist, _x.u2visMask, _x.u1Type, _x.u1LaneId, _x.u1Dir, _x.u1IsOnRoad, _x.u1category))
        _v18 = val1.sMilBase
        _x = _v18
        buff.write(_get_struct_I9f5B().pack(_x.u4LightMask, _x.u4DistanceX, _x.u4DistanceY, _x.u4VelocityX, _x.u4VelocityY, _x.u4AccelerationX, _x.u4AccelerationY, _x.u4YawRate, _x.u4Dist, _x.u4Angle, _x.u1ObjClass, _x.u1Flag_detected, _x.u1Movable, _x.u1Moving, _x.u1Obj_Age))
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
      if self.local_pose is None:
        self.local_pose = geometry_msgs.msg.PoseStamped()
      if self.milObjStates is None:
        self.milObjStates = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.local_pose.header.seq, _x.local_pose.header.stamp.secs, _x.local_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.local_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.local_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.local_pose.pose.position.x, _x.local_pose.pose.position.y, _x.local_pose.pose.position.z, _x.local_pose.pose.orientation.x, _x.local_pose.pose.orientation.y, _x.local_pose.pose.orientation.z, _x.local_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.milObjStates = []
      for i in range(0, length):
        val1 = RosAdapter.msg.mil_object_state()
        _v19 = val1.sObjectState
        _v20 = _v19.sSpeed
        _x = _v20
        start = end
        end += 37
        (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
        _v21 = _v19.sAccel
        _x = _v21
        start = end
        end += 37
        (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
        _v22 = _v19.sGeo
        _x = _v22
        start = end
        end += 24
        (_x.u4DimX, _x.u4DimY, _x.u4DimZ, _x.u4OffX, _x.u4OffY, _x.u4OffZ,) = _get_struct_6f().unpack(str[start:end])
        _v23 = _v19.sPos
        _x = _v23
        start = end
        end += 37
        (_x.u8X, _x.u8Y, _x.u8Z, _x.u4H, _x.u4P, _x.u4R, _x.u1Type,) = _get_struct_3d3fB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v19.au1Name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v19.au1Name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v19.au1ModelFileName = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v19.au1ModelFileName = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v19.au1ModelName = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v19.au1ModelName = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v19.au8ParamScale = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _x = _v19
        start = end
        end += 47
        (_x.u8RoadId, _x.u8SpeedLimit, _x.u4Id, _x.u4RoadS, _x.u4RoadT, _x.u4HdgRel, _x.u4LaneOffset, _x.u4TraveledDist, _x.u2visMask, _x.u1Type, _x.u1LaneId, _x.u1Dir, _x.u1IsOnRoad, _x.u1category,) = _get_struct_QdI5fHBb3B().unpack(str[start:end])
        _v19.u1IsOnRoad = bool(_v19.u1IsOnRoad)
        _v24 = val1.sMilBase
        _x = _v24
        start = end
        end += 45
        (_x.u4LightMask, _x.u4DistanceX, _x.u4DistanceY, _x.u4VelocityX, _x.u4VelocityY, _x.u4AccelerationX, _x.u4AccelerationY, _x.u4YawRate, _x.u4Dist, _x.u4Angle, _x.u1ObjClass, _x.u1Flag_detected, _x.u1Movable, _x.u1Moving, _x.u1Obj_Age,) = _get_struct_I9f5B().unpack(str[start:end])
        self.milObjStates.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d3fB = None
def _get_struct_3d3fB():
    global _struct_3d3fB
    if _struct_3d3fB is None:
        _struct_3d3fB = struct.Struct("<3d3fB")
    return _struct_3d3fB
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_I9f5B = None
def _get_struct_I9f5B():
    global _struct_I9f5B
    if _struct_I9f5B is None:
        _struct_I9f5B = struct.Struct("<I9f5B")
    return _struct_I9f5B
_struct_QdI5fHBb3B = None
def _get_struct_QdI5fHBb3B():
    global _struct_QdI5fHBb3B
    if _struct_QdI5fHBb3B is None:
        _struct_QdI5fHBb3B = struct.Struct("<QdI5fHBb3B")
    return _struct_QdI5fHBb3B
