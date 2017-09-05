; Auto-generated. Do not edit!


(cl:in-package api-msg)


;//! \htmlinclude GridPose.msg.html

(cl:defclass <GridPose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type api-msg:GridPoint
    :initform (cl:make-instance 'api-msg:GridPoint))
   (head
    :reader head
    :initarg :head
    :type api-msg:GridPoint
    :initform (cl:make-instance 'api-msg:GridPoint))
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass GridPose (<GridPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name api-msg:<GridPose> is deprecated: use api-msg:GridPose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-msg:pose-val is deprecated.  Use api-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <GridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-msg:head-val is deprecated.  Use api-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <GridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader api-msg:msg-val is deprecated.  Use api-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridPose>) ostream)
  "Serializes a message object of type '<GridPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridPose>) istream)
  "Deserializes a message object of type '<GridPose>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridPose>)))
  "Returns string type for a message object of type '<GridPose>"
  "api/GridPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridPose)))
  "Returns string type for a message object of type 'GridPose"
  "api/GridPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridPose>)))
  "Returns md5sum for a message object of type '<GridPose>"
  "325a9b2e47d12334233bcc0412c03a62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridPose)))
  "Returns md5sum for a message object of type 'GridPose"
  "325a9b2e47d12334233bcc0412c03a62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridPose>)))
  "Returns full string definition for message of type '<GridPose>"
  (cl:format cl:nil "GridPoint pose~%GridPoint head~%string  msg~%~%================================================================================~%MSG: api/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridPose)))
  "Returns full string definition for message of type 'GridPose"
  (cl:format cl:nil "GridPoint pose~%GridPoint head~%string  msg~%~%================================================================================~%MSG: api/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridPose>))
  "Converts a ROS message object to a list"
  (cl:list 'GridPose
    (cl:cons ':pose (pose msg))
    (cl:cons ':head (head msg))
    (cl:cons ':msg (msg msg))
))
