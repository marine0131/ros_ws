; Auto-generated. Do not edit!


(cl:in-package my_tutorial-msg)


;//! \htmlinclude GridPose.msg.html

(cl:defclass <GridPose> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (grid_x
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

(cl:defclass GridPose (<GridPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-msg:<GridPose> is deprecated: use my_tutorial-msg:GridPose instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <GridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:angle-val is deprecated.  Use my_tutorial-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'grid_x-val :lambda-list '(m))
(cl:defmethod grid_x-val ((m <GridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:grid_x-val is deprecated.  Use my_tutorial-msg:grid_x instead.")
  (grid_x m))

(cl:ensure-generic-function 'grid_y-val :lambda-list '(m))
(cl:defmethod grid_y-val ((m <GridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:grid_y-val is deprecated.  Use my_tutorial-msg:grid_y instead.")
  (grid_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridPose>) ostream)
  "Serializes a message object of type '<GridPose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridPose>) istream)
  "Deserializes a message object of type '<GridPose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridPose>)))
  "Returns string type for a message object of type '<GridPose>"
  "my_tutorial/GridPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridPose)))
  "Returns string type for a message object of type 'GridPose"
  "my_tutorial/GridPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridPose>)))
  "Returns md5sum for a message object of type '<GridPose>"
  "80c7a2a3e13a164b1f55abe92db14484")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridPose)))
  "Returns md5sum for a message object of type 'GridPose"
  "80c7a2a3e13a164b1f55abe92db14484")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridPose>)))
  "Returns full string definition for message of type '<GridPose>"
  (cl:format cl:nil "float32   angle~%int32   grid_x~%int32   grid_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridPose)))
  "Returns full string definition for message of type 'GridPose"
  (cl:format cl:nil "float32   angle~%int32   grid_x~%int32   grid_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridPose>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridPose>))
  "Converts a ROS message object to a list"
  (cl:list 'GridPose
    (cl:cons ':angle (angle msg))
    (cl:cons ':grid_x (grid_x msg))
    (cl:cons ':grid_y (grid_y msg))
))
