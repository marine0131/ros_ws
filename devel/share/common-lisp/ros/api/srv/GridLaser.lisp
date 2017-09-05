; Auto-generated. Do not edit!


(cl:in-package api-srv)


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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<GridLaser-request> is deprecated: use api-srv:GridLaser-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GridLaser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:request-val is deprecated.  Use api-srv:request instead.")
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
  "api/GridLaserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser-request)))
  "Returns string type for a service object of type 'GridLaser-request"
  "api/GridLaserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridLaser-request>)))
  "Returns md5sum for a message object of type '<GridLaser-request>"
  "70385a002e518c7e14ab0566622593e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridLaser-request)))
  "Returns md5sum for a message object of type 'GridLaser-request"
  "70385a002e518c7e14ab0566622593e3")
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
  ((laserPoint
    :reader laserPoint
    :initarg :laserPoint
    :type (cl:vector api-msg:GridPoint)
   :initform (cl:make-array 0 :element-type 'api-msg:GridPoint :initial-element (cl:make-instance 'api-msg:GridPoint)))
   (mapGridWidth
    :reader mapGridWidth
    :initarg :mapGridWidth
    :type cl:integer
    :initform 0)
   (mapGridHeight
    :reader mapGridHeight
    :initarg :mapGridHeight
    :type cl:integer
    :initform 0)
   (mapResolution
    :reader mapResolution
    :initarg :mapResolution
    :type cl:float
    :initform 0.0)
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-srv:<GridLaser-response> is deprecated: use api-srv:GridLaser-response instead.")))

(cl:ensure-generic-function 'laserPoint-val :lambda-list '(m))
(cl:defmethod laserPoint-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:laserPoint-val is deprecated.  Use api-srv:laserPoint instead.")
  (laserPoint m))

(cl:ensure-generic-function 'mapGridWidth-val :lambda-list '(m))
(cl:defmethod mapGridWidth-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:mapGridWidth-val is deprecated.  Use api-srv:mapGridWidth instead.")
  (mapGridWidth m))

(cl:ensure-generic-function 'mapGridHeight-val :lambda-list '(m))
(cl:defmethod mapGridHeight-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:mapGridHeight-val is deprecated.  Use api-srv:mapGridHeight instead.")
  (mapGridHeight m))

(cl:ensure-generic-function 'mapResolution-val :lambda-list '(m))
(cl:defmethod mapResolution-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:mapResolution-val is deprecated.  Use api-srv:mapResolution instead.")
  (mapResolution m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GridLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-srv:msg-val is deprecated.  Use api-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridLaser-response>) ostream)
  "Serializes a message object of type '<GridLaser-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laserPoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'laserPoint))
  (cl:let* ((signed (cl:slot-value msg 'mapGridWidth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mapGridHeight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mapResolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (cl:setf (cl:slot-value msg 'laserPoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laserPoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'api-msg:GridPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapGridWidth) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapGridHeight) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mapResolution) (roslisp-utils:decode-single-float-bits bits)))
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
  "api/GridLaserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser-response)))
  "Returns string type for a service object of type 'GridLaser-response"
  "api/GridLaserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridLaser-response>)))
  "Returns md5sum for a message object of type '<GridLaser-response>"
  "70385a002e518c7e14ab0566622593e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridLaser-response)))
  "Returns md5sum for a message object of type 'GridLaser-response"
  "70385a002e518c7e14ab0566622593e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridLaser-response>)))
  "Returns full string definition for message of type '<GridLaser-response>"
  (cl:format cl:nil "GridPoint[] laserPoint~%int32 mapGridWidth~%int32 mapGridHeight~%float32 mapResolution~%string msg~%~%~%================================================================================~%MSG: api/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridLaser-response)))
  "Returns full string definition for message of type 'GridLaser-response"
  (cl:format cl:nil "GridPoint[] laserPoint~%int32 mapGridWidth~%int32 mapGridHeight~%float32 mapResolution~%string msg~%~%~%================================================================================~%MSG: api/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridLaser-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laserPoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridLaser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GridLaser-response
    (cl:cons ':laserPoint (laserPoint msg))
    (cl:cons ':mapGridWidth (mapGridWidth msg))
    (cl:cons ':mapGridHeight (mapGridHeight msg))
    (cl:cons ':mapResolution (mapResolution msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GridLaser)))
  'GridLaser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GridLaser)))
  'GridLaser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser)))
  "Returns string type for a service object of type '<GridLaser>"
  "api/GridLaser")