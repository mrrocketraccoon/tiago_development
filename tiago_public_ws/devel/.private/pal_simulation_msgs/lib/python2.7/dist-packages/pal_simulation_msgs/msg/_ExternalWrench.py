# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pal_simulation_msgs/ExternalWrench.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import std_msgs.msg

class ExternalWrench(genpy.Message):
  _md5sum = "336010778c1866e3bca3bc8a7913851f"
  _type = "pal_simulation_msgs/ExternalWrench"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header                  header

string                  link_name
geometry_msgs/Wrench    wrench
geometry_msgs/Point     application_point
duration                duration

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
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['header','link_name','wrench','application_point','duration']
  _slot_types = ['std_msgs/Header','string','geometry_msgs/Wrench','geometry_msgs/Point','duration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,link_name,wrench,application_point,duration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ExternalWrench, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.link_name is None:
        self.link_name = ''
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.application_point is None:
        self.application_point = geometry_msgs.msg.Point()
      if self.duration is None:
        self.duration = genpy.Duration()
    else:
      self.header = std_msgs.msg.Header()
      self.link_name = ''
      self.wrench = geometry_msgs.msg.Wrench()
      self.application_point = geometry_msgs.msg.Point()
      self.duration = genpy.Duration()

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
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.link_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_9d2i().pack(_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.application_point.x, _x.application_point.y, _x.application_point.z, _x.duration.secs, _x.duration.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.application_point is None:
        self.application_point = geometry_msgs.msg.Point()
      if self.duration is None:
        self.duration = genpy.Duration()
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
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.link_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.link_name = str[start:end]
      _x = self
      start = end
      end += 80
      (_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.application_point.x, _x.application_point.y, _x.application_point.z, _x.duration.secs, _x.duration.nsecs,) = _get_struct_9d2i().unpack(str[start:end])
      self.duration.canon()
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.link_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_9d2i().pack(_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.application_point.x, _x.application_point.y, _x.application_point.z, _x.duration.secs, _x.duration.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.application_point is None:
        self.application_point = geometry_msgs.msg.Point()
      if self.duration is None:
        self.duration = genpy.Duration()
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
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.link_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.link_name = str[start:end]
      _x = self
      start = end
      end += 80
      (_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.application_point.x, _x.application_point.y, _x.application_point.z, _x.duration.secs, _x.duration.nsecs,) = _get_struct_9d2i().unpack(str[start:end])
      self.duration.canon()
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
_struct_9d2i = None
def _get_struct_9d2i():
    global _struct_9d2i
    if _struct_9d2i is None:
        _struct_9d2i = struct.Struct("<9d2i")
    return _struct_9d2i
