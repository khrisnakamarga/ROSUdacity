# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pulson_ros/RangeArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pulson_ros.msg
import std_msgs.msg

class RangeArray(genpy.Message):
  _md5sum = "23e3f5e6eddc2c1c710e256861e37d57"
  _type = "pulson_ros/RangeArray"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
pulson_ros/RangeMeasurement[] ranges

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: pulson_ros/RangeMeasurement
Header header

uint16 message_id
uint32 responder_id

uint8 range_status
uint8 antenna_mode

uint16 stopwatch_time

uint32 precision_range
uint32 coarse_range
uint32 filtered_range

uint16 precision_range_error
uint16 coarse_range_error
uint16 filtered_range_error

int16 filtered_velocity
uint16 filtered_velocity_error

uint32 timestamp
"""
  __slots__ = ['header','ranges']
  _slot_types = ['std_msgs/Header','pulson_ros/RangeMeasurement[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ranges

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RangeArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ranges is None:
        self.ranges = []
    else:
      self.header = std_msgs.msg.Header()
      self.ranges = []

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.ranges)
      buff.write(_struct_I.pack(length))
      for val1 in self.ranges:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_HI2BH3I3HhHI().pack(_x.message_id, _x.responder_id, _x.range_status, _x.antenna_mode, _x.stopwatch_time, _x.precision_range, _x.coarse_range, _x.filtered_range, _x.precision_range_error, _x.coarse_range_error, _x.filtered_range_error, _x.filtered_velocity, _x.filtered_velocity_error, _x.timestamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ranges is None:
        self.ranges = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ranges = []
      for i in range(0, length):
        val1 = pulson_ros.msg.RangeMeasurement()
        _v3 = val1.header
        start = end
        end += 4
        (_v3.seq,) = _get_struct_I().unpack(str[start:end])
        _v4 = _v3.stamp
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.frame_id = str[start:end].decode('utf-8')
        else:
          _v3.frame_id = str[start:end]
        _x = val1
        start = end
        end += 36
        (_x.message_id, _x.responder_id, _x.range_status, _x.antenna_mode, _x.stopwatch_time, _x.precision_range, _x.coarse_range, _x.filtered_range, _x.precision_range_error, _x.coarse_range_error, _x.filtered_range_error, _x.filtered_velocity, _x.filtered_velocity_error, _x.timestamp,) = _get_struct_HI2BH3I3HhHI().unpack(str[start:end])
        self.ranges.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.ranges)
      buff.write(_struct_I.pack(length))
      for val1 in self.ranges:
        _v5 = val1.header
        buff.write(_get_struct_I().pack(_v5.seq))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_HI2BH3I3HhHI().pack(_x.message_id, _x.responder_id, _x.range_status, _x.antenna_mode, _x.stopwatch_time, _x.precision_range, _x.coarse_range, _x.filtered_range, _x.precision_range_error, _x.coarse_range_error, _x.filtered_range_error, _x.filtered_velocity, _x.filtered_velocity_error, _x.timestamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ranges is None:
        self.ranges = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ranges = []
      for i in range(0, length):
        val1 = pulson_ros.msg.RangeMeasurement()
        _v7 = val1.header
        start = end
        end += 4
        (_v7.seq,) = _get_struct_I().unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8')
        else:
          _v7.frame_id = str[start:end]
        _x = val1
        start = end
        end += 36
        (_x.message_id, _x.responder_id, _x.range_status, _x.antenna_mode, _x.stopwatch_time, _x.precision_range, _x.coarse_range, _x.filtered_range, _x.precision_range_error, _x.coarse_range_error, _x.filtered_range_error, _x.filtered_velocity, _x.filtered_velocity_error, _x.timestamp,) = _get_struct_HI2BH3I3HhHI().unpack(str[start:end])
        self.ranges.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

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
_struct_HI2BH3I3HhHI = None
def _get_struct_HI2BH3I3HhHI():
    global _struct_HI2BH3I3HhHI
    if _struct_HI2BH3I3HhHI is None:
        _struct_HI2BH3I3HhHI = struct.Struct("<HI2BH3I3HhHI")
    return _struct_HI2BH3I3HhHI
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
