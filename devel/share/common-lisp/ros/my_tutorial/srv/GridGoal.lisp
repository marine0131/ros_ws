; Auto-generated. Do not edit!


(cl:in-package my_tutorial-srv)


;//! \htmlinclude GridGoal-request.msg.html

(cl:defclass <GridGoal-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type my_tutorial-msg:GridPose
    :initform (cl:make-instance 'my_tutorial-msg:GridPose)))
)

(cl:defclass GridGoal-request (<GridGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-srv:<GridGoal-request> is deprecated: use my_tutorial-srv:GridGoal-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GridGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:goal-val is deprecated.  Use my_tutorial-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridGoal-request>) ostream)
  "Serializes a message object of type '<GridGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridGoal-request>) istream)
  "Deserializes a message object of type '<GridGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridGoal-request>)))
  "Returns string type for a service object of type '<GridGoal-request>"
  "my_tutorial/GridGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridGoal-request)))
  "Returns string type for a service object of type 'GridGoal-request"
  "my_tutorial/GridGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridGoal-request>)))
  "Returns md5sum for a message object of type '<GridGoal-request>"
  "298385bb4cdfb544530aee8b5d0a6943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridGoal-request)))
  "Returns md5sum for a message object of type 'GridGoal-request"
  "298385bb4cdfb544530aee8b5d0a6943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridGoal-request>)))
  "Returns full string definition for message of type '<GridGoal-request>"
  (cl:format cl:nil "my_tutorial/GridPose goal~%~%================================================================================~%MSG: my_tutorial/GridPose~%float32   angle~%int32   grid_x~%int32   grid_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridGoal-request)))
  "Returns full string definition for message of type 'GridGoal-request"
  (cl:format cl:nil "my_tutorial/GridPose goal~%~%================================================================================~%MSG: my_tutorial/GridPose~%float32   angle~%int32   grid_x~%int32   grid_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GridGoal-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude GridGoal-response.msg.html

(cl:defclass <GridGoal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass GridGoal-response (<GridGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_tutorial-srv:<GridGoal-response> is deprecated: use my_tutorial-srv:GridGoal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GridGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_tutorial-srv:result-val is deprecated.  Use my_tutorial-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridGoal-response>) ostream)
  "Serializes a message object of type '<GridGoal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridGoal-response>) istream)
  "Deserializes a message object of type '<GridGoal-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridGoal-response>)))
  "Returns string type for a service object of type '<GridGoal-response>"
  "my_tutorial/GridGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridGoal-response)))
  "Returns string type for a service object of type 'GridGoal-response"
  "my_tutorial/GridGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridGoal-response>)))
  "Returns md5sum for a message object of type '<GridGoal-response>"
  "298385bb4cdfb544530aee8b5d0a6943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridGoal-response)))
  "Returns md5sum for a message object of type 'GridGoal-response"
  "298385bb4cdfb544530aee8b5d0a6943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridGoal-response>)))
  "Returns full string definition for message of type '<GridGoal-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridGoal-response)))
  "Returns full string definition for message of type 'GridGoal-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridGoal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GridGoal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GridGoal)))
  'GridGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GridGoal)))
  'GridGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridGoal)))
  "Returns string type for a service object of type '<GridGoal>"
  "my_tutorial/GridGoal")