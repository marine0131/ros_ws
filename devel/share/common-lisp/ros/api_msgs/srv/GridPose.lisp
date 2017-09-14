; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude GridPose-request.msg.html

(cl:defclass <GridPose-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass GridPose-request (<GridPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GridPose-request> is deprecated: use api_msgs-srv:GridPose-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GridPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:request-val is deprecated.  Use api_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridPose-request>) ostream)
  "Serializes a message object of type '<GridPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridPose-request>) istream)
  "Deserializes a message object of type '<GridPose-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridPose-request>)))
  "Returns string type for a service object of type '<GridPose-request>"
  "api_msgs/GridPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridPose-request)))
  "Returns string type for a service object of type 'GridPose-request"
  "api_msgs/GridPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridPose-request>)))
  "Returns md5sum for a message object of type '<GridPose-request>"
  "cb86799e520e4383cc93ac173628b1c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridPose-request)))
  "Returns md5sum for a message object of type 'GridPose-request"
  "cb86799e520e4383cc93ac173628b1c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridPose-request>)))
  "Returns full string definition for message of type '<GridPose-request>"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridPose-request)))
  "Returns full string definition for message of type 'GridPose-request"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GridPose-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude GridPose-response.msg.html

(cl:defclass <GridPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type api_msgs-msg:GridPoint
    :initform (cl:make-instance 'api_msgs-msg:GridPoint))
   (head
    :reader head
    :initarg :head
    :type api_msgs-msg:GridPoint
    :initform (cl:make-instance 'api_msgs-msg:GridPoint))
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass GridPose-response (<GridPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GridPose-response> is deprecated: use api_msgs-srv:GridPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GridPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:pose-val is deprecated.  Use api_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <GridPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:head-val is deprecated.  Use api_msgs-srv:head instead.")
  (head m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GridPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridPose-response>) ostream)
  "Serializes a message object of type '<GridPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridPose-response>) istream)
  "Deserializes a message object of type '<GridPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridPose-response>)))
  "Returns string type for a service object of type '<GridPose-response>"
  "api_msgs/GridPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridPose-response)))
  "Returns string type for a service object of type 'GridPose-response"
  "api_msgs/GridPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridPose-response>)))
  "Returns md5sum for a message object of type '<GridPose-response>"
  "cb86799e520e4383cc93ac173628b1c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridPose-response)))
  "Returns md5sum for a message object of type 'GridPose-response"
  "cb86799e520e4383cc93ac173628b1c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridPose-response>)))
  "Returns full string definition for message of type '<GridPose-response>"
  (cl:format cl:nil "GridPoint pose~%GridPoint head~%string  msg~%~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridPose-response)))
  "Returns full string definition for message of type 'GridPose-response"
  (cl:format cl:nil "GridPoint pose~%GridPoint head~%string  msg~%~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GridPose-response
    (cl:cons ':pose (pose msg))
    (cl:cons ':head (head msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GridPose)))
  'GridPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GridPose)))
  'GridPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridPose)))
  "Returns string type for a service object of type '<GridPose>"
  "api_msgs/GridPose")