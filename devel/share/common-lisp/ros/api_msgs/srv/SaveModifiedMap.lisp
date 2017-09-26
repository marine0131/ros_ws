; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude SaveModifiedMap-request.msg.html

(cl:defclass <SaveModifiedMap-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (base64Data
    :reader base64Data
    :initarg :base64Data
    :type cl:string
    :initform ""))
)

(cl:defclass SaveModifiedMap-request (<SaveModifiedMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveModifiedMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveModifiedMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<SaveModifiedMap-request> is deprecated: use api_msgs-srv:SaveModifiedMap-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SaveModifiedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:name-val is deprecated.  Use api_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'base64Data-val :lambda-list '(m))
(cl:defmethod base64Data-val ((m <SaveModifiedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:base64Data-val is deprecated.  Use api_msgs-srv:base64Data instead.")
  (base64Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveModifiedMap-request>) ostream)
  "Serializes a message object of type '<SaveModifiedMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base64Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base64Data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveModifiedMap-request>) istream)
  "Deserializes a message object of type '<SaveModifiedMap-request>"
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
      (cl:setf (cl:slot-value msg 'base64Data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base64Data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveModifiedMap-request>)))
  "Returns string type for a service object of type '<SaveModifiedMap-request>"
  "api_msgs/SaveModifiedMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveModifiedMap-request)))
  "Returns string type for a service object of type 'SaveModifiedMap-request"
  "api_msgs/SaveModifiedMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveModifiedMap-request>)))
  "Returns md5sum for a message object of type '<SaveModifiedMap-request>"
  "9bd95980b28029c6ed87bd62c7ac93f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveModifiedMap-request)))
  "Returns md5sum for a message object of type 'SaveModifiedMap-request"
  "9bd95980b28029c6ed87bd62c7ac93f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveModifiedMap-request>)))
  "Returns full string definition for message of type '<SaveModifiedMap-request>"
  (cl:format cl:nil "string name~%string base64Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveModifiedMap-request)))
  "Returns full string definition for message of type 'SaveModifiedMap-request"
  (cl:format cl:nil "string name~%string base64Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveModifiedMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'base64Data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveModifiedMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveModifiedMap-request
    (cl:cons ':name (name msg))
    (cl:cons ':base64Data (base64Data msg))
))
;//! \htmlinclude SaveModifiedMap-response.msg.html

(cl:defclass <SaveModifiedMap-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SaveModifiedMap-response (<SaveModifiedMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveModifiedMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveModifiedMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<SaveModifiedMap-response> is deprecated: use api_msgs-srv:SaveModifiedMap-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SaveModifiedMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveModifiedMap-response>) ostream)
  "Serializes a message object of type '<SaveModifiedMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveModifiedMap-response>) istream)
  "Deserializes a message object of type '<SaveModifiedMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveModifiedMap-response>)))
  "Returns string type for a service object of type '<SaveModifiedMap-response>"
  "api_msgs/SaveModifiedMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveModifiedMap-response)))
  "Returns string type for a service object of type 'SaveModifiedMap-response"
  "api_msgs/SaveModifiedMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveModifiedMap-response>)))
  "Returns md5sum for a message object of type '<SaveModifiedMap-response>"
  "9bd95980b28029c6ed87bd62c7ac93f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveModifiedMap-response)))
  "Returns md5sum for a message object of type 'SaveModifiedMap-response"
  "9bd95980b28029c6ed87bd62c7ac93f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveModifiedMap-response>)))
  "Returns full string definition for message of type '<SaveModifiedMap-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveModifiedMap-response)))
  "Returns full string definition for message of type 'SaveModifiedMap-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveModifiedMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveModifiedMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveModifiedMap-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveModifiedMap)))
  'SaveModifiedMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveModifiedMap)))
  'SaveModifiedMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveModifiedMap)))
  "Returns string type for a service object of type '<SaveModifiedMap>"
  "api_msgs/SaveModifiedMap")