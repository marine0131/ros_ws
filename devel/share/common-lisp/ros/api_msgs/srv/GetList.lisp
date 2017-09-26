; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude GetList-request.msg.html

(cl:defclass <GetList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetList-request (<GetList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GetList-request> is deprecated: use api_msgs-srv:GetList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetList-request>) ostream)
  "Serializes a message object of type '<GetList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetList-request>) istream)
  "Deserializes a message object of type '<GetList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetList-request>)))
  "Returns string type for a service object of type '<GetList-request>"
  "api_msgs/GetListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetList-request)))
  "Returns string type for a service object of type 'GetList-request"
  "api_msgs/GetListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetList-request>)))
  "Returns md5sum for a message object of type '<GetList-request>"
  "2a8a9dfc6e6eb932884b5893f306dd1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetList-request)))
  "Returns md5sum for a message object of type 'GetList-request"
  "2a8a9dfc6e6eb932884b5893f306dd1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetList-request>)))
  "Returns full string definition for message of type '<GetList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetList-request)))
  "Returns full string definition for message of type 'GetList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetList-request
))
;//! \htmlinclude GetList-response.msg.html

(cl:defclass <GetList-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass GetList-response (<GetList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GetList-response> is deprecated: use api_msgs-srv:GetList-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <GetList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:list-val is deprecated.  Use api_msgs-srv:list instead.")
  (list m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GetList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetList-response>) ostream)
  "Serializes a message object of type '<GetList-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'list))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetList-response>) istream)
  "Deserializes a message object of type '<GetList-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'list) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'list) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetList-response>)))
  "Returns string type for a service object of type '<GetList-response>"
  "api_msgs/GetListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetList-response)))
  "Returns string type for a service object of type 'GetList-response"
  "api_msgs/GetListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetList-response>)))
  "Returns md5sum for a message object of type '<GetList-response>"
  "2a8a9dfc6e6eb932884b5893f306dd1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetList-response)))
  "Returns md5sum for a message object of type 'GetList-response"
  "2a8a9dfc6e6eb932884b5893f306dd1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetList-response>)))
  "Returns full string definition for message of type '<GetList-response>"
  (cl:format cl:nil "string list~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetList-response)))
  "Returns full string definition for message of type 'GetList-response"
  (cl:format cl:nil "string list~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetList-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'list))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetList-response
    (cl:cons ':list (list msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetList)))
  'GetList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetList)))
  'GetList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetList)))
  "Returns string type for a service object of type '<GetList>"
  "api_msgs/GetList")