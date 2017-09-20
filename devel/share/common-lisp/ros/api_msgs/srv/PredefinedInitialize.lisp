; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude PredefinedInitialize-request.msg.html

(cl:defclass <PredefinedInitialize-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PredefinedInitialize-request (<PredefinedInitialize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredefinedInitialize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredefinedInitialize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<PredefinedInitialize-request> is deprecated: use api_msgs-srv:PredefinedInitialize-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <PredefinedInitialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'goalName-val :lambda-list '(m))
(cl:defmethod goalName-val ((m <PredefinedInitialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:goalName-val is deprecated.  Use api_msgs-srv:goalName instead.")
  (goalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredefinedInitialize-request>) ostream)
  "Serializes a message object of type '<PredefinedInitialize-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredefinedInitialize-request>) istream)
  "Deserializes a message object of type '<PredefinedInitialize-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredefinedInitialize-request>)))
  "Returns string type for a service object of type '<PredefinedInitialize-request>"
  "api_msgs/PredefinedInitializeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredefinedInitialize-request)))
  "Returns string type for a service object of type 'PredefinedInitialize-request"
  "api_msgs/PredefinedInitializeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredefinedInitialize-request>)))
  "Returns md5sum for a message object of type '<PredefinedInitialize-request>"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredefinedInitialize-request)))
  "Returns md5sum for a message object of type 'PredefinedInitialize-request"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredefinedInitialize-request>)))
  "Returns full string definition for message of type '<PredefinedInitialize-request>"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredefinedInitialize-request)))
  "Returns full string definition for message of type 'PredefinedInitialize-request"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredefinedInitialize-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     4 (cl:length (cl:slot-value msg 'goalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredefinedInitialize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PredefinedInitialize-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':goalName (goalName msg))
))
;//! \htmlinclude PredefinedInitialize-response.msg.html

(cl:defclass <PredefinedInitialize-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass PredefinedInitialize-response (<PredefinedInitialize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredefinedInitialize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredefinedInitialize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<PredefinedInitialize-response> is deprecated: use api_msgs-srv:PredefinedInitialize-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <PredefinedInitialize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredefinedInitialize-response>) ostream)
  "Serializes a message object of type '<PredefinedInitialize-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredefinedInitialize-response>) istream)
  "Deserializes a message object of type '<PredefinedInitialize-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredefinedInitialize-response>)))
  "Returns string type for a service object of type '<PredefinedInitialize-response>"
  "api_msgs/PredefinedInitializeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredefinedInitialize-response)))
  "Returns string type for a service object of type 'PredefinedInitialize-response"
  "api_msgs/PredefinedInitializeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredefinedInitialize-response>)))
  "Returns md5sum for a message object of type '<PredefinedInitialize-response>"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredefinedInitialize-response)))
  "Returns md5sum for a message object of type 'PredefinedInitialize-response"
  "7ed70b59a7bfaaa4a886dd445668c789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredefinedInitialize-response>)))
  "Returns full string definition for message of type '<PredefinedInitialize-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredefinedInitialize-response)))
  "Returns full string definition for message of type 'PredefinedInitialize-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredefinedInitialize-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredefinedInitialize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PredefinedInitialize-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PredefinedInitialize)))
  'PredefinedInitialize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PredefinedInitialize)))
  'PredefinedInitialize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredefinedInitialize)))
  "Returns string type for a service object of type '<PredefinedInitialize>"
  "api_msgs/PredefinedInitialize")