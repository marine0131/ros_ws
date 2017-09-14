; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude LaunchCmd-request.msg.html

(cl:defclass <LaunchCmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform ""))
)

(cl:defclass LaunchCmd-request (<LaunchCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaunchCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaunchCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<LaunchCmd-request> is deprecated: use api_msgs-srv:LaunchCmd-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <LaunchCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:cmd-val is deprecated.  Use api_msgs-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <LaunchCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaunchCmd-request>) ostream)
  "Serializes a message object of type '<LaunchCmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaunchCmd-request>) istream)
  "Deserializes a message object of type '<LaunchCmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaunchCmd-request>)))
  "Returns string type for a service object of type '<LaunchCmd-request>"
  "api_msgs/LaunchCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaunchCmd-request)))
  "Returns string type for a service object of type 'LaunchCmd-request"
  "api_msgs/LaunchCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaunchCmd-request>)))
  "Returns md5sum for a message object of type '<LaunchCmd-request>"
  "18104f58f8d7c5999613f1359599e2b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaunchCmd-request)))
  "Returns md5sum for a message object of type 'LaunchCmd-request"
  "18104f58f8d7c5999613f1359599e2b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaunchCmd-request>)))
  "Returns full string definition for message of type '<LaunchCmd-request>"
  (cl:format cl:nil "string cmd~%string mapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaunchCmd-request)))
  "Returns full string definition for message of type 'LaunchCmd-request"
  (cl:format cl:nil "string cmd~%string mapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaunchCmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
     4 (cl:length (cl:slot-value msg 'mapName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaunchCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LaunchCmd-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':mapName (mapName msg))
))
;//! \htmlinclude LaunchCmd-response.msg.html

(cl:defclass <LaunchCmd-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass LaunchCmd-response (<LaunchCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaunchCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaunchCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<LaunchCmd-response> is deprecated: use api_msgs-srv:LaunchCmd-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <LaunchCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaunchCmd-response>) ostream)
  "Serializes a message object of type '<LaunchCmd-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaunchCmd-response>) istream)
  "Deserializes a message object of type '<LaunchCmd-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaunchCmd-response>)))
  "Returns string type for a service object of type '<LaunchCmd-response>"
  "api_msgs/LaunchCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaunchCmd-response)))
  "Returns string type for a service object of type 'LaunchCmd-response"
  "api_msgs/LaunchCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaunchCmd-response>)))
  "Returns md5sum for a message object of type '<LaunchCmd-response>"
  "18104f58f8d7c5999613f1359599e2b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaunchCmd-response)))
  "Returns md5sum for a message object of type 'LaunchCmd-response"
  "18104f58f8d7c5999613f1359599e2b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaunchCmd-response>)))
  "Returns full string definition for message of type '<LaunchCmd-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaunchCmd-response)))
  "Returns full string definition for message of type 'LaunchCmd-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaunchCmd-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaunchCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LaunchCmd-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LaunchCmd)))
  'LaunchCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LaunchCmd)))
  'LaunchCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaunchCmd)))
  "Returns string type for a service object of type '<LaunchCmd>"
  "api_msgs/LaunchCmd")