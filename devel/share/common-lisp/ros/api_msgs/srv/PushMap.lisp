; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude PushMap-request.msg.html

(cl:defclass <PushMap-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (mapData
    :reader mapData
    :initarg :mapData
    :type cl:string
    :initform "")
   (yamlData
    :reader yamlData
    :initarg :yamlData
    :type cl:string
    :initform ""))
)

(cl:defclass PushMap-request (<PushMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<PushMap-request> is deprecated: use api_msgs-srv:PushMap-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PushMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:name-val is deprecated.  Use api_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'mapData-val :lambda-list '(m))
(cl:defmethod mapData-val ((m <PushMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapData-val is deprecated.  Use api_msgs-srv:mapData instead.")
  (mapData m))

(cl:ensure-generic-function 'yamlData-val :lambda-list '(m))
(cl:defmethod yamlData-val ((m <PushMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:yamlData-val is deprecated.  Use api_msgs-srv:yamlData instead.")
  (yamlData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushMap-request>) ostream)
  "Serializes a message object of type '<PushMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapData))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yamlData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yamlData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushMap-request>) istream)
  "Deserializes a message object of type '<PushMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapData) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapData) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yamlData) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yamlData) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushMap-request>)))
  "Returns string type for a service object of type '<PushMap-request>"
  "api_msgs/PushMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushMap-request)))
  "Returns string type for a service object of type 'PushMap-request"
  "api_msgs/PushMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushMap-request>)))
  "Returns md5sum for a message object of type '<PushMap-request>"
  "cfd78f574ce6584df58e90daeaf81197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushMap-request)))
  "Returns md5sum for a message object of type 'PushMap-request"
  "cfd78f574ce6584df58e90daeaf81197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushMap-request>)))
  "Returns full string definition for message of type '<PushMap-request>"
  (cl:format cl:nil "string name~%string mapData~%string yamlData~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushMap-request)))
  "Returns full string definition for message of type 'PushMap-request"
  (cl:format cl:nil "string name~%string mapData~%string yamlData~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'mapData))
     4 (cl:length (cl:slot-value msg 'yamlData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PushMap-request
    (cl:cons ':name (name msg))
    (cl:cons ':mapData (mapData msg))
    (cl:cons ':yamlData (yamlData msg))
))
;//! \htmlinclude PushMap-response.msg.html

(cl:defclass <PushMap-response> (roslisp-msg-protocol:ros-message)
  ((mapSize
    :reader mapSize
    :initarg :mapSize
    :type cl:string
    :initform "")
   (yamlSize
    :reader yamlSize
    :initarg :yamlSize
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass PushMap-response (<PushMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<PushMap-response> is deprecated: use api_msgs-srv:PushMap-response instead.")))

(cl:ensure-generic-function 'mapSize-val :lambda-list '(m))
(cl:defmethod mapSize-val ((m <PushMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapSize-val is deprecated.  Use api_msgs-srv:mapSize instead.")
  (mapSize m))

(cl:ensure-generic-function 'yamlSize-val :lambda-list '(m))
(cl:defmethod yamlSize-val ((m <PushMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:yamlSize-val is deprecated.  Use api_msgs-srv:yamlSize instead.")
  (yamlSize m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <PushMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushMap-response>) ostream)
  "Serializes a message object of type '<PushMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapSize))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapSize))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yamlSize))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yamlSize))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushMap-response>) istream)
  "Deserializes a message object of type '<PushMap-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapSize) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapSize) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yamlSize) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yamlSize) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushMap-response>)))
  "Returns string type for a service object of type '<PushMap-response>"
  "api_msgs/PushMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushMap-response)))
  "Returns string type for a service object of type 'PushMap-response"
  "api_msgs/PushMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushMap-response>)))
  "Returns md5sum for a message object of type '<PushMap-response>"
  "cfd78f574ce6584df58e90daeaf81197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushMap-response)))
  "Returns md5sum for a message object of type 'PushMap-response"
  "cfd78f574ce6584df58e90daeaf81197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushMap-response>)))
  "Returns full string definition for message of type '<PushMap-response>"
  (cl:format cl:nil "string mapSize~%string yamlSize~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushMap-response)))
  "Returns full string definition for message of type 'PushMap-response"
  (cl:format cl:nil "string mapSize~%string yamlSize~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapSize))
     4 (cl:length (cl:slot-value msg 'yamlSize))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PushMap-response
    (cl:cons ':mapSize (mapSize msg))
    (cl:cons ':yamlSize (yamlSize msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PushMap)))
  'PushMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PushMap)))
  'PushMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushMap)))
  "Returns string type for a service object of type '<PushMap>"
  "api_msgs/PushMap")