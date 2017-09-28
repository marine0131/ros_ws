; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude GridSonar-request.msg.html

(cl:defclass <GridSonar-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass GridSonar-request (<GridSonar-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridSonar-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridSonar-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GridSonar-request> is deprecated: use api_msgs-srv:GridSonar-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GridSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:request-val is deprecated.  Use api_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridSonar-request>) ostream)
  "Serializes a message object of type '<GridSonar-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridSonar-request>) istream)
  "Deserializes a message object of type '<GridSonar-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridSonar-request>)))
  "Returns string type for a service object of type '<GridSonar-request>"
  "api_msgs/GridSonarRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridSonar-request)))
  "Returns string type for a service object of type 'GridSonar-request"
  "api_msgs/GridSonarRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridSonar-request>)))
  "Returns md5sum for a message object of type '<GridSonar-request>"
  "dbd67d6adab3380a19248979a79aadd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridSonar-request)))
  "Returns md5sum for a message object of type 'GridSonar-request"
  "dbd67d6adab3380a19248979a79aadd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridSonar-request>)))
  "Returns full string definition for message of type '<GridSonar-request>"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridSonar-request)))
  "Returns full string definition for message of type 'GridSonar-request"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridSonar-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridSonar-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GridSonar-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude GridSonar-response.msg.html

(cl:defclass <GridSonar-response> (roslisp-msg-protocol:ros-message)
  ((gridPoint
    :reader gridPoint
    :initarg :gridPoint
    :type cl:string
    :initform "")
   (mapInfo
    :reader mapInfo
    :initarg :mapInfo
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass GridSonar-response (<GridSonar-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridSonar-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridSonar-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GridSonar-response> is deprecated: use api_msgs-srv:GridSonar-response instead.")))

(cl:ensure-generic-function 'gridPoint-val :lambda-list '(m))
(cl:defmethod gridPoint-val ((m <GridSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:gridPoint-val is deprecated.  Use api_msgs-srv:gridPoint instead.")
  (gridPoint m))

(cl:ensure-generic-function 'mapInfo-val :lambda-list '(m))
(cl:defmethod mapInfo-val ((m <GridSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapInfo-val is deprecated.  Use api_msgs-srv:mapInfo instead.")
  (mapInfo m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GridSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridSonar-response>) ostream)
  "Serializes a message object of type '<GridSonar-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gridPoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gridPoint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapInfo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapInfo))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridSonar-response>) istream)
  "Deserializes a message object of type '<GridSonar-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gridPoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gridPoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapInfo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapInfo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridSonar-response>)))
  "Returns string type for a service object of type '<GridSonar-response>"
  "api_msgs/GridSonarResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridSonar-response)))
  "Returns string type for a service object of type 'GridSonar-response"
  "api_msgs/GridSonarResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridSonar-response>)))
  "Returns md5sum for a message object of type '<GridSonar-response>"
  "dbd67d6adab3380a19248979a79aadd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridSonar-response)))
  "Returns md5sum for a message object of type 'GridSonar-response"
  "dbd67d6adab3380a19248979a79aadd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridSonar-response>)))
  "Returns full string definition for message of type '<GridSonar-response>"
  (cl:format cl:nil "string gridPoint~%string mapInfo~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridSonar-response)))
  "Returns full string definition for message of type 'GridSonar-response"
  (cl:format cl:nil "string gridPoint~%string mapInfo~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridSonar-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gridPoint))
     4 (cl:length (cl:slot-value msg 'mapInfo))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridSonar-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GridSonar-response
    (cl:cons ':gridPoint (gridPoint msg))
    (cl:cons ':mapInfo (mapInfo msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GridSonar)))
  'GridSonar-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GridSonar)))
  'GridSonar-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridSonar)))
  "Returns string type for a service object of type '<GridSonar>"
  "api_msgs/GridSonar")