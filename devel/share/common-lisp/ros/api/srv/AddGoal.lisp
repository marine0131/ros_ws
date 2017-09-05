; Auto-generated. Do not edit!


(cl:in-package api-srv)


;//! \htmlinclude AddGoal-request.msg.html

(cl:defclass <AddGoal-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddGoal-request (<AddGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<AddGoal-request> is deprecated: use api-srv:AddGoal-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <AddGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:mapName-val is deprecated.  Use api-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'goalName-val :lambda-list '(m))
(cl:defmethod goalName-val ((m <AddGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:goalName-val is deprecated.  Use api-srv:goalName instead.")
  (goalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddGoal-request>) ostream)
  "Serializes a message object of type '<AddGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddGoal-request>) istream)
  "Deserializes a message object of type '<AddGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddGoal-request>)))
  "Returns string type for a service object of type '<AddGoal-request>"
  "api/AddGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGoal-request)))
  "Returns string type for a service object of type 'AddGoal-request"
  "api/AddGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddGoal-request>)))
  "Returns md5sum for a message object of type '<AddGoal-request>"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddGoal-request)))
  "Returns md5sum for a message object of type 'AddGoal-request"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddGoal-request>)))
  "Returns full string definition for message of type '<AddGoal-request>"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddGoal-request)))
  "Returns full string definition for message of type 'AddGoal-request"
  (cl:format cl:nil "string mapName~%string goalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddGoal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     4 (cl:length (cl:slot-value msg 'goalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddGoal-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':goalName (goalName msg))
))
;//! \htmlinclude AddGoal-response.msg.html

(cl:defclass <AddGoal-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass AddGoal-response (<AddGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<AddGoal-response> is deprecated: use api-srv:AddGoal-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <AddGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:res-val is deprecated.  Use api-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddGoal-response>) ostream)
  "Serializes a message object of type '<AddGoal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddGoal-response>) istream)
  "Deserializes a message object of type '<AddGoal-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddGoal-response>)))
  "Returns string type for a service object of type '<AddGoal-response>"
  "api/AddGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGoal-response)))
  "Returns string type for a service object of type 'AddGoal-response"
  "api/AddGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddGoal-response>)))
  "Returns md5sum for a message object of type '<AddGoal-response>"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddGoal-response)))
  "Returns md5sum for a message object of type 'AddGoal-response"
  "802c28d41326fad853e80597ef4c8c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddGoal-response>)))
  "Returns full string definition for message of type '<AddGoal-response>"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddGoal-response)))
  "Returns full string definition for message of type 'AddGoal-response"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddGoal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddGoal-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddGoal)))
  'AddGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddGoal)))
  'AddGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddGoal)))
  "Returns string type for a service object of type '<AddGoal>"
  "api/AddGoal")