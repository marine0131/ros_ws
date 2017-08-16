; Auto-generated. Do not edit!


(cl:in-package my_tutorial-msg)


;//! \htmlinclude GridLaser.msg.html

(cl:defclass <GridLaser> (roslisp-msg-protocol:ros-message)
  ((gridPnt
    :reader gridPnt
    :initarg :gridPnt
    :type (cl:vector my_tutorial-msg:GridPoint)
   :initform (cl:make-array 0 :element-type 'my_tutorial-msg:GridPoint :initial-element (cl:make-instance 'my_tutorial-msg:GridPoint)))
   (mapGridWidth
    :reader mapGridWidth
    :initarg :mapGridWidth
    :type cl:integer
    :initform 0)
   (mapGridHeight
    :reader mapGridHeight
    :initarg :mapGridHeight
    :type cl:integer
    :initform 0))
)

(cl:defclass GridLaser (<GridLaser>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridLaser>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridLaser)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-msg:<GridLaser> is deprecated: use my_tutorial-msg:GridLaser instead.")))

(cl:ensure-generic-function 'gridPnt-val :lambda-list '(m))
(cl:defmethod gridPnt-val ((m <GridLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:gridPnt-val is deprecated.  Use my_tutorial-msg:gridPnt instead.")
  (gridPnt m))

(cl:ensure-generic-function 'mapGridWidth-val :lambda-list '(m))
(cl:defmethod mapGridWidth-val ((m <GridLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:mapGridWidth-val is deprecated.  Use my_tutorial-msg:mapGridWidth instead.")
  (mapGridWidth m))

(cl:ensure-generic-function 'mapGridHeight-val :lambda-list '(m))
(cl:defmethod mapGridHeight-val ((m <GridLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:mapGridHeight-val is deprecated.  Use my_tutorial-msg:mapGridHeight instead.")
  (mapGridHeight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridLaser>) ostream)
  "Serializes a message object of type '<GridLaser>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gridPnt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gridPnt))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridLaser>) istream)
  "Deserializes a message object of type '<GridLaser>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gridPnt) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gridPnt)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'my_tutorial-msg:GridPoint))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridLaser>)))
  "Returns string type for a message object of type '<GridLaser>"
  "my_tutorial/GridLaser")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridLaser)))
  "Returns string type for a message object of type 'GridLaser"
  "my_tutorial/GridLaser")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridLaser>)))
  "Returns md5sum for a message object of type '<GridLaser>"
  "0e45ff288b41dffb248ecb1dbf9881bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridLaser)))
  "Returns md5sum for a message object of type 'GridLaser"
  "0e45ff288b41dffb248ecb1dbf9881bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridLaser>)))
  "Returns full string definition for message of type '<GridLaser>"
  (cl:format cl:nil "GridPoint[] gridPnt~%int32 mapGridWidth~%int32 mapGridHeight~%~%================================================================================~%MSG: my_tutorial/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridLaser)))
  "Returns full string definition for message of type 'GridLaser"
  (cl:format cl:nil "GridPoint[] gridPnt~%int32 mapGridWidth~%int32 mapGridHeight~%~%================================================================================~%MSG: my_tutorial/GridPoint~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridLaser>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gridPnt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridLaser>))
  "Converts a ROS message object to a list"
  (cl:list 'GridLaser
    (cl:cons ':gridPnt (gridPnt msg))
    (cl:cons ':mapGridWidth (mapGridWidth msg))
    (cl:cons ':mapGridHeight (mapGridHeight msg))
))
