# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_msgs/first_message.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class first_message(genpy.Message):
  _md5sum = "f537432f8f1c04503d008c5851a94e1d"
  _type = "custom_msgs/first_message"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64 temprature
bool motor_stat
string debug_message
"""
  __slots__ = ['temprature','motor_stat','debug_message']
  _slot_types = ['int64','bool','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       temprature,motor_stat,debug_message

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(first_message, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.temprature is None:
        self.temprature = 0
      if self.motor_stat is None:
        self.motor_stat = False
      if self.debug_message is None:
        self.debug_message = ''
    else:
      self.temprature = 0
      self.motor_stat = False
      self.debug_message = ''

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
      buff.write(_get_struct_qB().pack(_x.temprature, _x.motor_stat))
      _x = self.debug_message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      end += 9
      (_x.temprature, _x.motor_stat,) = _get_struct_qB().unpack(str[start:end])
      self.motor_stat = bool(self.motor_stat)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.debug_message = str[start:end].decode('utf-8')
      else:
        self.debug_message = str[start:end]
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
      buff.write(_get_struct_qB().pack(_x.temprature, _x.motor_stat))
      _x = self.debug_message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      end += 9
      (_x.temprature, _x.motor_stat,) = _get_struct_qB().unpack(str[start:end])
      self.motor_stat = bool(self.motor_stat)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.debug_message = str[start:end].decode('utf-8')
      else:
        self.debug_message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_qB = None
def _get_struct_qB():
    global _struct_qB
    if _struct_qB is None:
        _struct_qB = struct.Struct("<qB")
    return _struct_qB
