; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude CustomInitialize-request.msg.html

(cl:defclass <CustomInitialize-request> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type api_msgs-msg:GridPoint
    :initform (cl:make-instance 'api_msgs-msg:GridPoint))
   (head
    :reader head
    :initarg :head
    :type api_msgs-msg:GridPoint
    :initform (cl:make-instance 'api_msgs-msg:GridPoint)))
)

(cl:defclass CustomInitialize-request (<CustomInitialize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomInitialize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomInitialize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<CustomInitialize-request> is deprecated: use api_msgs-srv:CustomInitialize-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <CustomInitialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CustomInitialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:pose-val is deprecated.  Use api_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <CustomInitialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:head-val is deprecated.  Use api_msgs-srv:head instead.")
  (head m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomInitialize-request>) ostream)
  "Serializes a message object of type '<CustomInitialize-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomInitialize-request>) istream)
  "Deserializes a message object of type '<CustomInitialize-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomInitialize-request>)))
  "Returns string type for a service object of type '<CustomInitialize-request>"
  "api_msgs/CustomInitializeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomInitialize-request)))
  "Returns string type for a service object of type 'CustomInitialize-request"
  "api_msgs/CustomInitializeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomInitialize-request>)))
  "Returns md5sum for a message object of type '<CustomInitialize-request>"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomInitialize-request)))
  "Returns md5sum for a message object of type 'CustomInitialize-request"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomInitialize-request>)))
  "Returns full string definition for message of type '<CustomInitialize-request>"
  (cl:format cl:nil "string mapName~%GridPoint pose~%GridPoint head~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomInitialize-request)))
  "Returns full string definition for message of type 'CustomInitialize-request"
  (cl:format cl:nil "string mapName~%GridPoint pose~%GridPoint head~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomInitialize-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomInitialize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomInitialize-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':head (head msg))
))
;//! \htmlinclude CustomInitialize-response.msg.html

(cl:defclass <CustomInitialize-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass CustomInitialize-response (<CustomInitialize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomInitialize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomInitialize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<CustomInitialize-response> is deprecated: use api_msgs-srv:CustomInitialize-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <CustomInitialize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomInitialize-response>) ostream)
  "Serializes a message object of type '<CustomInitialize-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomInitialize-response>) istream)
  "Deserializes a message object of type '<CustomInitialize-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomInitialize-response>)))
  "Returns string type for a service object of type '<CustomInitialize-response>"
  "api_msgs/CustomInitializeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomInitialize-response)))
  "Returns string type for a service object of type 'CustomInitialize-response"
  "api_msgs/CustomInitializeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomInitialize-response>)))
  "Returns md5sum for a message object of type '<CustomInitialize-response>"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomInitialize-response)))
  "Returns md5sum for a message object of type 'CustomInitialize-response"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomInitialize-response>)))
  "Returns full string definition for message of type '<CustomInitialize-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomInitialize-response)))
  "Returns full string definition for message of type 'CustomInitialize-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomInitialize-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomInitialize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomInitialize-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomInitialize)))
  'CustomInitialize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomInitialize)))
  'CustomInitialize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomInitialize)))
  "Returns string type for a service object of type '<CustomInitialize>"
  "api_msgs/CustomInitialize")