; Auto-generated. Do not edit!


(cl:in-package my_tutorial-srv)


;//! \htmlinclude MapList-request.msg.html

(cl:defclass <MapList-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass MapList-request (<MapList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-srv:<MapList-request> is deprecated: use my_tutorial-srv:MapList-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MapList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:name-val is deprecated.  Use my_tutorial-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapList-request>) ostream)
  "Serializes a message object of type '<MapList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapList-request>) istream)
  "Deserializes a message object of type '<MapList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapList-request>)))
  "Returns string type for a service object of type '<MapList-request>"
  "my_tutorial/MapListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapList-request)))
  "Returns string type for a service object of type 'MapList-request"
  "my_tutorial/MapListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapList-request>)))
  "Returns md5sum for a message object of type '<MapList-request>"
  "68d5e7574159c309cadccc1b40fe9cc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapList-request)))
  "Returns md5sum for a message object of type 'MapList-request"
  "68d5e7574159c309cadccc1b40fe9cc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapList-request>)))
  "Returns full string definition for message of type '<MapList-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapList-request)))
  "Returns full string definition for message of type 'MapList-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapList-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude MapList-response.msg.html

(cl:defclass <MapList-response> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform ""))
)

(cl:defclass MapList-response (<MapList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-srv:<MapList-response> is deprecated: use my_tutorial-srv:MapList-response instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <MapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:mapName-val is deprecated.  Use my_tutorial-srv:mapName instead.")
  (mapName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapList-response>) ostream)
  "Serializes a message object of type '<MapList-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapList-response>) istream)
  "Deserializes a message object of type '<MapList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapList-response>)))
  "Returns string type for a service object of type '<MapList-response>"
  "my_tutorial/MapListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapList-response)))
  "Returns string type for a service object of type 'MapList-response"
  "my_tutorial/MapListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapList-response>)))
  "Returns md5sum for a message object of type '<MapList-response>"
  "68d5e7574159c309cadccc1b40fe9cc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapList-response)))
  "Returns md5sum for a message object of type 'MapList-response"
  "68d5e7574159c309cadccc1b40fe9cc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapList-response>)))
  "Returns full string definition for message of type '<MapList-response>"
  (cl:format cl:nil "string mapName~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapList-response)))
  "Returns full string definition for message of type 'MapList-response"
  (cl:format cl:nil "string mapName~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapList-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapList-response
    (cl:cons ':mapName (mapName msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapList)))
  'MapList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapList)))
  'MapList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapList)))
  "Returns string type for a service object of type '<MapList>"
  "my_tutorial/MapList")