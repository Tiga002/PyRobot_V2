;; Auto-generated. Do not edit!


(when (boundp 'orb_slam2_ros::Traj)
  (if (not (find-package "ORB_SLAM2_ROS"))
    (make-package "ORB_SLAM2_ROS"))
  (shadow 'Traj (find-package "ORB_SLAM2_ROS")))
(unless (find-package "ORB_SLAM2_ROS::TRAJ")
  (make-package "ORB_SLAM2_ROS::TRAJ"))

(in-package "ROS")
;;//! \htmlinclude Traj.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass orb_slam2_ros::Traj
  :super ros::object
  :slots (_header _poses _mnIds ))

(defmethod orb_slam2_ros::Traj
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:mnIds __mnIds) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _poses __poses)
   (setq _mnIds __mnIds)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:mnIds
   (&optional __mnIds)
   (if __mnIds (setq _mnIds __mnIds)) _mnIds)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; uint32[] _mnIds
    (* 4    (length _mnIds)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; uint32[] _mnIds
     (write-long (length _mnIds) s)
     (dotimes (i (length _mnIds))
       (write-long (elt _mnIds i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _mnIds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mnIds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mnIds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get orb_slam2_ros::Traj :md5sum-) "5880ce1007ffb54f9d4910dd5b0777b0")
(setf (get orb_slam2_ros::Traj :datatype-) "orb_slam2_ros/Traj")
(setf (get orb_slam2_ros::Traj :definition-)
      "Header header

geometry_msgs/Pose[] poses
uint32[] mnIds
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

")



(provide :orb_slam2_ros/Traj "5880ce1007ffb54f9d4910dd5b0777b0")


