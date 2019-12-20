;; Auto-generated. Do not edit!


(when (boundp 'pyrobot_bridge::FkCommand)
  (if (not (find-package "PYROBOT_BRIDGE"))
    (make-package "PYROBOT_BRIDGE"))
  (shadow 'FkCommand (find-package "PYROBOT_BRIDGE")))
(unless (find-package "PYROBOT_BRIDGE::FKCOMMAND")
  (make-package "PYROBOT_BRIDGE::FKCOMMAND"))
(unless (find-package "PYROBOT_BRIDGE::FKCOMMANDREQUEST")
  (make-package "PYROBOT_BRIDGE::FKCOMMANDREQUEST"))
(unless (find-package "PYROBOT_BRIDGE::FKCOMMANDRESPONSE")
  (make-package "PYROBOT_BRIDGE::FKCOMMANDRESPONSE"))

(in-package "ROS")





(defclass pyrobot_bridge::FkCommandRequest
  :super ros::object
  :slots (_joint_angles _end_frame ))

(defmethod pyrobot_bridge::FkCommandRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_frame __end_frame) "")
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _end_frame (string __end_frame))
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:end_frame
   (&optional __end_frame)
   (if __end_frame (setq _end_frame __end_frame)) _end_frame)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_angles
    (* 8    (length _joint_angles)) 4
    ;; string _end_frame
    4 (length _end_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _end_frame
       (write-long (length _end_frame) s) (princ _end_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _end_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pyrobot_bridge::FkCommandResponse
  :super ros::object
  :slots (_success _pos _quat ))

(defmethod pyrobot_bridge::FkCommandResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:quat __quat) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _pos __pos)
   (setq _quat __quat)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:quat
   (&optional __quat)
   (if __quat (setq _quat __quat)) _quat)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float64[] _pos
    (* 8    (length _pos)) 4
    ;; float64[] _quat
    (* 8    (length _quat)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _quat
     (write-long (length _quat) s)
     (dotimes (i (length _quat))
       (sys::poke (elt _quat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _quat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _quat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass pyrobot_bridge::FkCommand
  :super ros::object
  :slots ())

(setf (get pyrobot_bridge::FkCommand :md5sum-) "6a7a6cbcb17cacd9771eda9bb83c64a6")
(setf (get pyrobot_bridge::FkCommand :datatype-) "pyrobot_bridge/FkCommand")
(setf (get pyrobot_bridge::FkCommand :request) pyrobot_bridge::FkCommandRequest)
(setf (get pyrobot_bridge::FkCommand :response) pyrobot_bridge::FkCommandResponse)

(defmethod pyrobot_bridge::FkCommandRequest
  (:response () (instance pyrobot_bridge::FkCommandResponse :init)))

(setf (get pyrobot_bridge::FkCommandRequest :md5sum-) "6a7a6cbcb17cacd9771eda9bb83c64a6")
(setf (get pyrobot_bridge::FkCommandRequest :datatype-) "pyrobot_bridge/FkCommandRequest")
(setf (get pyrobot_bridge::FkCommandRequest :definition-)
      "

float64[] joint_angles
string end_frame

---
bool success
float64[] pos
float64[] quat

")

(setf (get pyrobot_bridge::FkCommandResponse :md5sum-) "6a7a6cbcb17cacd9771eda9bb83c64a6")
(setf (get pyrobot_bridge::FkCommandResponse :datatype-) "pyrobot_bridge/FkCommandResponse")
(setf (get pyrobot_bridge::FkCommandResponse :definition-)
      "

float64[] joint_angles
string end_frame

---
bool success
float64[] pos
float64[] quat

")



(provide :pyrobot_bridge/FkCommand "6a7a6cbcb17cacd9771eda9bb83c64a6")


