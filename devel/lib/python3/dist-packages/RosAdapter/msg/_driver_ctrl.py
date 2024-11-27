# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RosAdapter/driver_ctrl.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class driver_ctrl(genpy.Message):
  _md5sum = "cc27883f2d6c80938a7ec2f45203e918"
  _type = "RosAdapter/driver_ctrl"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# /** ------ 驾驶员控制输入的信息 ------ */

uint32       u4ObjectId
float32      u4MtWheel
float64      u8MasterCylinderPressure
float64      u8SteeringWheel
float64      u8ThrottlePedal
float64      u8BrakePedal
float64      u8AccelTgt
float64      u8SteeringTorque
float64      u8StopDistance
float64      u8TargetSpeed
float64      u8Vx
float64      u8Wr
float64      u8VLFWheelSpd
float64      u8VRFWheelSpd
float64      u8VLRWheelSpd
float64      u8VRRWheelSpd
float64      u8Ax
float64      u8Ay
float64      u8SteeringWheelAngularRate
float64      u8DrvTorqAct
float64      u8Xmc
float64      u8Ymc
float64      u8YawThetaVehicle
float64      u8PitchThetaVehicle
float64      u8RollThetaVehicle
float64      u8PitchRateVehicle
float64      u8RollRateVehicle
float64      u8SinSlopeout
float64      u8VehicleCurv
float64      u8TmotorCmd
float64      u8Tmotor
float64      u8EnergySourceLevel
float64      u8WLFWheelSpd
float64      u8WRFWheelSpd
float64      u8WLRWheelSpd
float64      u8WRRWheelSpd
float64      u8WGearSpd
uint8        u1LFWheelRotatedDir
uint8        u1LRWheelRotatedDir
uint8        u1RFWheelRotatedDir
uint8        u1RRWheelRotatedDir
uint8        u1BrakePedalStatus
uint8        u1VehicleDir
uint8        u1BrkType
int8         u1Gear """
  __slots__ = ['u4ObjectId','u4MtWheel','u8MasterCylinderPressure','u8SteeringWheel','u8ThrottlePedal','u8BrakePedal','u8AccelTgt','u8SteeringTorque','u8StopDistance','u8TargetSpeed','u8Vx','u8Wr','u8VLFWheelSpd','u8VRFWheelSpd','u8VLRWheelSpd','u8VRRWheelSpd','u8Ax','u8Ay','u8SteeringWheelAngularRate','u8DrvTorqAct','u8Xmc','u8Ymc','u8YawThetaVehicle','u8PitchThetaVehicle','u8RollThetaVehicle','u8PitchRateVehicle','u8RollRateVehicle','u8SinSlopeout','u8VehicleCurv','u8TmotorCmd','u8Tmotor','u8EnergySourceLevel','u8WLFWheelSpd','u8WRFWheelSpd','u8WLRWheelSpd','u8WRRWheelSpd','u8WGearSpd','u1LFWheelRotatedDir','u1LRWheelRotatedDir','u1RFWheelRotatedDir','u1RRWheelRotatedDir','u1BrakePedalStatus','u1VehicleDir','u1BrkType','u1Gear']
  _slot_types = ['uint32','float32','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','uint8','uint8','uint8','uint8','uint8','uint8','uint8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       u4ObjectId,u4MtWheel,u8MasterCylinderPressure,u8SteeringWheel,u8ThrottlePedal,u8BrakePedal,u8AccelTgt,u8SteeringTorque,u8StopDistance,u8TargetSpeed,u8Vx,u8Wr,u8VLFWheelSpd,u8VRFWheelSpd,u8VLRWheelSpd,u8VRRWheelSpd,u8Ax,u8Ay,u8SteeringWheelAngularRate,u8DrvTorqAct,u8Xmc,u8Ymc,u8YawThetaVehicle,u8PitchThetaVehicle,u8RollThetaVehicle,u8PitchRateVehicle,u8RollRateVehicle,u8SinSlopeout,u8VehicleCurv,u8TmotorCmd,u8Tmotor,u8EnergySourceLevel,u8WLFWheelSpd,u8WRFWheelSpd,u8WLRWheelSpd,u8WRRWheelSpd,u8WGearSpd,u1LFWheelRotatedDir,u1LRWheelRotatedDir,u1RFWheelRotatedDir,u1RRWheelRotatedDir,u1BrakePedalStatus,u1VehicleDir,u1BrkType,u1Gear

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(driver_ctrl, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.u4ObjectId is None:
        self.u4ObjectId = 0
      if self.u4MtWheel is None:
        self.u4MtWheel = 0.
      if self.u8MasterCylinderPressure is None:
        self.u8MasterCylinderPressure = 0.
      if self.u8SteeringWheel is None:
        self.u8SteeringWheel = 0.
      if self.u8ThrottlePedal is None:
        self.u8ThrottlePedal = 0.
      if self.u8BrakePedal is None:
        self.u8BrakePedal = 0.
      if self.u8AccelTgt is None:
        self.u8AccelTgt = 0.
      if self.u8SteeringTorque is None:
        self.u8SteeringTorque = 0.
      if self.u8StopDistance is None:
        self.u8StopDistance = 0.
      if self.u8TargetSpeed is None:
        self.u8TargetSpeed = 0.
      if self.u8Vx is None:
        self.u8Vx = 0.
      if self.u8Wr is None:
        self.u8Wr = 0.
      if self.u8VLFWheelSpd is None:
        self.u8VLFWheelSpd = 0.
      if self.u8VRFWheelSpd is None:
        self.u8VRFWheelSpd = 0.
      if self.u8VLRWheelSpd is None:
        self.u8VLRWheelSpd = 0.
      if self.u8VRRWheelSpd is None:
        self.u8VRRWheelSpd = 0.
      if self.u8Ax is None:
        self.u8Ax = 0.
      if self.u8Ay is None:
        self.u8Ay = 0.
      if self.u8SteeringWheelAngularRate is None:
        self.u8SteeringWheelAngularRate = 0.
      if self.u8DrvTorqAct is None:
        self.u8DrvTorqAct = 0.
      if self.u8Xmc is None:
        self.u8Xmc = 0.
      if self.u8Ymc is None:
        self.u8Ymc = 0.
      if self.u8YawThetaVehicle is None:
        self.u8YawThetaVehicle = 0.
      if self.u8PitchThetaVehicle is None:
        self.u8PitchThetaVehicle = 0.
      if self.u8RollThetaVehicle is None:
        self.u8RollThetaVehicle = 0.
      if self.u8PitchRateVehicle is None:
        self.u8PitchRateVehicle = 0.
      if self.u8RollRateVehicle is None:
        self.u8RollRateVehicle = 0.
      if self.u8SinSlopeout is None:
        self.u8SinSlopeout = 0.
      if self.u8VehicleCurv is None:
        self.u8VehicleCurv = 0.
      if self.u8TmotorCmd is None:
        self.u8TmotorCmd = 0.
      if self.u8Tmotor is None:
        self.u8Tmotor = 0.
      if self.u8EnergySourceLevel is None:
        self.u8EnergySourceLevel = 0.
      if self.u8WLFWheelSpd is None:
        self.u8WLFWheelSpd = 0.
      if self.u8WRFWheelSpd is None:
        self.u8WRFWheelSpd = 0.
      if self.u8WLRWheelSpd is None:
        self.u8WLRWheelSpd = 0.
      if self.u8WRRWheelSpd is None:
        self.u8WRRWheelSpd = 0.
      if self.u8WGearSpd is None:
        self.u8WGearSpd = 0.
      if self.u1LFWheelRotatedDir is None:
        self.u1LFWheelRotatedDir = 0
      if self.u1LRWheelRotatedDir is None:
        self.u1LRWheelRotatedDir = 0
      if self.u1RFWheelRotatedDir is None:
        self.u1RFWheelRotatedDir = 0
      if self.u1RRWheelRotatedDir is None:
        self.u1RRWheelRotatedDir = 0
      if self.u1BrakePedalStatus is None:
        self.u1BrakePedalStatus = 0
      if self.u1VehicleDir is None:
        self.u1VehicleDir = 0
      if self.u1BrkType is None:
        self.u1BrkType = 0
      if self.u1Gear is None:
        self.u1Gear = 0
    else:
      self.u4ObjectId = 0
      self.u4MtWheel = 0.
      self.u8MasterCylinderPressure = 0.
      self.u8SteeringWheel = 0.
      self.u8ThrottlePedal = 0.
      self.u8BrakePedal = 0.
      self.u8AccelTgt = 0.
      self.u8SteeringTorque = 0.
      self.u8StopDistance = 0.
      self.u8TargetSpeed = 0.
      self.u8Vx = 0.
      self.u8Wr = 0.
      self.u8VLFWheelSpd = 0.
      self.u8VRFWheelSpd = 0.
      self.u8VLRWheelSpd = 0.
      self.u8VRRWheelSpd = 0.
      self.u8Ax = 0.
      self.u8Ay = 0.
      self.u8SteeringWheelAngularRate = 0.
      self.u8DrvTorqAct = 0.
      self.u8Xmc = 0.
      self.u8Ymc = 0.
      self.u8YawThetaVehicle = 0.
      self.u8PitchThetaVehicle = 0.
      self.u8RollThetaVehicle = 0.
      self.u8PitchRateVehicle = 0.
      self.u8RollRateVehicle = 0.
      self.u8SinSlopeout = 0.
      self.u8VehicleCurv = 0.
      self.u8TmotorCmd = 0.
      self.u8Tmotor = 0.
      self.u8EnergySourceLevel = 0.
      self.u8WLFWheelSpd = 0.
      self.u8WRFWheelSpd = 0.
      self.u8WLRWheelSpd = 0.
      self.u8WRRWheelSpd = 0.
      self.u8WGearSpd = 0.
      self.u1LFWheelRotatedDir = 0
      self.u1LRWheelRotatedDir = 0
      self.u1RFWheelRotatedDir = 0
      self.u1RRWheelRotatedDir = 0
      self.u1BrakePedalStatus = 0
      self.u1VehicleDir = 0
      self.u1BrkType = 0
      self.u1Gear = 0

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
      buff.write(_get_struct_If35d7Bb().pack(_x.u4ObjectId, _x.u4MtWheel, _x.u8MasterCylinderPressure, _x.u8SteeringWheel, _x.u8ThrottlePedal, _x.u8BrakePedal, _x.u8AccelTgt, _x.u8SteeringTorque, _x.u8StopDistance, _x.u8TargetSpeed, _x.u8Vx, _x.u8Wr, _x.u8VLFWheelSpd, _x.u8VRFWheelSpd, _x.u8VLRWheelSpd, _x.u8VRRWheelSpd, _x.u8Ax, _x.u8Ay, _x.u8SteeringWheelAngularRate, _x.u8DrvTorqAct, _x.u8Xmc, _x.u8Ymc, _x.u8YawThetaVehicle, _x.u8PitchThetaVehicle, _x.u8RollThetaVehicle, _x.u8PitchRateVehicle, _x.u8RollRateVehicle, _x.u8SinSlopeout, _x.u8VehicleCurv, _x.u8TmotorCmd, _x.u8Tmotor, _x.u8EnergySourceLevel, _x.u8WLFWheelSpd, _x.u8WRFWheelSpd, _x.u8WLRWheelSpd, _x.u8WRRWheelSpd, _x.u8WGearSpd, _x.u1LFWheelRotatedDir, _x.u1LRWheelRotatedDir, _x.u1RFWheelRotatedDir, _x.u1RRWheelRotatedDir, _x.u1BrakePedalStatus, _x.u1VehicleDir, _x.u1BrkType, _x.u1Gear))
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
      end += 296
      (_x.u4ObjectId, _x.u4MtWheel, _x.u8MasterCylinderPressure, _x.u8SteeringWheel, _x.u8ThrottlePedal, _x.u8BrakePedal, _x.u8AccelTgt, _x.u8SteeringTorque, _x.u8StopDistance, _x.u8TargetSpeed, _x.u8Vx, _x.u8Wr, _x.u8VLFWheelSpd, _x.u8VRFWheelSpd, _x.u8VLRWheelSpd, _x.u8VRRWheelSpd, _x.u8Ax, _x.u8Ay, _x.u8SteeringWheelAngularRate, _x.u8DrvTorqAct, _x.u8Xmc, _x.u8Ymc, _x.u8YawThetaVehicle, _x.u8PitchThetaVehicle, _x.u8RollThetaVehicle, _x.u8PitchRateVehicle, _x.u8RollRateVehicle, _x.u8SinSlopeout, _x.u8VehicleCurv, _x.u8TmotorCmd, _x.u8Tmotor, _x.u8EnergySourceLevel, _x.u8WLFWheelSpd, _x.u8WRFWheelSpd, _x.u8WLRWheelSpd, _x.u8WRRWheelSpd, _x.u8WGearSpd, _x.u1LFWheelRotatedDir, _x.u1LRWheelRotatedDir, _x.u1RFWheelRotatedDir, _x.u1RRWheelRotatedDir, _x.u1BrakePedalStatus, _x.u1VehicleDir, _x.u1BrkType, _x.u1Gear,) = _get_struct_If35d7Bb().unpack(str[start:end])
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
      buff.write(_get_struct_If35d7Bb().pack(_x.u4ObjectId, _x.u4MtWheel, _x.u8MasterCylinderPressure, _x.u8SteeringWheel, _x.u8ThrottlePedal, _x.u8BrakePedal, _x.u8AccelTgt, _x.u8SteeringTorque, _x.u8StopDistance, _x.u8TargetSpeed, _x.u8Vx, _x.u8Wr, _x.u8VLFWheelSpd, _x.u8VRFWheelSpd, _x.u8VLRWheelSpd, _x.u8VRRWheelSpd, _x.u8Ax, _x.u8Ay, _x.u8SteeringWheelAngularRate, _x.u8DrvTorqAct, _x.u8Xmc, _x.u8Ymc, _x.u8YawThetaVehicle, _x.u8PitchThetaVehicle, _x.u8RollThetaVehicle, _x.u8PitchRateVehicle, _x.u8RollRateVehicle, _x.u8SinSlopeout, _x.u8VehicleCurv, _x.u8TmotorCmd, _x.u8Tmotor, _x.u8EnergySourceLevel, _x.u8WLFWheelSpd, _x.u8WRFWheelSpd, _x.u8WLRWheelSpd, _x.u8WRRWheelSpd, _x.u8WGearSpd, _x.u1LFWheelRotatedDir, _x.u1LRWheelRotatedDir, _x.u1RFWheelRotatedDir, _x.u1RRWheelRotatedDir, _x.u1BrakePedalStatus, _x.u1VehicleDir, _x.u1BrkType, _x.u1Gear))
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
      end += 296
      (_x.u4ObjectId, _x.u4MtWheel, _x.u8MasterCylinderPressure, _x.u8SteeringWheel, _x.u8ThrottlePedal, _x.u8BrakePedal, _x.u8AccelTgt, _x.u8SteeringTorque, _x.u8StopDistance, _x.u8TargetSpeed, _x.u8Vx, _x.u8Wr, _x.u8VLFWheelSpd, _x.u8VRFWheelSpd, _x.u8VLRWheelSpd, _x.u8VRRWheelSpd, _x.u8Ax, _x.u8Ay, _x.u8SteeringWheelAngularRate, _x.u8DrvTorqAct, _x.u8Xmc, _x.u8Ymc, _x.u8YawThetaVehicle, _x.u8PitchThetaVehicle, _x.u8RollThetaVehicle, _x.u8PitchRateVehicle, _x.u8RollRateVehicle, _x.u8SinSlopeout, _x.u8VehicleCurv, _x.u8TmotorCmd, _x.u8Tmotor, _x.u8EnergySourceLevel, _x.u8WLFWheelSpd, _x.u8WRFWheelSpd, _x.u8WLRWheelSpd, _x.u8WRRWheelSpd, _x.u8WGearSpd, _x.u1LFWheelRotatedDir, _x.u1LRWheelRotatedDir, _x.u1RFWheelRotatedDir, _x.u1RRWheelRotatedDir, _x.u1BrakePedalStatus, _x.u1VehicleDir, _x.u1BrkType, _x.u1Gear,) = _get_struct_If35d7Bb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_If35d7Bb = None
def _get_struct_If35d7Bb():
    global _struct_If35d7Bb
    if _struct_If35d7Bb is None:
        _struct_If35d7Bb = struct.Struct("<If35d7Bb")
    return _struct_If35d7Bb