# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ar_track_alvar_msgs/AlvarMarkers.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import ar_track_alvar_msgs.msg
import std_msgs.msg

class AlvarMarkers(genpy.Message):
  _md5sum = "46d2973c30c1f97dd0cd7992388c4abb"
  _type = "ar_track_alvar_msgs/AlvarMarkers"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
AlvarMarker[] markers

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
MSG: ar_track_alvar_msgs/AlvarMarker
Header header
uint32 id
uint32 confidence
geometry_msgs/PoseStamped pose
geometry_msgs/PoseStamped pose_img_0
geometry_msgs/PoseStamped pose_img_1
geometry_msgs/PoseStamped pose_img_2
geometry_msgs/PoseStamped pose_img_3

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
"""
  __slots__ = ['header','markers']
  _slot_types = ['std_msgs/Header','ar_track_alvar_msgs/AlvarMarker[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,markers

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AlvarMarkers, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.markers is None:
        self.markers = []
    else:
      self.header = std_msgs.msg.Header()
      self.markers = []

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
      length = len(self.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.markers:
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
        buff.write(_get_struct_2I().pack(_x.id, _x.confidence))
        _v3 = val1.pose
        _v4 = _v3.header
        buff.write(_get_struct_I().pack(_v4.seq))
        _v5 = _v4.stamp
        _x = _v5
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v4.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v6 = _v3.pose
        _v7 = _v6.position
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v8 = _v6.orientation
        _x = _v8
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v9 = val1.pose_img_0
        _v10 = _v9.header
        buff.write(_get_struct_I().pack(_v10.seq))
        _v11 = _v10.stamp
        _x = _v11
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v10.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v12 = _v9.pose
        _v13 = _v12.position
        _x = _v13
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v14 = _v12.orientation
        _x = _v14
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v15 = val1.pose_img_1
        _v16 = _v15.header
        buff.write(_get_struct_I().pack(_v16.seq))
        _v17 = _v16.stamp
        _x = _v17
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v16.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v18 = _v15.pose
        _v19 = _v18.position
        _x = _v19
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v20 = _v18.orientation
        _x = _v20
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v21 = val1.pose_img_2
        _v22 = _v21.header
        buff.write(_get_struct_I().pack(_v22.seq))
        _v23 = _v22.stamp
        _x = _v23
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v22.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v24 = _v21.pose
        _v25 = _v24.position
        _x = _v25
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v26 = _v24.orientation
        _x = _v26
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v27 = val1.pose_img_3
        _v28 = _v27.header
        buff.write(_get_struct_I().pack(_v28.seq))
        _v29 = _v28.stamp
        _x = _v29
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v28.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v30 = _v27.pose
        _v31 = _v30.position
        _x = _v31
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v32 = _v30.orientation
        _x = _v32
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
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
      if self.markers is None:
        self.markers = None
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
      self.markers = []
      for i in range(0, length):
        val1 = ar_track_alvar_msgs.msg.AlvarMarker()
        _v33 = val1.header
        start = end
        end += 4
        (_v33.seq,) = _get_struct_I().unpack(str[start:end])
        _v34 = _v33.stamp
        _x = _v34
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v33.frame_id = str[start:end].decode('utf-8')
        else:
          _v33.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.id, _x.confidence,) = _get_struct_2I().unpack(str[start:end])
        _v35 = val1.pose
        _v36 = _v35.header
        start = end
        end += 4
        (_v36.seq,) = _get_struct_I().unpack(str[start:end])
        _v37 = _v36.stamp
        _x = _v37
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v36.frame_id = str[start:end].decode('utf-8')
        else:
          _v36.frame_id = str[start:end]
        _v38 = _v35.pose
        _v39 = _v38.position
        _x = _v39
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v40 = _v38.orientation
        _x = _v40
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v41 = val1.pose_img_0
        _v42 = _v41.header
        start = end
        end += 4
        (_v42.seq,) = _get_struct_I().unpack(str[start:end])
        _v43 = _v42.stamp
        _x = _v43
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v42.frame_id = str[start:end].decode('utf-8')
        else:
          _v42.frame_id = str[start:end]
        _v44 = _v41.pose
        _v45 = _v44.position
        _x = _v45
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v46 = _v44.orientation
        _x = _v46
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v47 = val1.pose_img_1
        _v48 = _v47.header
        start = end
        end += 4
        (_v48.seq,) = _get_struct_I().unpack(str[start:end])
        _v49 = _v48.stamp
        _x = _v49
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v48.frame_id = str[start:end].decode('utf-8')
        else:
          _v48.frame_id = str[start:end]
        _v50 = _v47.pose
        _v51 = _v50.position
        _x = _v51
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v52 = _v50.orientation
        _x = _v52
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v53 = val1.pose_img_2
        _v54 = _v53.header
        start = end
        end += 4
        (_v54.seq,) = _get_struct_I().unpack(str[start:end])
        _v55 = _v54.stamp
        _x = _v55
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v54.frame_id = str[start:end].decode('utf-8')
        else:
          _v54.frame_id = str[start:end]
        _v56 = _v53.pose
        _v57 = _v56.position
        _x = _v57
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v58 = _v56.orientation
        _x = _v58
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v59 = val1.pose_img_3
        _v60 = _v59.header
        start = end
        end += 4
        (_v60.seq,) = _get_struct_I().unpack(str[start:end])
        _v61 = _v60.stamp
        _x = _v61
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v60.frame_id = str[start:end].decode('utf-8')
        else:
          _v60.frame_id = str[start:end]
        _v62 = _v59.pose
        _v63 = _v62.position
        _x = _v63
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v64 = _v62.orientation
        _x = _v64
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.markers.append(val1)
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
      length = len(self.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.markers:
        _v65 = val1.header
        buff.write(_get_struct_I().pack(_v65.seq))
        _v66 = _v65.stamp
        _x = _v66
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v65.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.id, _x.confidence))
        _v67 = val1.pose
        _v68 = _v67.header
        buff.write(_get_struct_I().pack(_v68.seq))
        _v69 = _v68.stamp
        _x = _v69
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v68.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v70 = _v67.pose
        _v71 = _v70.position
        _x = _v71
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v72 = _v70.orientation
        _x = _v72
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v73 = val1.pose_img_0
        _v74 = _v73.header
        buff.write(_get_struct_I().pack(_v74.seq))
        _v75 = _v74.stamp
        _x = _v75
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v74.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v76 = _v73.pose
        _v77 = _v76.position
        _x = _v77
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v78 = _v76.orientation
        _x = _v78
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v79 = val1.pose_img_1
        _v80 = _v79.header
        buff.write(_get_struct_I().pack(_v80.seq))
        _v81 = _v80.stamp
        _x = _v81
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v80.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v82 = _v79.pose
        _v83 = _v82.position
        _x = _v83
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v84 = _v82.orientation
        _x = _v84
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v85 = val1.pose_img_2
        _v86 = _v85.header
        buff.write(_get_struct_I().pack(_v86.seq))
        _v87 = _v86.stamp
        _x = _v87
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v86.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v88 = _v85.pose
        _v89 = _v88.position
        _x = _v89
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v90 = _v88.orientation
        _x = _v90
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v91 = val1.pose_img_3
        _v92 = _v91.header
        buff.write(_get_struct_I().pack(_v92.seq))
        _v93 = _v92.stamp
        _x = _v93
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v92.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v94 = _v91.pose
        _v95 = _v94.position
        _x = _v95
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v96 = _v94.orientation
        _x = _v96
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
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
      if self.markers is None:
        self.markers = None
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
      self.markers = []
      for i in range(0, length):
        val1 = ar_track_alvar_msgs.msg.AlvarMarker()
        _v97 = val1.header
        start = end
        end += 4
        (_v97.seq,) = _get_struct_I().unpack(str[start:end])
        _v98 = _v97.stamp
        _x = _v98
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v97.frame_id = str[start:end].decode('utf-8')
        else:
          _v97.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.id, _x.confidence,) = _get_struct_2I().unpack(str[start:end])
        _v99 = val1.pose
        _v100 = _v99.header
        start = end
        end += 4
        (_v100.seq,) = _get_struct_I().unpack(str[start:end])
        _v101 = _v100.stamp
        _x = _v101
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v100.frame_id = str[start:end].decode('utf-8')
        else:
          _v100.frame_id = str[start:end]
        _v102 = _v99.pose
        _v103 = _v102.position
        _x = _v103
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v104 = _v102.orientation
        _x = _v104
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v105 = val1.pose_img_0
        _v106 = _v105.header
        start = end
        end += 4
        (_v106.seq,) = _get_struct_I().unpack(str[start:end])
        _v107 = _v106.stamp
        _x = _v107
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v106.frame_id = str[start:end].decode('utf-8')
        else:
          _v106.frame_id = str[start:end]
        _v108 = _v105.pose
        _v109 = _v108.position
        _x = _v109
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v110 = _v108.orientation
        _x = _v110
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v111 = val1.pose_img_1
        _v112 = _v111.header
        start = end
        end += 4
        (_v112.seq,) = _get_struct_I().unpack(str[start:end])
        _v113 = _v112.stamp
        _x = _v113
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v112.frame_id = str[start:end].decode('utf-8')
        else:
          _v112.frame_id = str[start:end]
        _v114 = _v111.pose
        _v115 = _v114.position
        _x = _v115
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v116 = _v114.orientation
        _x = _v116
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v117 = val1.pose_img_2
        _v118 = _v117.header
        start = end
        end += 4
        (_v118.seq,) = _get_struct_I().unpack(str[start:end])
        _v119 = _v118.stamp
        _x = _v119
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v118.frame_id = str[start:end].decode('utf-8')
        else:
          _v118.frame_id = str[start:end]
        _v120 = _v117.pose
        _v121 = _v120.position
        _x = _v121
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v122 = _v120.orientation
        _x = _v122
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v123 = val1.pose_img_3
        _v124 = _v123.header
        start = end
        end += 4
        (_v124.seq,) = _get_struct_I().unpack(str[start:end])
        _v125 = _v124.stamp
        _x = _v125
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v124.frame_id = str[start:end].decode('utf-8')
        else:
          _v124.frame_id = str[start:end]
        _v126 = _v123.pose
        _v127 = _v126.position
        _x = _v127
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v128 = _v126.orientation
        _x = _v128
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.markers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
