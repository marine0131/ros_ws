; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude NavGoal-request.msg.html

(cl:defclass <NavGoal-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass NavGoal-request (<NavGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<NavGoal-request> is deprecated: use api_msgs-srv:NavGoal-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <NavGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'goalName-val :lambda-list '(m))
(cl:defmethod goalName-val ((m <NavGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:goalName-val is deprecated.  Use api_msgs-srv:goalName instead.")
  (goalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavGoal-request>) ostream)
  "Serializes a message object of type '<NavGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavGoal-request>) istream)
  "Deserializes a message object of type '<NavGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavGoal-request>)))
  "Returns string type for a service object of type '<NavGoal-request>"
  "api_msgs/NavGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGoal-request)))
  "Returns string type for a service object of type 'NavGoal-request"
  "api_msgs/NavGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavGoal-request>)))
  "Returns md5sum for a message object of type '<NavGoal-request>"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavGoal-request)))
  "Returns md5sum for a message object of type 'NavGoal-request"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavGoal-request>)))
  "Returns full string definition for message of type '<NavGoal-request>"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavGoal-request)))
  "Returns full string definition for message of type 'NavGoal-request"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavGoal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     4 (cl:length (cl:slot-value msg 'goalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NavGoal-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':goalName (goalName msg))
))
;//! \htmlinclude NavGoal-response.msg.html

(cl:defclass <NavGoal-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass NavGoal-response (<NavGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<NavGoal-response> is deprecated: use api_msgs-srv:NavGoal-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <NavGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavGoal-response>) ostream)
  "Serializes a message object of type '<NavGoal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavGoal-response>) istream)
  "Deserializes a message object of type '<NavGoal-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavGoal-response>)))
  "Returns string type for a service object of type '<NavGoal-response>"
  "api_msgs/NavGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGoal-response)))
  "Returns string type for a service object of type 'NavGoal-response"
  "api_msgs/NavGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavGoal-response>)))
  "Returns md5sum for a message object of type '<NavGoal-response>"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavGoal-response)))
  "Returns md5sum for a message object of type 'NavGoal-response"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavGoal-response>)))
  "Returns full string definition for message of type '<NavGoal-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavGoal-response)))
  "Returns full string definition for message of type 'NavGoal-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavGoal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NavGoal-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NavGoal)))
  'NavGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NavGoal)))
  'NavGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGoal)))
  "Returns string type for a service object of type '<NavGoal>"
  "api_msgs/NavGoal")