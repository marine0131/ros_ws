; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude MapToPng-request.msg.html

(cl:defclass <MapToPng-request> (roslisp-msg-protocol:ros-message)
  ((oldName
    :reader oldName
    :initarg :oldName
    :type cl:string
    :initform ""))
)

(cl:defclass MapToPng-request (<MapToPng-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapToPng-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapToPng-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<MapToPng-request> is deprecated: use api_msgs-srv:MapToPng-request instead.")))

(cl:ensure-generic-function 'oldName-val :lambda-list '(m))
(cl:defmethod oldName-val ((m <MapToPng-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:oldName-val is deprecated.  Use api_msgs-srv:oldName instead.")
  (oldName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapToPng-request>) ostream)
  "Serializes a message object of type '<MapToPng-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'oldName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'oldName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapToPng-request>) istream)
  "Deserializes a message object of type '<MapToPng-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oldName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'oldName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapToPng-request>)))
  "Returns string type for a service object of type '<MapToPng-request>"
  "api_msgs/MapToPngRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapToPng-request)))
  "Returns string type for a service object of type 'MapToPng-request"
  "api_msgs/MapToPngRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapToPng-request>)))
  "Returns md5sum for a message object of type '<MapToPng-request>"
  "12d2a39948ea8253e5f441c3a0f822dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapToPng-request)))
  "Returns md5sum for a message object of type 'MapToPng-request"
  "12d2a39948ea8253e5f441c3a0f822dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapToPng-request>)))
  "Returns full string definition for message of type '<MapToPng-request>"
  (cl:format cl:nil "string oldName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapToPng-request)))
  "Returns full string definition for message of type 'MapToPng-request"
  (cl:format cl:nil "string oldName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapToPng-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'oldName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapToPng-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapToPng-request
    (cl:cons ':oldName (oldName msg))
))
;//! \htmlinclude MapToPng-response.msg.html

(cl:defclass <MapToPng-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass MapToPng-response (<MapToPng-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapToPng-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapToPng-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<MapToPng-response> is deprecated: use api_msgs-srv:MapToPng-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MapToPng-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:result-val is deprecated.  Use api_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapToPng-response>) ostream)
  "Serializes a message object of type '<MapToPng-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapToPng-response>) istream)
  "Deserializes a message object of type '<MapToPng-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapToPng-response>)))
  "Returns string type for a service object of type '<MapToPng-response>"
  "api_msgs/MapToPngResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapToPng-response)))
  "Returns string type for a service object of type 'MapToPng-response"
  "api_msgs/MapToPngResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapToPng-response>)))
  "Returns md5sum for a message object of type '<MapToPng-response>"
  "12d2a39948ea8253e5f441c3a0f822dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapToPng-response)))
  "Returns md5sum for a message object of type 'MapToPng-response"
  "12d2a39948ea8253e5f441c3a0f822dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapToPng-response>)))
  "Returns full string definition for message of type '<MapToPng-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapToPng-response)))
  "Returns full string definition for message of type 'MapToPng-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapToPng-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapToPng-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapToPng-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapToPng)))
  'MapToPng-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapToPng)))
  'MapToPng-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapToPng)))
  "Returns string type for a service object of type '<MapToPng>"
  "api_msgs/MapToPng")