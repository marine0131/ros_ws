; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude CustomMove-request.msg.html

(cl:defclass <CustomMove-request> (roslisp-msg-protocol:ros-message)
  ((linear_or_angluar
    :reader linear_or_angluar
    :initarg :linear_or_angluar
    :type cl:string
    :initform "")
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass CustomMove-request (<CustomMove-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMove-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMove-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<CustomMove-request> is deprecated: use api_msgs-srv:CustomMove-request instead.")))

(cl:ensure-generic-function 'linear_or_angluar-val :lambda-list '(m))
(cl:defmethod linear_or_angluar-val ((m <CustomMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:linear_or_angluar-val is deprecated.  Use api_msgs-srv:linear_or_angluar instead.")
  (linear_or_angluar m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <CustomMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:vel-val is deprecated.  Use api_msgs-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <CustomMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:dist-val is deprecated.  Use api_msgs-srv:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMove-request>) ostream)
  "Serializes a message object of type '<CustomMove-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'linear_or_angluar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'linear_or_angluar))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMove-request>) istream)
  "Deserializes a message object of type '<CustomMove-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_or_angluar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'linear_or_angluar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMove-request>)))
  "Returns string type for a service object of type '<CustomMove-request>"
  "api_msgs/CustomMoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMove-request)))
  "Returns string type for a service object of type 'CustomMove-request"
  "api_msgs/CustomMoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMove-request>)))
  "Returns md5sum for a message object of type '<CustomMove-request>"
  "7af0037f1549a52fbb4460febba2b5c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMove-request)))
  "Returns md5sum for a message object of type 'CustomMove-request"
  "7af0037f1549a52fbb4460febba2b5c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMove-request>)))
  "Returns full string definition for message of type '<CustomMove-request>"
  (cl:format cl:nil "string linear_or_angluar~%float32 vel~%float32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMove-request)))
  "Returns full string definition for message of type 'CustomMove-request"
  (cl:format cl:nil "string linear_or_angluar~%float32 vel~%float32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMove-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'linear_or_angluar))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMove-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMove-request
    (cl:cons ':linear_or_angluar (linear_or_angluar msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':dist (dist msg))
))
;//! \htmlinclude CustomMove-response.msg.html

(cl:defclass <CustomMove-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass CustomMove-response (<CustomMove-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMove-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMove-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<CustomMove-response> is deprecated: use api_msgs-srv:CustomMove-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <CustomMove-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMove-response>) ostream)
  "Serializes a message object of type '<CustomMove-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMove-response>) istream)
  "Deserializes a message object of type '<CustomMove-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMove-response>)))
  "Returns string type for a service object of type '<CustomMove-response>"
  "api_msgs/CustomMoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMove-response)))
  "Returns string type for a service object of type 'CustomMove-response"
  "api_msgs/CustomMoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMove-response>)))
  "Returns md5sum for a message object of type '<CustomMove-response>"
  "7af0037f1549a52fbb4460febba2b5c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMove-response)))
  "Returns md5sum for a message object of type 'CustomMove-response"
  "7af0037f1549a52fbb4460febba2b5c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMove-response>)))
  "Returns full string definition for message of type '<CustomMove-response>"
  (cl:format cl:nil "string  msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMove-response)))
  "Returns full string definition for message of type 'CustomMove-response"
  (cl:format cl:nil "string  msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMove-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMove-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMove-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomMove)))
  'CustomMove-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomMove)))
  'CustomMove-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMove)))
  "Returns string type for a service object of type '<CustomMove>"
  "api_msgs/CustomMove")