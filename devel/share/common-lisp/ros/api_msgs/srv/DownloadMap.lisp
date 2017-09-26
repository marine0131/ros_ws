; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude DownloadMap-request.msg.html

(cl:defclass <DownloadMap-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DownloadMap-request (<DownloadMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DownloadMap-request> is deprecated: use api_msgs-srv:DownloadMap-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DownloadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:name-val is deprecated.  Use api_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadMap-request>) ostream)
  "Serializes a message object of type '<DownloadMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadMap-request>) istream)
  "Deserializes a message object of type '<DownloadMap-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadMap-request>)))
  "Returns string type for a service object of type '<DownloadMap-request>"
  "api_msgs/DownloadMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadMap-request)))
  "Returns string type for a service object of type 'DownloadMap-request"
  "api_msgs/DownloadMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadMap-request>)))
  "Returns md5sum for a message object of type '<DownloadMap-request>"
  "2baa25a9186e1f428009e476983334ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadMap-request)))
  "Returns md5sum for a message object of type 'DownloadMap-request"
  "2baa25a9186e1f428009e476983334ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadMap-request>)))
  "Returns full string definition for message of type '<DownloadMap-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadMap-request)))
  "Returns full string definition for message of type 'DownloadMap-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadMap-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DownloadMap-response.msg.html

(cl:defclass <DownloadMap-response> (roslisp-msg-protocol:ros-message)
  ((mapFile
    :reader mapFile
    :initarg :mapFile
    :type cl:string
    :initform "")
   (yamlFile
    :reader yamlFile
    :initarg :yamlFile
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass DownloadMap-response (<DownloadMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DownloadMap-response> is deprecated: use api_msgs-srv:DownloadMap-response instead.")))

(cl:ensure-generic-function 'mapFile-val :lambda-list '(m))
(cl:defmethod mapFile-val ((m <DownloadMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapFile-val is deprecated.  Use api_msgs-srv:mapFile instead.")
  (mapFile m))

(cl:ensure-generic-function 'yamlFile-val :lambda-list '(m))
(cl:defmethod yamlFile-val ((m <DownloadMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:yamlFile-val is deprecated.  Use api_msgs-srv:yamlFile instead.")
  (yamlFile m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <DownloadMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadMap-response>) ostream)
  "Serializes a message object of type '<DownloadMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapFile))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapFile))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yamlFile))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yamlFile))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadMap-response>) istream)
  "Deserializes a message object of type '<DownloadMap-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapFile) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapFile) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yamlFile) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yamlFile) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadMap-response>)))
  "Returns string type for a service object of type '<DownloadMap-response>"
  "api_msgs/DownloadMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadMap-response)))
  "Returns string type for a service object of type 'DownloadMap-response"
  "api_msgs/DownloadMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadMap-response>)))
  "Returns md5sum for a message object of type '<DownloadMap-response>"
  "2baa25a9186e1f428009e476983334ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadMap-response)))
  "Returns md5sum for a message object of type 'DownloadMap-response"
  "2baa25a9186e1f428009e476983334ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadMap-response>)))
  "Returns full string definition for message of type '<DownloadMap-response>"
  (cl:format cl:nil "string mapFile~%string yamlFile~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadMap-response)))
  "Returns full string definition for message of type 'DownloadMap-response"
  (cl:format cl:nil "string mapFile~%string yamlFile~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapFile))
     4 (cl:length (cl:slot-value msg 'yamlFile))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadMap-response
    (cl:cons ':mapFile (mapFile msg))
    (cl:cons ':yamlFile (yamlFile msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DownloadMap)))
  'DownloadMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DownloadMap)))
  'DownloadMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadMap)))
  "Returns string type for a service object of type '<DownloadMap>"
  "api_msgs/DownloadMap")