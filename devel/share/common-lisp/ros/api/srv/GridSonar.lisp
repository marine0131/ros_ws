; Auto-generated. Do not edit!


(cl:in-package api-srv)


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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<GridSonar-request> is deprecated: use api-srv:GridSonar-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GridSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:request-val is deprecated.  Use api-srv:request instead.")
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
  "api/GridSonarRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridSonar-request)))
  "Returns string type for a service object of type 'GridSonar-request"
  "api/GridSonarRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridSonar-request>)))
  "Returns md5sum for a message object of type '<GridSonar-request>"
  "669b7318ba1fac1b95da7f086bcce00d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridSonar-request)))
  "Returns md5sum for a message object of type 'GridSonar-request"
  "669b7318ba1fac1b95da7f086bcce00d")
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
  ((data
    :reader data
    :initarg :data
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<GridSonar-response> is deprecated: use api-srv:GridSonar-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GridSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:data-val is deprecated.  Use api-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GridSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:msg-val is deprecated.  Use api-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridSonar-response>) ostream)
  "Serializes a message object of type '<GridSonar-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
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
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "api/GridSonarResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridSonar-response)))
  "Returns string type for a service object of type 'GridSonar-response"
  "api/GridSonarResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridSonar-response>)))
  "Returns md5sum for a message object of type '<GridSonar-response>"
  "669b7318ba1fac1b95da7f086bcce00d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridSonar-response)))
  "Returns md5sum for a message object of type 'GridSonar-response"
  "669b7318ba1fac1b95da7f086bcce00d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridSonar-response>)))
  "Returns full string definition for message of type '<GridSonar-response>"
  (cl:format cl:nil "string data~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridSonar-response)))
  "Returns full string definition for message of type 'GridSonar-response"
  (cl:format cl:nil "string data~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridSonar-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridSonar-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GridSonar-response
    (cl:cons ':data (data msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GridSonar)))
  'GridSonar-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GridSonar)))
  'GridSonar-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridSonar)))
  "Returns string type for a service object of type '<GridSonar>"
  "api/GridSonar")