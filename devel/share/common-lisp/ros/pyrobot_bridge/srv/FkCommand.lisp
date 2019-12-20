; Auto-generated. Do not edit!


(cl:in-package pyrobot_bridge-srv)


;//! \htmlinclude FkCommand-request.msg.html

(cl:defclass <FkCommand-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (end_frame
    :reader end_frame
    :initarg :end_frame
    :type cl:string
    :initform ""))
)

(cl:defclass FkCommand-request (<FkCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FkCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FkCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pyrobot_bridge-srv:<FkCommand-request> is deprecated: use pyrobot_bridge-srv:FkCommand-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <FkCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyrobot_bridge-srv:joint_angles-val is deprecated.  Use pyrobot_bridge-srv:joint_angles instead.")
  (joint_angles m))

(cl:ensure-generic-function 'end_frame-val :lambda-list '(m))
(cl:defmethod end_frame-val ((m <FkCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyrobot_bridge-srv:end_frame-val is deprecated.  Use pyrobot_bridge-srv:end_frame instead.")
  (end_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FkCommand-request>) ostream)
  "Serializes a message object of type '<FkCommand-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FkCommand-request>) istream)
  "Deserializes a message object of type '<FkCommand-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FkCommand-request>)))
  "Returns string type for a service object of type '<FkCommand-request>"
  "pyrobot_bridge/FkCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FkCommand-request)))
  "Returns string type for a service object of type 'FkCommand-request"
  "pyrobot_bridge/FkCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FkCommand-request>)))
  "Returns md5sum for a message object of type '<FkCommand-request>"
  "6a7a6cbcb17cacd9771eda9bb83c64a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FkCommand-request)))
  "Returns md5sum for a message object of type 'FkCommand-request"
  "6a7a6cbcb17cacd9771eda9bb83c64a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FkCommand-request>)))
  "Returns full string definition for message of type '<FkCommand-request>"
  (cl:format cl:nil "~%~%float64[] joint_angles~%string end_frame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FkCommand-request)))
  "Returns full string definition for message of type 'FkCommand-request"
  (cl:format cl:nil "~%~%float64[] joint_angles~%string end_frame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FkCommand-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'end_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FkCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FkCommand-request
    (cl:cons ':joint_angles (joint_angles msg))
    (cl:cons ':end_frame (end_frame msg))
))
;//! \htmlinclude FkCommand-response.msg.html

(cl:defclass <FkCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (quat
    :reader quat
    :initarg :quat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FkCommand-response (<FkCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FkCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FkCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pyrobot_bridge-srv:<FkCommand-response> is deprecated: use pyrobot_bridge-srv:FkCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FkCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyrobot_bridge-srv:success-val is deprecated.  Use pyrobot_bridge-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <FkCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyrobot_bridge-srv:pos-val is deprecated.  Use pyrobot_bridge-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'quat-val :lambda-list '(m))
(cl:defmethod quat-val ((m <FkCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyrobot_bridge-srv:quat-val is deprecated.  Use pyrobot_bridge-srv:quat instead.")
  (quat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FkCommand-response>) ostream)
  "Serializes a message object of type '<FkCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'quat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FkCommand-response>) istream)
  "Deserializes a message object of type '<FkCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'quat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FkCommand-response>)))
  "Returns string type for a service object of type '<FkCommand-response>"
  "pyrobot_bridge/FkCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FkCommand-response)))
  "Returns string type for a service object of type 'FkCommand-response"
  "pyrobot_bridge/FkCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FkCommand-response>)))
  "Returns md5sum for a message object of type '<FkCommand-response>"
  "6a7a6cbcb17cacd9771eda9bb83c64a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FkCommand-response)))
  "Returns md5sum for a message object of type 'FkCommand-response"
  "6a7a6cbcb17cacd9771eda9bb83c64a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FkCommand-response>)))
  "Returns full string definition for message of type '<FkCommand-response>"
  (cl:format cl:nil "bool success~%float64[] pos~%float64[] quat~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FkCommand-response)))
  "Returns full string definition for message of type 'FkCommand-response"
  (cl:format cl:nil "bool success~%float64[] pos~%float64[] quat~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FkCommand-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FkCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FkCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':quat (quat msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FkCommand)))
  'FkCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FkCommand)))
  'FkCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FkCommand)))
  "Returns string type for a service object of type '<FkCommand>"
  "pyrobot_bridge/FkCommand")