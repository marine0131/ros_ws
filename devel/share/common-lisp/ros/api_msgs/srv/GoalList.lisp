; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude GoalList-request.msg.html

(cl:defclass <GoalList-request> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform ""))
)

(cl:defclass GoalList-request (<GoalList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GoalList-request> is deprecated: use api_msgs-srv:GoalList-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <GoalList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalList-request>) ostream)
  "Serializes a message object of type '<GoalList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalList-request>) istream)
  "Deserializes a message object of type '<GoalList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalList-request>)))
  "Returns string type for a service object of type '<GoalList-request>"
  "api_msgs/GoalListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalList-request)))
  "Returns string type for a service object of type 'GoalList-request"
  "api_msgs/GoalListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalList-request>)))
  "Returns md5sum for a message object of type '<GoalList-request>"
  "6ded0e823bc3364a8e51670166f50c09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalList-request)))
  "Returns md5sum for a message object of type 'GoalList-request"
  "6ded0e823bc3364a8e51670166f50c09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalList-request>)))
  "Returns full string definition for message of type '<GoalList-request>"
  (cl:format cl:nil "string mapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalList-request)))
  "Returns full string definition for message of type 'GoalList-request"
  (cl:format cl:nil "string mapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalList-request
    (cl:cons ':mapName (mapName msg))
))
;//! \htmlinclude GoalList-response.msg.html

(cl:defclass <GoalList-response> (roslisp-msg-protocol:ros-message)
  ((goalList
    :reader goalList
    :initarg :goalList
    :type cl:string
    :initform ""))
)

(cl:defclass GoalList-response (<GoalList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GoalList-response> is deprecated: use api_msgs-srv:GoalList-response instead.")))

(cl:ensure-generic-function 'goalList-val :lambda-list '(m))
(cl:defmethod goalList-val ((m <GoalList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:goalList-val is deprecated.  Use api_msgs-srv:goalList instead.")
  (goalList m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalList-response>) ostream)
  "Serializes a message object of type '<GoalList-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goalList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goalList))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalList-response>) istream)
  "Deserializes a message object of type '<GoalList-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goalList) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goalList) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalList-response>)))
  "Returns string type for a service object of type '<GoalList-response>"
  "api_msgs/GoalListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalList-response)))
  "Returns string type for a service object of type 'GoalList-response"
  "api_msgs/GoalListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalList-response>)))
  "Returns md5sum for a message object of type '<GoalList-response>"
  "6ded0e823bc3364a8e51670166f50c09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalList-response)))
  "Returns md5sum for a message object of type 'GoalList-response"
  "6ded0e823bc3364a8e51670166f50c09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalList-response>)))
  "Returns full string definition for message of type '<GoalList-response>"
  (cl:format cl:nil "string goalList~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalList-response)))
  "Returns full string definition for message of type 'GoalList-response"
  (cl:format cl:nil "string goalList~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalList-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goalList))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalList-response
    (cl:cons ':goalList (goalList msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalList)))
  'GoalList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalList)))
  'GoalList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalList)))
  "Returns string type for a service object of type '<GoalList>"
  "api_msgs/GoalList")