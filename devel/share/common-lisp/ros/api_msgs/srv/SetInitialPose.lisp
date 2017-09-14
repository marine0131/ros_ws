; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude SetInitialPose-request.msg.html

(cl:defclass <SetInitialPose-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetInitialPose-request (<SetInitialPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitialPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitialPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<SetInitialPose-request> is deprecated: use api_msgs-srv:SetInitialPose-request instead.")))

(cl:ensure-generic-function 'mapName-val :lambda-list '(m))
(cl:defmethod mapName-val ((m <SetInitialPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapName-val is deprecated.  Use api_msgs-srv:mapName instead.")
  (mapName m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetInitialPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:pose-val is deprecated.  Use api_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <SetInitialPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:head-val is deprecated.  Use api_msgs-srv:head instead.")
  (head m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitialPose-request>) ostream)
  "Serializes a message object of type '<SetInitialPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitialPose-request>) istream)
  "Deserializes a message object of type '<SetInitialPose-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitialPose-request>)))
  "Returns string type for a service object of type '<SetInitialPose-request>"
  "api_msgs/SetInitialPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitialPose-request)))
  "Returns string type for a service object of type 'SetInitialPose-request"
  "api_msgs/SetInitialPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitialPose-request>)))
  "Returns md5sum for a message object of type '<SetInitialPose-request>"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitialPose-request)))
  "Returns md5sum for a message object of type 'SetInitialPose-request"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitialPose-request>)))
  "Returns full string definition for message of type '<SetInitialPose-request>"
  (cl:format cl:nil "string mapName~%GridPoint pose~%GridPoint head~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitialPose-request)))
  "Returns full string definition for message of type 'SetInitialPose-request"
  (cl:format cl:nil "string mapName~%GridPoint pose~%GridPoint head~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitialPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitialPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitialPose-request
    (cl:cons ':mapName (mapName msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':head (head msg))
))
;//! \htmlinclude SetInitialPose-response.msg.html

(cl:defclass <SetInitialPose-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetInitialPose-response (<SetInitialPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitialPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitialPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<SetInitialPose-response> is deprecated: use api_msgs-srv:SetInitialPose-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetInitialPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitialPose-response>) ostream)
  "Serializes a message object of type '<SetInitialPose-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitialPose-response>) istream)
  "Deserializes a message object of type '<SetInitialPose-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitialPose-response>)))
  "Returns string type for a service object of type '<SetInitialPose-response>"
  "api_msgs/SetInitialPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitialPose-response)))
  "Returns string type for a service object of type 'SetInitialPose-response"
  "api_msgs/SetInitialPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitialPose-response>)))
  "Returns md5sum for a message object of type '<SetInitialPose-response>"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitialPose-response)))
  "Returns md5sum for a message object of type 'SetInitialPose-response"
  "b6a325da20ef37edfcee672b352f2968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitialPose-response>)))
  "Returns full string definition for message of type '<SetInitialPose-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitialPose-response)))
  "Returns full string definition for message of type 'SetInitialPose-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitialPose-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitialPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitialPose-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInitialPose)))
  'SetInitialPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInitialPose)))
  'SetInitialPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitialPose)))
  "Returns string type for a service object of type '<SetInitialPose>"
  "api_msgs/SetInitialPose")