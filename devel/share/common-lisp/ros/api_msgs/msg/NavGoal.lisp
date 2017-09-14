; Auto-generated. Do not edit!


(cl:in-package api_msgs-msg)


;//! \htmlinclude NavGoal.msg.html

(cl:defclass <NavGoal> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform "")
   (goalName
    :reader goalName
    :initarg :goalName
    :type cl:string
    :initform ""))
)

(cl:defclass NavGoal (<NavGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-msg:<NavGoal> is deprecated: use api_msgs-msg:NavGoal instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <NavGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-msg:mapName-val is deprecated.  Use api_msgs-msg:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'goalName-val :lambda-list '(m))
(cl:defmethod goalName-val ((m <NavGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-msg:goalName-val is deprecated.  Use api_msgs-msg:goalName instead.")
  (goalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavGoal>) ostream)
  "Serializes a message object of type '<NavGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavGoal>) istream)
  "Deserializes a message object of type '<NavGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavGoal>)))
  "Returns string type for a message object of type '<NavGoal>"
  "api_msgs/NavGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGoal)))
  "Returns string type for a message object of type 'NavGoal"
  "api_msgs/NavGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavGoal>)))
  "Returns md5sum for a message object of type '<NavGoal>"
  "f2b7bd197c8eeb3abbefa402ec01e6fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavGoal)))
  "Returns md5sum for a message object of type 'NavGoal"
  "f2b7bd197c8eeb3abbefa402ec01e6fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavGoal>)))
  "Returns full string definition for message of type '<NavGoal>"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavGoal)))
  "Returns full string definition for message of type 'NavGoal"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     4 (cl:length (cl:slot-value msg 'goalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavGoal
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':goalName (goalName msg))
))
