; Auto-generated. Do not edit!


(cl:in-package my_tutorial-msg)


;//! \htmlinclude RobotLoc.msg.html

(cl:defclass <RobotLoc> (roslisp-msg-protocol:ros-message)
  ((loc
    :reader loc
    :initarg :loc
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotLoc (<RobotLoc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotLoc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotLoc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-msg:<RobotLoc> is deprecated: use my_tutorial-msg:RobotLoc instead.")))

(cl:ensure-generic-function 'loc-val :lambda-list '(m))
(cl:defmethod loc-val ((m <RobotLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-msg:loc-val is deprecated.  Use my_tutorial-msg:loc instead.")
  (loc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotLoc>) ostream)
  "Serializes a message object of type '<RobotLoc>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'loc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'loc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'loc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotLoc>) istream)
  "Deserializes a message object of type '<RobotLoc>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'loc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'loc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'loc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotLoc>)))
  "Returns string type for a message object of type '<RobotLoc>"
  "my_tutorial/RobotLoc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotLoc)))
  "Returns string type for a message object of type 'RobotLoc"
  "my_tutorial/RobotLoc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotLoc>)))
  "Returns md5sum for a message object of type '<RobotLoc>"
  "ecc6566a90fb2860df41853cdb4d1853")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotLoc)))
  "Returns md5sum for a message object of type 'RobotLoc"
  "ecc6566a90fb2860df41853cdb4d1853")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotLoc>)))
  "Returns full string definition for message of type '<RobotLoc>"
  (cl:format cl:nil "uint32   loc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotLoc)))
  "Returns full string definition for message of type 'RobotLoc"
  (cl:format cl:nil "uint32   loc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotLoc>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotLoc>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotLoc
    (cl:cons ':loc (loc msg))
))
