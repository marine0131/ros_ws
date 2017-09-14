; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude SetGoal-request.msg.html

(cl:defclass <SetGoal-request> (roslisp-msg-protocol:ros-message)
  ((grid_x
    :reader grid_x
    :initarg :grid_x
    :type cl:integer
    :initform 0)
   (grid_y
    :reader grid_y
    :initarg :grid_y
    :type cl:integer
    :initform 0))
)

(cl:defclass SetGoal-request (<SetGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<SetGoal-request> is deprecated: use api_msgs-srv:SetGoal-request instead.")))

(cl:ensure-generic-function 'grid_x-val :lambda-list '(m))
(cl:defmethod grid_x-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:grid_x-val is deprecated.  Use api_msgs-srv:grid_x instead.")
  (grid_x m))

(cl:ensure-generic-function 'grid_y-val :lambda-list '(m))
(cl:defmethod grid_y-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:grid_y-val is deprecated.  Use api_msgs-srv:grid_y instead.")
  (grid_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-request>) ostream)
  "Serializes a message object of type '<SetGoal-request>"
  (cl:let* ((signed (cl:slot-value msg 'grid_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'grid_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-request>) istream)
  "Deserializes a message object of type '<SetGoal-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grid_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grid_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-request>)))
  "Returns string type for a service object of type '<SetGoal-request>"
  "api_msgs/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-request)))
  "Returns string type for a service object of type 'SetGoal-request"
  "api_msgs/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-request>)))
  "Returns md5sum for a message object of type '<SetGoal-request>"
  "444061e7bc06ee0199b2220d81ce3a4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-request)))
  "Returns md5sum for a message object of type 'SetGoal-request"
  "444061e7bc06ee0199b2220d81ce3a4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-request>)))
  "Returns full string definition for message of type '<SetGoal-request>"
  (cl:format cl:nil "int32   grid_x~%int32   grid_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-request)))
  "Returns full string definition for message of type 'SetGoal-request"
  (cl:format cl:nil "int32   grid_x~%int32   grid_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-request
    (cl:cons ':grid_x (grid_x msg))
    (cl:cons ':grid_y (grid_y msg))
))
;//! \htmlinclude SetGoal-response.msg.html

(cl:defclass <SetGoal-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetGoal-response (<SetGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<SetGoal-response> is deprecated: use api_msgs-srv:SetGoal-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-response>) ostream)
  "Serializes a message object of type '<SetGoal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-response>) istream)
  "Deserializes a message object of type '<SetGoal-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-response>)))
  "Returns string type for a service object of type '<SetGoal-response>"
  "api_msgs/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-response)))
  "Returns string type for a service object of type 'SetGoal-response"
  "api_msgs/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-response>)))
  "Returns md5sum for a message object of type '<SetGoal-response>"
  "444061e7bc06ee0199b2220d81ce3a4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-response)))
  "Returns md5sum for a message object of type 'SetGoal-response"
  "444061e7bc06ee0199b2220d81ce3a4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-response>)))
  "Returns full string definition for message of type '<SetGoal-response>"
  (cl:format cl:nil "string  msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-response)))
  "Returns full string definition for message of type 'SetGoal-response"
  (cl:format cl:nil "string  msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal)))
  "Returns string type for a service object of type '<SetGoal>"
  "api_msgs/SetGoal")