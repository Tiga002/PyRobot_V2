
(cl:in-package :asdf)

(defsystem "locobot_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointCommand" :depends-on ("_package_JointCommand"))
    (:file "_package_JointCommand" :depends-on ("_package"))
  ))