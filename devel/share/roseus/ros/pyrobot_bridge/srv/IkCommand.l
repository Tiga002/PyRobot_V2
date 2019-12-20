;; Auto-generated. Do not edit!


(when (boundp 'pyrobot_bridge::IkCommand)
  (if (not (find-package "PYROBOT_BRIDGE"))
    (make-package "PYROBOT_BRIDGE"))
  (shadow 'IkCommand (find-package "PYROBOT_BRIDGE")))
(unless (find-package "PYROBOT_BRIDGE::IKCOMMAND")
  (make-package "PYROBOT_BRIDGE::IKCOMMAND"))
(unless (find-package "PYROBOT_BRIDGE::IKCOMMANDREQUEST")
  (make-package "PYROBOT_BRIDGE::IKCOMMANDREQUEST"))
(unless (find-package "PYROBOT_BRIDGE::IKCOMMANDRESPONSE")
  (make-package "PYROBOT_BRIDGE::IKCOMMANDRESPONSE"))

(in-package "ROS")





(defclass pyrobot_bridge::IkCommandRequest
  :super ros::object
  :slots (_pose _tolerance _init_joint_positions ))

(defmethod pyrobot_bridge::IkCommandRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tolerance __tolerance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:init_joint_positions __init_joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _tolerance __tolerance)
   (setq _init_joint_positions __init_joint_positions)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:init_joint_positions
   (&optional __init_joint_positions)
   (if __init_joint_positions (setq _init_joint_positions __init_joint_positions)) _init_joint_positions)
  (:serialization-length
   ()
   (+
    ;; float64[] _pose
    (* 8    (length _pose)) 4
    ;; float64[] _tolerance
    (* 8    (length _tolerance)) 4
    ;; float64[] _init_joint_positions
    (* 8    (length _init_joint_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tolerance
     (write-long (length _tolerance) s)
     (dotimes (i (length _tolerance))
       (sys::poke (elt _tolerance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _init_joint_positions
     (write-long (length _init_joint_positions) s)
     (dotimes (i (length _init_joint_positions))
       (sys::poke (elt _init_joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tolerance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tolerance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _init_joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _init_joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _init_joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass pyrobot_bridge::IkCommandResponse
  :super ros::object
  :slots (_success _joint_positions ))

(defmethod pyrobot_bridge::IkCommandResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _joint_positions __joint_positions)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:joint_positions
   (&optional __joint_positions)
   (if __joint_positions (setq _joint_positions __joint_positions)) _joint_positions)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _joint_positions
     (write-long (length _joint_positions) s)
     (dotimes (i (length _joint_positions))
       (sys::poke (elt _joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass pyrobot_bridge::IkCommand
  :super ros::object
  :slots ())

(setf (get pyrobot_bridge::IkCommand :md5sum-) "927fa6572821a286edd5014fad18e19c")
(setf (get pyrobot_bridge::IkCommand :datatype-) "pyrobot_bridge/IkCommand")
(setf (get pyrobot_bridge::IkCommand :request) pyrobot_bridge::IkCommandRequest)
(setf (get pyrobot_bridge::IkCommand :response) pyrobot_bridge::IkCommandResponse)

(defmethod pyrobot_bridge::IkCommandRequest
  (:response () (instance pyrobot_bridge::IkCommandResponse :init)))

(setf (get pyrobot_bridge::IkCommandRequest :md5sum-) "927fa6572821a286edd5014fad18e19c")
(setf (get pyrobot_bridge::IkCommandRequest :datatype-) "pyrobot_bridge/IkCommandRequest")
(setf (get pyrobot_bridge::IkCommandRequest :definition-)
      "

float64[] pose
float64[] tolerance
float64[] init_joint_positions

---
bool success
float64[] joint_positions

")

(setf (get pyrobot_bridge::IkCommandResponse :md5sum-) "927fa6572821a286edd5014fad18e19c")
(setf (get pyrobot_bridge::IkCommandResponse :datatype-) "pyrobot_bridge/IkCommandResponse")
(setf (get pyrobot_bridge::IkCommandResponse :definition-)
      "

float64[] pose
float64[] tolerance
float64[] init_joint_positions

---
bool success
float64[] joint_positions

")



(provide :pyrobot_bridge/IkCommand "927fa6572821a286edd5014fad18e19c")


