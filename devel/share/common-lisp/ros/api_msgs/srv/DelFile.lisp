; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude DelFile-request.msg.html

(cl:defclass <DelFile-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DelFile-request (<DelFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DelFile-request> is deprecated: use api_msgs-srv:DelFile-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DelFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:name-val is deprecated.  Use api_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelFile-request>) ostream)
  "Serializes a message object of type '<DelFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelFile-request>) istream)
  "Deserializes a message object of type '<DelFile-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelFile-request>)))
  "Returns string type for a service object of type '<DelFile-request>"
  "api_msgs/DelFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelFile-request)))
  "Returns string type for a service object of type 'DelFile-request"
  "api_msgs/DelFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelFile-request>)))
  "Returns md5sum for a message object of type '<DelFile-request>"
  "7b3aa23b78bbc0f6e1b22875add7822c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelFile-request)))
  "Returns md5sum for a message object of type 'DelFile-request"
  "7b3aa23b78bbc0f6e1b22875add7822c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelFile-request>)))
  "Returns full string definition for message of type '<DelFile-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelFile-request)))
  "Returns full string definition for message of type 'DelFile-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DelFile-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DelFile-response.msg.html

(cl:defclass <DelFile-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass DelFile-response (<DelFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<DelFile-response> is deprecated: use api_msgs-srv:DelFile-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <DelFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelFile-response>) ostream)
  "Serializes a message object of type '<DelFile-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelFile-response>) istream)
  "Deserializes a message object of type '<DelFile-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelFile-response>)))
  "Returns string type for a service object of type '<DelFile-response>"
  "api_msgs/DelFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelFile-response)))
  "Returns string type for a service object of type 'DelFile-response"
  "api_msgs/DelFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelFile-response>)))
  "Returns md5sum for a message object of type '<DelFile-response>"
  "7b3aa23b78bbc0f6e1b22875add7822c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelFile-response)))
  "Returns md5sum for a message object of type 'DelFile-response"
  "7b3aa23b78bbc0f6e1b22875add7822c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelFile-response>)))
  "Returns full string definition for message of type '<DelFile-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelFile-response)))
  "Returns full string definition for message of type 'DelFile-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelFile-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DelFile-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DelFile)))
  'DelFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DelFile)))
  'DelFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelFile)))
  "Returns string type for a service object of type '<DelFile>"
  "api_msgs/DelFile")