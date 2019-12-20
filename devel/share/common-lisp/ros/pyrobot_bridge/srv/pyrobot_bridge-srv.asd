
(cl:in-package :asdf)

(defsystem "pyrobot_bridge-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FkCommand" :depends-on ("_package_FkCommand"))
    (:file "_package_FkCommand" :depends-on ("_package"))
    (:file "IkCommand" :depends-on ("_package_IkCommand"))
    (:file "_package_IkCommand" :depends-on ("_package"))
  ))