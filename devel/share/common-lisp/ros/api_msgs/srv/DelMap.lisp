; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude DelMap-request.msg.html

(cl:defclass <DelMap-request> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform ""))
)

(cl:defclass DelMap-request (<DelMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DelMap-request> is deprecated: use api_msgs-srv:DelMap-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <DelMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelMap-request>) ostream)
  "Serializes a message object of type '<DelMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelMap-request>) istream)
  "Deserializes a message object of type '<DelMap-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelMap-request>)))
  "Returns string type for a service object of type '<DelMap-request>"
  "api_msgs/DelMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelMap-request)))
  "Returns string type for a service object of type 'DelMap-request"
  "api_msgs/DelMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelMap-request>)))
  "Returns md5sum for a message object of type '<DelMap-request>"
  "19a881bfc28e41e035c63a4f09440860")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelMap-request)))
  "Returns md5sum for a message object of type 'DelMap-request"
  "19a881bfc28e41e035c63a4f09440860")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelMap-request>)))
  "Returns full string definition for message of type '<DelMap-request>"
  (cl:format cl:nil "string mapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelMap-request)))
  "Returns full string definition for message of type 'DelMap-request"
  (cl:format cl:nil "string mapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DelMap-request
    (cl:cons ':mapName (mapName msg))
))
;//! \htmlinclude DelMap-response.msg.html

(cl:defclass <DelMap-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass DelMap-response (<DelMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DelMap-response> is deprecated: use api_msgs-srv:DelMap-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <DelMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelMap-response>) ostream)
  "Serializes a message object of type '<DelMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelMap-response>) istream)
  "Deserializes a message object of type '<DelMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelMap-response>)))
  "Returns string type for a service object of type '<DelMap-response>"
  "api_msgs/DelMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelMap-response)))
  "Returns string type for a service object of type 'DelMap-response"
  "api_msgs/DelMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelMap-response>)))
  "Returns md5sum for a message object of type '<DelMap-response>"
  "19a881bfc28e41e035c63a4f09440860")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelMap-response)))
  "Returns md5sum for a message object of type 'DelMap-response"
  "19a881bfc28e41e035c63a4f09440860")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelMap-response>)))
  "Returns full string definition for message of type '<DelMap-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelMap-response)))
  "Returns full string definition for message of type 'DelMap-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DelMap-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DelMap)))
  'DelMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DelMap)))
  'DelMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelMap)))
  "Returns string type for a service object of type '<DelMap>"
  "api_msgs/DelMap")