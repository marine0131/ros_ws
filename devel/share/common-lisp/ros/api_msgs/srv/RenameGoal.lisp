; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude RenameGoal-request.msg.html

(cl:defclass <RenameGoal-request> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform "")
   (oldGoalName
    :reader oldGoalName
    :initarg :oldGoalName
    :type cl:string
    :initform "")
   (newGoalName
    :reader newGoalName
    :initarg :newGoalName
    :type cl:string
    :initform ""))
)

(cl:defclass RenameGoal-request (<RenameGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<RenameGoal-request> is deprecated: use api_msgs-srv:RenameGoal-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <RenameGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'oldGoalName-val :lambda-list '(m))
(cl:defmethod oldGoalName-val ((m <RenameGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:oldGoalName-val is deprecated.  Use api_msgs-srv:oldGoalName instead.")
  (oldGoalName m))

(cl:ensure-generic-function 'newGoalName-val :lambda-list '(m))
(cl:defmethod newGoalName-val ((m <RenameGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:newGoalName-val is deprecated.  Use api_msgs-srv:newGoalName instead.")
  (newGoalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameGoal-request>) ostream)
  "Serializes a message object of type '<RenameGoal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'oldGoalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'oldGoalName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'newGoalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'newGoalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameGoal-request>) istream)
  "Deserializes a message object of type '<RenameGoal-request>"
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
      (cl:setf (cl:slot-value msg 'oldGoalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'oldGoalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'newGoalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'newGoalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameGoal-request>)))
  "Returns string type for a service object of type '<RenameGoal-request>"
  "api_msgs/RenameGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameGoal-request)))
  "Returns string type for a service object of type 'RenameGoal-request"
  "api_msgs/RenameGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameGoal-request>)))
  "Returns md5sum for a message object of type '<RenameGoal-request>"
  "e7761fd55890403f9b95bbf9595e458d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameGoal-request)))
  "Returns md5sum for a message object of type 'RenameGoal-request"
  "e7761fd55890403f9b95bbf9595e458d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameGoal-request>)))
  "Returns full string definition for message of type '<RenameGoal-request>"
  (cl:format cl:nil "string mapName~%string oldGoalName~%string newGoalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameGoal-request)))
  "Returns full string definition for message of type 'RenameGoal-request"
  (cl:format cl:nil "string mapName~%string oldGoalName~%string newGoalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameGoal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     4 (cl:length (cl:slot-value msg 'oldGoalName))
     4 (cl:length (cl:slot-value msg 'newGoalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameGoal-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':oldGoalName (oldGoalName msg))
    (cl:cons ':newGoalName (newGoalName msg))
))
;//! \htmlinclude RenameGoal-response.msg.html

(cl:defclass <RenameGoal-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass RenameGoal-response (<RenameGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<RenameGoal-response> is deprecated: use api_msgs-srv:RenameGoal-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <RenameGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameGoal-response>) ostream)
  "Serializes a message object of type '<RenameGoal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameGoal-response>) istream)
  "Deserializes a message object of type '<RenameGoal-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameGoal-response>)))
  "Returns string type for a service object of type '<RenameGoal-response>"
  "api_msgs/RenameGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameGoal-response)))
  "Returns string type for a service object of type 'RenameGoal-response"
  "api_msgs/RenameGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameGoal-response>)))
  "Returns md5sum for a message object of type '<RenameGoal-response>"
  "e7761fd55890403f9b95bbf9595e458d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameGoal-response)))
  "Returns md5sum for a message object of type 'RenameGoal-response"
  "e7761fd55890403f9b95bbf9595e458d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameGoal-response>)))
  "Returns full string definition for message of type '<RenameGoal-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameGoal-response)))
  "Returns full string definition for message of type 'RenameGoal-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameGoal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameGoal-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RenameGoal)))
  'RenameGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RenameGoal)))
  'RenameGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameGoal)))
  "Returns string type for a service object of type '<RenameGoal>"
  "api_msgs/RenameGoal")