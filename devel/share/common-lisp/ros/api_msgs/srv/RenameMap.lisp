; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude RenameMap-request.msg.html

(cl:defclass <RenameMap-request> (roslisp-msg-protocol:ros-message)
  ((oldMapName
    :reader oldMapName
    :initarg :oldMapName
    :type cl:string
    :initform "")
   (newMapName
    :reader newMapName
    :initarg :newMapName
    :type cl:string
    :initform ""))
)

(cl:defclass RenameMap-request (<RenameMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<RenameMap-request> is deprecated: use api_msgs-srv:RenameMap-request instead.")))

(cl:ensure-generic-function 'oldMapName-val :lambda-list '(m))
(cl:defmethod oldMapName-val ((m <RenameMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:oldMapName-val is deprecated.  Use api_msgs-srv:oldMapName instead.")
  (oldMapName m))

(cl:ensure-generic-function 'newMapName-val :lambda-list '(m))
(cl:defmethod newMapName-val ((m <RenameMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:newMapName-val is deprecated.  Use api_msgs-srv:newMapName instead.")
  (newMapName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameMap-request>) ostream)
  "Serializes a message object of type '<RenameMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'oldMapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'oldMapName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'newMapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'newMapName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameMap-request>) istream)
  "Deserializes a message object of type '<RenameMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oldMapName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'oldMapName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'newMapName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'newMapName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameMap-request>)))
  "Returns string type for a service object of type '<RenameMap-request>"
  "api_msgs/RenameMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap-request)))
  "Returns string type for a service object of type 'RenameMap-request"
  "api_msgs/RenameMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameMap-request>)))
  "Returns md5sum for a message object of type '<RenameMap-request>"
  "39699d60df49381dbc83b3140a6678fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameMap-request)))
  "Returns md5sum for a message object of type 'RenameMap-request"
  "39699d60df49381dbc83b3140a6678fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameMap-request>)))
  "Returns full string definition for message of type '<RenameMap-request>"
  (cl:format cl:nil "string oldMapName~%string newMapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameMap-request)))
  "Returns full string definition for message of type 'RenameMap-request"
  (cl:format cl:nil "string oldMapName~%string newMapName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'oldMapName))
     4 (cl:length (cl:slot-value msg 'newMapName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameMap-request
    (cl:cons ':oldMapName (oldMapName msg))
    (cl:cons ':newMapName (newMapName msg))
))
;//! \htmlinclude RenameMap-response.msg.html

(cl:defclass <RenameMap-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass RenameMap-response (<RenameMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<RenameMap-response> is deprecated: use api_msgs-srv:RenameMap-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <RenameMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameMap-response>) ostream)
  "Serializes a message object of type '<RenameMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameMap-response>) istream)
  "Deserializes a message object of type '<RenameMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameMap-response>)))
  "Returns string type for a service object of type '<RenameMap-response>"
  "api_msgs/RenameMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap-response)))
  "Returns string type for a service object of type 'RenameMap-response"
  "api_msgs/RenameMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameMap-response>)))
  "Returns md5sum for a message object of type '<RenameMap-response>"
  "39699d60df49381dbc83b3140a6678fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameMap-response)))
  "Returns md5sum for a message object of type 'RenameMap-response"
  "39699d60df49381dbc83b3140a6678fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameMap-response>)))
  "Returns full string definition for message of type '<RenameMap-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameMap-response)))
  "Returns full string definition for message of type 'RenameMap-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameMap-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RenameMap)))
  'RenameMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RenameMap)))
  'RenameMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap)))
  "Returns string type for a service object of type '<RenameMap>"
  "api_msgs/RenameMap")