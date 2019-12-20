;; Auto-generated. Do not edit!


(when (boundp 'ar_track_alvar_msgs::AlvarMarker)
  (if (not (find-package "AR_TRACK_ALVAR_MSGS"))
    (make-package "AR_TRACK_ALVAR_MSGS"))
  (shadow 'AlvarMarker (find-package "AR_TRACK_ALVAR_MSGS")))
(unless (find-package "AR_TRACK_ALVAR_MSGS::ALVARMARKER")
  (make-package "AR_TRACK_ALVAR_MSGS::ALVARMARKER"))

(in-package "ROS")
;;//! \htmlinclude AlvarMarker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ar_track_alvar_msgs::AlvarMarker
  :super ros::object
  :slots (_header _id _confidence _pose _pose_img_0 _pose_img_1 _pose_img_2 _pose_img_3 ))

(defmethod ar_track_alvar_msgs::AlvarMarker
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:confidence __confidence) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:pose_img_0 __pose_img_0) (instance geometry_msgs::PoseStamped :init))
    ((:pose_img_1 __pose_img_1) (instance geometry_msgs::PoseStamped :init))
    ((:pose_img_2 __pose_img_2) (instance geometry_msgs::PoseStamped :init))
    ((:pose_img_3 __pose_img_3) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _confidence (round __confidence))
   (setq _pose __pose)
   (setq _pose_img_0 __pose_img_0)
   (setq _pose_img_1 __pose_img_1)
   (setq _pose_img_2 __pose_img_2)
   (setq _pose_img_3 __pose_img_3)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:pose_img_0
   (&rest __pose_img_0)
   (if (keywordp (car __pose_img_0))
       (send* _pose_img_0 __pose_img_0)
     (progn
       (if __pose_img_0 (setq _pose_img_0 (car __pose_img_0)))
       _pose_img_0)))
  (:pose_img_1
   (&rest __pose_img_1)
   (if (keywordp (car __pose_img_1))
       (send* _pose_img_1 __pose_img_1)
     (progn
       (if __pose_img_1 (setq _pose_img_1 (car __pose_img_1)))
       _pose_img_1)))
  (:pose_img_2
   (&rest __pose_img_2)
   (if (keywordp (car __pose_img_2))
       (send* _pose_img_2 __pose_img_2)
     (progn
       (if __pose_img_2 (setq _pose_img_2 (car __pose_img_2)))
       _pose_img_2)))
  (:pose_img_3
   (&rest __pose_img_3)
   (if (keywordp (car __pose_img_3))
       (send* _pose_img_3 __pose_img_3)
     (progn
       (if __pose_img_3 (setq _pose_img_3 (car __pose_img_3)))
       _pose_img_3)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint32 _confidence
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_img_0
    (send _pose_img_0 :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_img_1
    (send _pose_img_1 :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_img_2
    (send _pose_img_2 :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_img_3
    (send _pose_img_3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _confidence
       (write-long _confidence s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/PoseStamped _pose_img_0
       (send _pose_img_0 :serialize s)
     ;; geometry_msgs/PoseStamped _pose_img_1
       (send _pose_img_1 :serialize s)
     ;; geometry_msgs/PoseStamped _pose_img_2
       (send _pose_img_2 :serialize s)
     ;; geometry_msgs/PoseStamped _pose_img_3
       (send _pose_img_3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _confidence
     (setq _confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_img_0
     (send _pose_img_0 :deserialize buf ptr-) (incf ptr- (send _pose_img_0 :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_img_1
     (send _pose_img_1 :deserialize buf ptr-) (incf ptr- (send _pose_img_1 :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_img_2
     (send _pose_img_2 :deserialize buf ptr-) (incf ptr- (send _pose_img_2 :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_img_3
     (send _pose_img_3 :deserialize buf ptr-) (incf ptr- (send _pose_img_3 :serialization-length))
   ;;
   self)
  )

(setf (get ar_track_alvar_msgs::AlvarMarker :md5sum-) "2cb98ba212070cd8fe95c2bdafca0cac")
(setf (get ar_track_alvar_msgs::AlvarMarker :datatype-) "ar_track_alvar_msgs/AlvarMarker")
(setf (get ar_track_alvar_msgs::AlvarMarker :definition-)
      "Header header
uint32 id
uint32 confidence
geometry_msgs/PoseStamped pose
geometry_msgs/PoseStamped pose_img_0
geometry_msgs/PoseStamped pose_img_1
geometry_msgs/PoseStamped pose_img_2
geometry_msgs/PoseStamped pose_img_3

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

")



(provide :ar_track_alvar_msgs/AlvarMarker "2cb98ba212070cd8fe95c2bdafca0cac")


