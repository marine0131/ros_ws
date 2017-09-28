; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude DownloadFile-request.msg.html

(cl:defclass <DownloadFile-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DownloadFile-request (<DownloadFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DownloadFile-request> is deprecated: use api_msgs-srv:DownloadFile-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DownloadFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:name-val is deprecated.  Use api_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadFile-request>) ostream)
  "Serializes a message object of type '<DownloadFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadFile-request>) istream)
  "Deserializes a message object of type '<DownloadFile-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadFile-request>)))
  "Returns string type for a service object of type '<DownloadFile-request>"
  "api_msgs/DownloadFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadFile-request)))
  "Returns string type for a service object of type 'DownloadFile-request"
  "api_msgs/DownloadFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadFile-request>)))
  "Returns md5sum for a message object of type '<DownloadFile-request>"
  "a93515b901dc74b0c77f07911f2857ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadFile-request)))
  "Returns md5sum for a message object of type 'DownloadFile-request"
  "a93515b901dc74b0c77f07911f2857ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadFile-request>)))
  "Returns full string definition for message of type '<DownloadFile-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadFile-request)))
  "Returns full string definition for message of type 'DownloadFile-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadFile-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DownloadFile-response.msg.html

(cl:defclass <DownloadFile-response> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (link
    :reader link
    :initarg :link
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass DownloadFile-response (<DownloadFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DownloadFile-response> is deprecated: use api_msgs-srv:DownloadFile-response instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <DownloadFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:size-val is deprecated.  Use api_msgs-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'link-val :lambda-list '(m))
(cl:defmethod link-val ((m <DownloadFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:link-val is deprecated.  Use api_msgs-srv:link instead.")
  (link m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <DownloadFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadFile-response>) ostream)
  "Serializes a message object of type '<DownloadFile-response>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadFile-response>) istream)
  "Deserializes a message object of type '<DownloadFile-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadFile-response>)))
  "Returns string type for a service object of type '<DownloadFile-response>"
  "api_msgs/DownloadFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadFile-response)))
  "Returns string type for a service object of type 'DownloadFile-response"
  "api_msgs/DownloadFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadFile-response>)))
  "Returns md5sum for a message object of type '<DownloadFile-response>"
  "a93515b901dc74b0c77f07911f2857ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadFile-response)))
  "Returns md5sum for a message object of type 'DownloadFile-response"
  "a93515b901dc74b0c77f07911f2857ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadFile-response>)))
  "Returns full string definition for message of type '<DownloadFile-response>"
  (cl:format cl:nil "int32 size~%string link~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadFile-response)))
  "Returns full string definition for message of type 'DownloadFile-response"
  (cl:format cl:nil "int32 size~%string link~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadFile-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'link))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadFile-response
    (cl:cons ':size (size msg))
    (cl:cons ':link (link msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DownloadFile)))
  'DownloadFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DownloadFile)))
  'DownloadFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadFile)))
  "Returns string type for a service object of type '<DownloadFile>"
  "api_msgs/DownloadFile")