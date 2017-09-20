; Auto-generated. Do not edit!


(cl:in-package api_msgs-msg)


;//! \htmlinclude CustomMoveCmd.msg.html

(cl:defclass <CustomMoveCmd> (roslisp-msg-protocol:ros-message)
  ((linear_or_angular
    :reader linear_or_angular
    :initarg :linear_or_angular
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

(cl:defclass CustomMoveCmd (<CustomMoveCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMoveCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMoveCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api_msgs-msg:<CustomMoveCmd> is deprecated: use api_msgs-msg:CustomMoveCmd instead.")))

(cl:ensure-generic-function 'linear_or_angular-val :lambda-list '(m))
(cl:defmethod linear_or_angular-val ((m <CustomMoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-msg:linear_or_angular-val is deprecated.  Use api_msgs-msg:linear_or_angular instead.")
  (linear_or_angular m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <CustomMoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-msg:vel-val is deprecated.  Use api_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <CustomMoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api_msgs-msg:dist-val is deprecated.  Use api_msgs-msg:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMoveCmd>) ostream)
  "Serializes a message object of type '<CustomMoveCmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'linear_or_angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'linear_or_angular))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMoveCmd>) istream)
  "Deserializes a message object of type '<CustomMoveCmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_or_angular) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'linear_or_angular) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMoveCmd>)))
  "Returns string type for a message object of type '<CustomMoveCmd>"
  "api_msgs/CustomMoveCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMoveCmd)))
  "Returns string type for a message object of type 'CustomMoveCmd"
  "api_msgs/CustomMoveCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMoveCmd>)))
  "Returns md5sum for a message object of type '<CustomMoveCmd>"
  "c8d512fbff9974e1ca583460cdb83683")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMoveCmd)))
  "Returns md5sum for a message object of type 'CustomMoveCmd"
  "c8d512fbff9974e1ca583460cdb83683")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMoveCmd>)))
  "Returns full string definition for message of type '<CustomMoveCmd>"
  (cl:format cl:nil "string linear_or_angular~%float32 vel~%float32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMoveCmd)))
  "Returns full string definition for message of type 'CustomMoveCmd"
  (cl:format cl:nil "string linear_or_angular~%float32 vel~%float32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMoveCmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'linear_or_angular))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMoveCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMoveCmd
    (cl:cons ':linear_or_angular (linear_or_angular msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':dist (dist msg))
))
