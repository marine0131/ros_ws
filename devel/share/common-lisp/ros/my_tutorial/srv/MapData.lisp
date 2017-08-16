; Auto-generated. Do not edit!


(cl:in-package my_tutorial-srv)


;//! \htmlinclude MapData-request.msg.html

(cl:defclass <MapData-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass MapData-request (<MapData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-srv:<MapData-request> is deprecated: use my_tutorial-srv:MapData-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MapData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:name-val is deprecated.  Use my_tutorial-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapData-request>) ostream)
  "Serializes a message object of type '<MapData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapData-request>) istream)
  "Deserializes a message object of type '<MapData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapData-request>)))
  "Returns string type for a service object of type '<MapData-request>"
  "my_tutorial/MapDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapData-request)))
  "Returns string type for a service object of type 'MapData-request"
  "my_tutorial/MapDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapData-request>)))
  "Returns md5sum for a message object of type '<MapData-request>"
  "7aab8e6323541cb09b49f080c6bbdaf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapData-request)))
  "Returns md5sum for a message object of type 'MapData-request"
  "7aab8e6323541cb09b49f080c6bbdaf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapData-request>)))
  "Returns full string definition for message of type '<MapData-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapData-request)))
  "Returns full string definition for message of type 'MapData-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapData-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude MapData-response.msg.html

(cl:defclass <MapData-response> (roslisp-msg-protocol:ros-message)
  ((mapHeight
    :reader mapHeight
    :initarg :mapHeight
    :type cl:integer
    :initform 0)
   (mapWidth
    :reader mapWidth
    :initarg :mapWidth
    :type cl:integer
    :initform 0)
   (base64Data
    :reader base64Data
    :initarg :base64Data
    :type cl:string
    :initform ""))
)

(cl:defclass MapData-response (<MapData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-srv:<MapData-response> is deprecated: use my_tutorial-srv:MapData-response instead.")))

(cl:ensure-generic-function 'mapHeight-val :lambda-list '(m))
(cl:defmethod mapHeight-val ((m <MapData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:mapHeight-val is deprecated.  Use my_tutorial-srv:mapHeight instead.")
  (mapHeight m))

(cl:ensure-generic-function 'mapWidth-val :lambda-list '(m))
(cl:defmethod mapWidth-val ((m <MapData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:mapWidth-val is deprecated.  Use my_tutorial-srv:mapWidth instead.")
  (mapWidth m))

(cl:ensure-generic-function 'base64Data-val :lambda-list '(m))
(cl:defmethod base64Data-val ((m <MapData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:base64Data-val is deprecated.  Use my_tutorial-srv:base64Data instead.")
  (base64Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapData-response>) ostream)
  "Serializes a message object of type '<MapData-response>"
  (cl:let* ((signed (cl:slot-value msg 'mapHeight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mapWidth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base64Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base64Data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapData-response>) istream)
  "Deserializes a message object of type '<MapData-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapHeight) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapWidth) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base64Data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base64Data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapData-response>)))
  "Returns string type for a service object of type '<MapData-response>"
  "my_tutorial/MapDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapData-response)))
  "Returns string type for a service object of type 'MapData-response"
  "my_tutorial/MapDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapData-response>)))
  "Returns md5sum for a message object of type '<MapData-response>"
  "7aab8e6323541cb09b49f080c6bbdaf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapData-response)))
  "Returns md5sum for a message object of type 'MapData-response"
  "7aab8e6323541cb09b49f080c6bbdaf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapData-response>)))
  "Returns full string definition for message of type '<MapData-response>"
  (cl:format cl:nil "int32 mapHeight~%int32 mapWidth~%string base64Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapData-response)))
  "Returns full string definition for message of type 'MapData-response"
  (cl:format cl:nil "int32 mapHeight~%int32 mapWidth~%string base64Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapData-response>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'base64Data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapData-response
    (cl:cons ':mapHeight (mapHeight msg))
    (cl:cons ':mapWidth (mapWidth msg))
    (cl:cons ':base64Data (base64Data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapData)))
  'MapData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapData)))
  'MapData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapData)))
  "Returns string type for a service object of type '<MapData>"
  "my_tutorial/MapData")