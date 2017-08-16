; Auto-generated. Do not edit!


(cl:in-package tcp_comm-msg)


;//! \htmlinclude ByteList.msg.html

(cl:defclass <ByteList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ByteList (<ByteList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ByteList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ByteList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tcp_comm-msg:<ByteList> is deprecated: use tcp_comm-msg:ByteList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ByteList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:header-val is deprecated.  Use tcp_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ByteList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:data-val is deprecated.  Use tcp_comm-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ByteList>) ostream)
  "Serializes a message object of type '<ByteList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ByteList>) istream)
  "Deserializes a message object of type '<ByteList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ByteList>)))
  "Returns string type for a message object of type '<ByteList>"
  "tcp_comm/ByteList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ByteList)))
  "Returns string type for a message object of type 'ByteList"
  "tcp_comm/ByteList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ByteList>)))
  "Returns md5sum for a message object of type '<ByteList>"
  "6e83e7c744b829fd85f106a20dc3ada2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ByteList)))
  "Returns md5sum for a message object of type 'ByteList"
  "6e83e7c744b829fd85f106a20dc3ada2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ByteList>)))
  "Returns full string definition for message of type '<ByteList>"
  (cl:format cl:nil "Header header~%char[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ByteList)))
  "Returns full string definition for message of type 'ByteList"
  (cl:format cl:nil "Header header~%char[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ByteList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ByteList>))
  "Converts a ROS message object to a list"
  (cl:list 'ByteList
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
