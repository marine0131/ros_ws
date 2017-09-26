; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude PushFile-request.msg.html

(cl:defclass <PushFile-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass PushFile-request (<PushFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<PushFile-request> is deprecated: use api_msgs-srv:PushFile-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PushFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:name-val is deprecated.  Use api_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <PushFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:data-val is deprecated.  Use api_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushFile-request>) ostream)
  "Serializes a message object of type '<PushFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushFile-request>) istream)
  "Deserializes a message object of type '<PushFile-request>"
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
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushFile-request>)))
  "Returns string type for a service object of type '<PushFile-request>"
  "api_msgs/PushFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushFile-request)))
  "Returns string type for a service object of type 'PushFile-request"
  "api_msgs/PushFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushFile-request>)))
  "Returns md5sum for a message object of type '<PushFile-request>"
  "29f798a8e8dbbc56374b3cb476a12e27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushFile-request)))
  "Returns md5sum for a message object of type 'PushFile-request"
  "29f798a8e8dbbc56374b3cb476a12e27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushFile-request>)))
  "Returns full string definition for message of type '<PushFile-request>"
  (cl:format cl:nil "string name~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushFile-request)))
  "Returns full string definition for message of type 'PushFile-request"
  (cl:format cl:nil "string name~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PushFile-request
    (cl:cons ':name (name msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude PushFile-response.msg.html

(cl:defclass <PushFile-response> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass PushFile-response (<PushFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<PushFile-response> is deprecated: use api_msgs-srv:PushFile-response instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <PushFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:size-val is deprecated.  Use api_msgs-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <PushFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushFile-response>) ostream)
  "Serializes a message object of type '<PushFile-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'size))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushFile-response>) istream)
  "Deserializes a message object of type '<PushFile-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'size) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushFile-response>)))
  "Returns string type for a service object of type '<PushFile-response>"
  "api_msgs/PushFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushFile-response)))
  "Returns string type for a service object of type 'PushFile-response"
  "api_msgs/PushFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushFile-response>)))
  "Returns md5sum for a message object of type '<PushFile-response>"
  "29f798a8e8dbbc56374b3cb476a12e27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushFile-response)))
  "Returns md5sum for a message object of type 'PushFile-response"
  "29f798a8e8dbbc56374b3cb476a12e27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushFile-response>)))
  "Returns full string definition for message of type '<PushFile-response>"
  (cl:format cl:nil "string size~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushFile-response)))
  "Returns full string definition for message of type 'PushFile-response"
  (cl:format cl:nil "string size~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushFile-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'size))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PushFile-response
    (cl:cons ':size (size msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PushFile)))
  'PushFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PushFile)))
  'PushFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushFile)))
  "Returns string type for a service object of type '<PushFile>"
  "api_msgs/PushFile")