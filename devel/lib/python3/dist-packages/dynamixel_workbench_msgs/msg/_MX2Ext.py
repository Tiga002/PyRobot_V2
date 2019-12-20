# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dynamixel_workbench_msgs/MX2Ext.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MX2Ext(genpy.Message):
  _md5sum = "e5260697f25a6834d84f685c2f474e33"
  _type = "dynamixel_workbench_msgs/MX2Ext"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# This message is compatible with control table of Dynamixel MX(2.0) Series (MX-64T/MX64-R/MX-64AT/MX-64AR(2.0), MX-106T/MX-106R(2.0))
# If you want to specific information about control table, please follow the link (http://emanual.robotis.com/)

uint16 Model_Number
uint8  Firmware_Version
uint8  ID
uint8  Baud_Rate
uint8  Return_Delay_Time
uint8  Drive_Mode
uint8  Operating_Mode
uint8  Secondary_ID
uint8  Protocol_Version
int32  Homing_Offset
uint32 Moving_Threshold
uint8  Temperature_Limit
uint16 Max_Voltage_Limit
uint16 Min_Voltage_Limit
uint16 PWM_Limit
uint16 Current_Limit
uint32 Acceleration_Limit
uint32 Velocity_Limit
uint32 Max_Position_Limit
uint32 Min_Position_Limit
uint8  Shutdown

uint8  Torque_Enable
uint8  LED
uint8  Status_Return_Level
uint8  Registered_Instruction
uint8  Hardware_Error_Status
uint16 Velocity_I_Gain
uint16 Velocity_P_Gain
uint16 Position_D_Gain
uint16 Position_I_Gain
uint16 Position_P_Gain
uint16 Feedforward_2nd_Gain
uint16 Feedforward_1st_Gain
uint8  Bus_Watchdog
int16  Goal_PWM
int16  Goal_Current
int32  Goal_Velocity
uint32 Profile_Acceleration
uint32 Profile_Velocity
uint32 Goal_Position
uint16 Realtime_Tick
uint8  Moving
uint8  Moving_Status
int16  Present_PWM
int16  Present_Current
int32  Present_Velocity
int32  Present_Position
uint32 Velocity_Trajectory
uint32 Position_Trajectory
uint16 Present_Input_Voltage
uint8  Present_Temperature
"""
  __slots__ = ['Model_Number','Firmware_Version','ID','Baud_Rate','Return_Delay_Time','Drive_Mode','Operating_Mode','Secondary_ID','Protocol_Version','Homing_Offset','Moving_Threshold','Temperature_Limit','Max_Voltage_Limit','Min_Voltage_Limit','PWM_Limit','Current_Limit','Acceleration_Limit','Velocity_Limit','Max_Position_Limit','Min_Position_Limit','Shutdown','Torque_Enable','LED','Status_Return_Level','Registered_Instruction','Hardware_Error_Status','Velocity_I_Gain','Velocity_P_Gain','Position_D_Gain','Position_I_Gain','Position_P_Gain','Feedforward_2nd_Gain','Feedforward_1st_Gain','Bus_Watchdog','Goal_PWM','Goal_Current','Goal_Velocity','Profile_Acceleration','Profile_Velocity','Goal_Position','Realtime_Tick','Moving','Moving_Status','Present_PWM','Present_Current','Present_Velocity','Present_Position','Velocity_Trajectory','Position_Trajectory','Present_Input_Voltage','Present_Temperature']
  _slot_types = ['uint16','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','int32','uint32','uint8','uint16','uint16','uint16','uint16','uint32','uint32','uint32','uint32','uint8','uint8','uint8','uint8','uint8','uint8','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint8','int16','int16','int32','uint32','uint32','uint32','uint16','uint8','uint8','int16','int16','int32','int32','uint32','uint32','uint16','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Model_Number,Firmware_Version,ID,Baud_Rate,Return_Delay_Time,Drive_Mode,Operating_Mode,Secondary_ID,Protocol_Version,Homing_Offset,Moving_Threshold,Temperature_Limit,Max_Voltage_Limit,Min_Voltage_Limit,PWM_Limit,Current_Limit,Acceleration_Limit,Velocity_Limit,Max_Position_Limit,Min_Position_Limit,Shutdown,Torque_Enable,LED,Status_Return_Level,Registered_Instruction,Hardware_Error_Status,Velocity_I_Gain,Velocity_P_Gain,Position_D_Gain,Position_I_Gain,Position_P_Gain,Feedforward_2nd_Gain,Feedforward_1st_Gain,Bus_Watchdog,Goal_PWM,Goal_Current,Goal_Velocity,Profile_Acceleration,Profile_Velocity,Goal_Position,Realtime_Tick,Moving,Moving_Status,Present_PWM,Present_Current,Present_Velocity,Present_Position,Velocity_Trajectory,Position_Trajectory,Present_Input_Voltage,Present_Temperature

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MX2Ext, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Model_Number is None:
        self.Model_Number = 0
      if self.Firmware_Version is None:
        self.Firmware_Version = 0
      if self.ID is None:
        self.ID = 0
      if self.Baud_Rate is None:
        self.Baud_Rate = 0
      if self.Return_Delay_Time is None:
        self.Return_Delay_Time = 0
      if self.Drive_Mode is None:
        self.Drive_Mode = 0
      if self.Operating_Mode is None:
        self.Operating_Mode = 0
      if self.Secondary_ID is None:
        self.Secondary_ID = 0
      if self.Protocol_Version is None:
        self.Protocol_Version = 0
      if self.Homing_Offset is None:
        self.Homing_Offset = 0
      if self.Moving_Threshold is None:
        self.Moving_Threshold = 0
      if self.Temperature_Limit is None:
        self.Temperature_Limit = 0
      if self.Max_Voltage_Limit is None:
        self.Max_Voltage_Limit = 0
      if self.Min_Voltage_Limit is None:
        self.Min_Voltage_Limit = 0
      if self.PWM_Limit is None:
        self.PWM_Limit = 0
      if self.Current_Limit is None:
        self.Current_Limit = 0
      if self.Acceleration_Limit is None:
        self.Acceleration_Limit = 0
      if self.Velocity_Limit is None:
        self.Velocity_Limit = 0
      if self.Max_Position_Limit is None:
        self.Max_Position_Limit = 0
      if self.Min_Position_Limit is None:
        self.Min_Position_Limit = 0
      if self.Shutdown is None:
        self.Shutdown = 0
      if self.Torque_Enable is None:
        self.Torque_Enable = 0
      if self.LED is None:
        self.LED = 0
      if self.Status_Return_Level is None:
        self.Status_Return_Level = 0
      if self.Registered_Instruction is None:
        self.Registered_Instruction = 0
      if self.Hardware_Error_Status is None:
        self.Hardware_Error_Status = 0
      if self.Velocity_I_Gain is None:
        self.Velocity_I_Gain = 0
      if self.Velocity_P_Gain is None:
        self.Velocity_P_Gain = 0
      if self.Position_D_Gain is None:
        self.Position_D_Gain = 0
      if self.Position_I_Gain is None:
        self.Position_I_Gain = 0
      if self.Position_P_Gain is None:
        self.Position_P_Gain = 0
      if self.Feedforward_2nd_Gain is None:
        self.Feedforward_2nd_Gain = 0
      if self.Feedforward_1st_Gain is None:
        self.Feedforward_1st_Gain = 0
      if self.Bus_Watchdog is None:
        self.Bus_Watchdog = 0
      if self.Goal_PWM is None:
        self.Goal_PWM = 0
      if self.Goal_Current is None:
        self.Goal_Current = 0
      if self.Goal_Velocity is None:
        self.Goal_Velocity = 0
      if self.Profile_Acceleration is None:
        self.Profile_Acceleration = 0
      if self.Profile_Velocity is None:
        self.Profile_Velocity = 0
      if self.Goal_Position is None:
        self.Goal_Position = 0
      if self.Realtime_Tick is None:
        self.Realtime_Tick = 0
      if self.Moving is None:
        self.Moving = 0
      if self.Moving_Status is None:
        self.Moving_Status = 0
      if self.Present_PWM is None:
        self.Present_PWM = 0
      if self.Present_Current is None:
        self.Present_Current = 0
      if self.Present_Velocity is None:
        self.Present_Velocity = 0
      if self.Present_Position is None:
        self.Present_Position = 0
      if self.Velocity_Trajectory is None:
        self.Velocity_Trajectory = 0
      if self.Position_Trajectory is None:
        self.Position_Trajectory = 0
      if self.Present_Input_Voltage is None:
        self.Present_Input_Voltage = 0
      if self.Present_Temperature is None:
        self.Present_Temperature = 0
    else:
      self.Model_Number = 0
      self.Firmware_Version = 0
      self.ID = 0
      self.Baud_Rate = 0
      self.Return_Delay_Time = 0
      self.Drive_Mode = 0
      self.Operating_Mode = 0
      self.Secondary_ID = 0
      self.Protocol_Version = 0
      self.Homing_Offset = 0
      self.Moving_Threshold = 0
      self.Temperature_Limit = 0
      self.Max_Voltage_Limit = 0
      self.Min_Voltage_Limit = 0
      self.PWM_Limit = 0
      self.Current_Limit = 0
      self.Acceleration_Limit = 0
      self.Velocity_Limit = 0
      self.Max_Position_Limit = 0
      self.Min_Position_Limit = 0
      self.Shutdown = 0
      self.Torque_Enable = 0
      self.LED = 0
      self.Status_Return_Level = 0
      self.Registered_Instruction = 0
      self.Hardware_Error_Status = 0
      self.Velocity_I_Gain = 0
      self.Velocity_P_Gain = 0
      self.Position_D_Gain = 0
      self.Position_I_Gain = 0
      self.Position_P_Gain = 0
      self.Feedforward_2nd_Gain = 0
      self.Feedforward_1st_Gain = 0
      self.Bus_Watchdog = 0
      self.Goal_PWM = 0
      self.Goal_Current = 0
      self.Goal_Velocity = 0
      self.Profile_Acceleration = 0
      self.Profile_Velocity = 0
      self.Goal_Position = 0
      self.Realtime_Tick = 0
      self.Moving = 0
      self.Moving_Status = 0
      self.Present_PWM = 0
      self.Present_Current = 0
      self.Present_Velocity = 0
      self.Present_Position = 0
      self.Velocity_Trajectory = 0
      self.Position_Trajectory = 0
      self.Present_Input_Voltage = 0
      self.Present_Temperature = 0

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
      buff.write(_get_struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB().pack(_x.Model_Number, _x.Firmware_Version, _x.ID, _x.Baud_Rate, _x.Return_Delay_Time, _x.Drive_Mode, _x.Operating_Mode, _x.Secondary_ID, _x.Protocol_Version, _x.Homing_Offset, _x.Moving_Threshold, _x.Temperature_Limit, _x.Max_Voltage_Limit, _x.Min_Voltage_Limit, _x.PWM_Limit, _x.Current_Limit, _x.Acceleration_Limit, _x.Velocity_Limit, _x.Max_Position_Limit, _x.Min_Position_Limit, _x.Shutdown, _x.Torque_Enable, _x.LED, _x.Status_Return_Level, _x.Registered_Instruction, _x.Hardware_Error_Status, _x.Velocity_I_Gain, _x.Velocity_P_Gain, _x.Position_D_Gain, _x.Position_I_Gain, _x.Position_P_Gain, _x.Feedforward_2nd_Gain, _x.Feedforward_1st_Gain, _x.Bus_Watchdog, _x.Goal_PWM, _x.Goal_Current, _x.Goal_Velocity, _x.Profile_Acceleration, _x.Profile_Velocity, _x.Goal_Position, _x.Realtime_Tick, _x.Moving, _x.Moving_Status, _x.Present_PWM, _x.Present_Current, _x.Present_Velocity, _x.Present_Position, _x.Velocity_Trajectory, _x.Position_Trajectory, _x.Present_Input_Voltage, _x.Present_Temperature))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 111
      (_x.Model_Number, _x.Firmware_Version, _x.ID, _x.Baud_Rate, _x.Return_Delay_Time, _x.Drive_Mode, _x.Operating_Mode, _x.Secondary_ID, _x.Protocol_Version, _x.Homing_Offset, _x.Moving_Threshold, _x.Temperature_Limit, _x.Max_Voltage_Limit, _x.Min_Voltage_Limit, _x.PWM_Limit, _x.Current_Limit, _x.Acceleration_Limit, _x.Velocity_Limit, _x.Max_Position_Limit, _x.Min_Position_Limit, _x.Shutdown, _x.Torque_Enable, _x.LED, _x.Status_Return_Level, _x.Registered_Instruction, _x.Hardware_Error_Status, _x.Velocity_I_Gain, _x.Velocity_P_Gain, _x.Position_D_Gain, _x.Position_I_Gain, _x.Position_P_Gain, _x.Feedforward_2nd_Gain, _x.Feedforward_1st_Gain, _x.Bus_Watchdog, _x.Goal_PWM, _x.Goal_Current, _x.Goal_Velocity, _x.Profile_Acceleration, _x.Profile_Velocity, _x.Goal_Position, _x.Realtime_Tick, _x.Moving, _x.Moving_Status, _x.Present_PWM, _x.Present_Current, _x.Present_Velocity, _x.Present_Position, _x.Velocity_Trajectory, _x.Position_Trajectory, _x.Present_Input_Voltage, _x.Present_Temperature,) = _get_struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB().pack(_x.Model_Number, _x.Firmware_Version, _x.ID, _x.Baud_Rate, _x.Return_Delay_Time, _x.Drive_Mode, _x.Operating_Mode, _x.Secondary_ID, _x.Protocol_Version, _x.Homing_Offset, _x.Moving_Threshold, _x.Temperature_Limit, _x.Max_Voltage_Limit, _x.Min_Voltage_Limit, _x.PWM_Limit, _x.Current_Limit, _x.Acceleration_Limit, _x.Velocity_Limit, _x.Max_Position_Limit, _x.Min_Position_Limit, _x.Shutdown, _x.Torque_Enable, _x.LED, _x.Status_Return_Level, _x.Registered_Instruction, _x.Hardware_Error_Status, _x.Velocity_I_Gain, _x.Velocity_P_Gain, _x.Position_D_Gain, _x.Position_I_Gain, _x.Position_P_Gain, _x.Feedforward_2nd_Gain, _x.Feedforward_1st_Gain, _x.Bus_Watchdog, _x.Goal_PWM, _x.Goal_Current, _x.Goal_Velocity, _x.Profile_Acceleration, _x.Profile_Velocity, _x.Goal_Position, _x.Realtime_Tick, _x.Moving, _x.Moving_Status, _x.Present_PWM, _x.Present_Current, _x.Present_Velocity, _x.Present_Position, _x.Velocity_Trajectory, _x.Position_Trajectory, _x.Present_Input_Voltage, _x.Present_Temperature))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 111
      (_x.Model_Number, _x.Firmware_Version, _x.ID, _x.Baud_Rate, _x.Return_Delay_Time, _x.Drive_Mode, _x.Operating_Mode, _x.Secondary_ID, _x.Protocol_Version, _x.Homing_Offset, _x.Moving_Threshold, _x.Temperature_Limit, _x.Max_Voltage_Limit, _x.Min_Voltage_Limit, _x.PWM_Limit, _x.Current_Limit, _x.Acceleration_Limit, _x.Velocity_Limit, _x.Max_Position_Limit, _x.Min_Position_Limit, _x.Shutdown, _x.Torque_Enable, _x.LED, _x.Status_Return_Level, _x.Registered_Instruction, _x.Hardware_Error_Status, _x.Velocity_I_Gain, _x.Velocity_P_Gain, _x.Position_D_Gain, _x.Position_I_Gain, _x.Position_P_Gain, _x.Feedforward_2nd_Gain, _x.Feedforward_1st_Gain, _x.Bus_Watchdog, _x.Goal_PWM, _x.Goal_Current, _x.Goal_Velocity, _x.Profile_Acceleration, _x.Profile_Velocity, _x.Goal_Position, _x.Realtime_Tick, _x.Moving, _x.Moving_Status, _x.Present_PWM, _x.Present_Current, _x.Present_Velocity, _x.Present_Position, _x.Velocity_Trajectory, _x.Position_Trajectory, _x.Present_Input_Voltage, _x.Present_Temperature,) = _get_struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB = None
def _get_struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB():
    global _struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB
    if _struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB is None:
        _struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB = struct.Struct("<H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB")
    return _struct_H8BiIB4H4I6B7HB2hi3IH2B2h2i2IHB