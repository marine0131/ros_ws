; Auto-generated. Do not edit!


(cl:in-package api_msgs-srv)


;//! \htmlinclude GridLaser-request.msg.html

(cl:defclass <GridLaser-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass GridLaser-request (<GridLaser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridLaser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridLaser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GridLaser-request> is deprecated: use api_msgs-srv:GridLaser-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GridLaser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:request-val is deprecated.  Use api_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridLaser-request>) ostream)
  "Serializes a message object of type '<GridLaser-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridLaser-request>) istream)
  "Deserializes a message object of type '<GridLaser-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridLaser-request>)))
  "Returns string type for a service object of type '<GridLaser-request>"
  "api_msgs/GridLaserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser-request)))
  "Returns string type for a service object of type 'GridLaser-request"
  "api_msgs/GridLaserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridLaser-request>)))
  "Returns md5sum for a message object of type '<GridLaser-request>"
  "498668283682ba74a2eee3927d47dcd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridLaser-request)))
  "Returns md5sum for a message object of type 'GridLaser-request"
  "498668283682ba74a2eee3927d47dcd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridLaser-request>)))
  "Returns full string definition for message of type '<GridLaser-request>"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridLaser-request)))
  "Returns full string definition for message of type 'GridLaser-request"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridLaser-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridLaser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GridLaser-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude GridLaser-response.msg.html

(cl:defclass <GridLaser-response> (roslisp-msg-protocol:ros-message)
  ((gridPoint
    :reader gridPoint
    :initarg :gridPoint
    :type (cl:vector api_msgs-msg:GridPoint)
   :initform (cl:make-array 0 :element-type 'api_msgs-msg:GridPoint :initial-element (cl:make-instance 'api_msgs-msg:GridPoint)))
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

(cl:defclass GridLaser-response (<GridLaser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridLaser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridLaser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-srv:<GridLaser-response> is deprecated: use api_msgs-srv:GridLaser-response instead.")))

(cl:ensure-generic-function 'gridPoint-val :lambda-list '(m))
(cl:defmethod gridPoint-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:gridPoint-val is deprecated.  Use api_msgs-srv:gridPoint instead.")
  (gridPoint m))

(cl:ensure-generic-function 'mapInfo-val :lambda-list '(m))
(cl:defmethod mapInfo-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:mapInfo-val is deprecated.  Use api_msgs-srv:mapInfo instead.")
  (mapInfo m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-srv:msg-val is deprecated.  Use api_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridLaser-response>) ostream)
  "Serializes a message object of type '<GridLaser-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gridPoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gridPoint))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridLaser-response>) istream)
  "Deserializes a message object of type '<GridLaser-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gridPoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gridPoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'api_msgs-msg:GridPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridLaser-response>)))
  "Returns string type for a service object of type '<GridLaser-response>"
  "api_msgs/GridLaserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser-response)))
  "Returns string type for a service object of type 'GridLaser-response"
  "api_msgs/GridLaserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridLaser-response>)))
  "Returns md5sum for a message object of type '<GridLaser-response>"
  "498668283682ba74a2eee3927d47dcd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridLaser-response)))
  "Returns md5sum for a message object of type 'GridLaser-response"
  "498668283682ba74a2eee3927d47dcd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridLaser-response>)))
  "Returns full string definition for message of type '<GridLaser-response>"
  (cl:format cl:nil "GridPoint[] gridPoint~%string mapInfo~%string msg~%~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridLaser-response)))
  "Returns full string definition for message of type 'GridLaser-response"
  (cl:format cl:nil "GridPoint[] gridPoint~%string mapInfo~%string msg~%~%~%================================================================================~%MSG: api_msgs/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridLaser-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gridPoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'mapInfo))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridLaser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GridLaser-response
    (cl:cons ':gridPoint (gridPoint msg))
    (cl:cons ':mapInfo (mapInfo msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GridLaser)))
  'GridLaser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GridLaser)))
  'GridLaser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser)))
  "Returns string type for a service object of type '<GridLaser>"
  "api_msgs/GridLaser")