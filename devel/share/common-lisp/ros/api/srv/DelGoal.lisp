; Auto-generated. Do not edit!


(cl:in-package api-srv)


;//! \htmlinclude DelGoal-request.msg.html

(cl:defclass <DelGoal-request> (roslisp-msg-protocol:ros-message)
  ((mapName
    :reader mapName
    :initarg :mapName
    :type cl:string
    :initform "")
   (goalName
    :reader goalName
    :initarg :goalName
    :type cl:string
    :initform ""))
)

(cl:defclass DelGoal-request (<DelGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<DelGoal-request> is deprecated: use api-srv:DelGoal-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <DelGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:mapName-val is deprecated.  Use api-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'goalName-val :lambda-list '(m))
(cl:defmethod goalName-val ((m <DelGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:goalName-val is deprecated.  Use api-srv:goalName instead.")
  (goalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelGoal-request>) ostream)
  "Serializes a message object of type '<DelGoal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelGoal-request>) istream)
  "Deserializes a message object of type '<DelGoal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelGoal-request>)))
  "Returns string type for a service object of type '<DelGoal-request>"
  "api/DelGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelGoal-request)))
  "Returns string type for a service object of type 'DelGoal-request"
  "api/DelGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelGoal-request>)))
  "Returns md5sum for a message object of type '<DelGoal-request>"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelGoal-request)))
  "Returns md5sum for a message object of type 'DelGoal-request"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelGoal-request>)))
  "Returns full string definition for message of type '<DelGoal-request>"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelGoal-request)))
  "Returns full string definition for message of type 'DelGoal-request"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelGoal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     4 (cl:length (cl:slot-value msg 'goalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DelGoal-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':goalName (goalName msg))
))
;//! \htmlinclude DelGoal-response.msg.html

(cl:defclass <DelGoal-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass DelGoal-response (<DelGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<DelGoal-response> is deprecated: use api-srv:DelGoal-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DelGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:res-val is deprecated.  Use api-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelGoal-response>) ostream)
  "Serializes a message object of type '<DelGoal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelGoal-response>) istream)
  "Deserializes a message object of type '<DelGoal-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelGoal-response>)))
  "Returns string type for a service object of type '<DelGoal-response>"
  "api/DelGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelGoal-response)))
  "Returns string type for a service object of type 'DelGoal-response"
  "api/DelGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelGoal-response>)))
  "Returns md5sum for a message object of type '<DelGoal-response>"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelGoal-response)))
  "Returns md5sum for a message object of type 'DelGoal-response"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelGoal-response>)))
  "Returns full string definition for message of type '<DelGoal-response>"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelGoal-response)))
  "Returns full string definition for message of type 'DelGoal-response"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelGoal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DelGoal-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DelGoal)))
  'DelGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DelGoal)))
  'DelGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelGoal)))
  "Returns string type for a service object of type '<DelGoal>"
  "api/DelGoal")