
(cl:in-package :asdf)

(defsystem "orb_slam2_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Traj" :depends-on ("_package_Traj"))
    (:file "_package_Traj" :depends-on ("_package"))
  ))