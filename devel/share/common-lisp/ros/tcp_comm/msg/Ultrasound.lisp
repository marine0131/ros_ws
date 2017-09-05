; Auto-generated. Do not edit!


(cl:in-package tcp_comm-msg)


;//! \htmlinclude Ultrasound.msg.html

(cl:defclass <Ultrasound> (roslisp-msg-protocol:ros-message)
  ((ultra_1
    :reader ultra_1
    :initarg :ultra_1
    :type cl:fixnum
    :initform 0)
   (ultra_2
    :reader ultra_2
    :initarg :ultra_2
    :type cl:fixnum
    :initform 0)
   (ultra_3
    :reader ultra_3
    :initarg :ultra_3
    :type cl:fixnum
    :initform 0)
   (ultra_4
    :reader ultra_4
    :initarg :ultra_4
    :type cl:fixnum
    :initform 0)
   (ultra_5
    :reader ultra_5
    :initarg :ultra_5
    :type cl:fixnum
    :initform 0)
   (ultra_6
    :reader ultra_6
    :initarg :ultra_6
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ultrasound (<Ultrasound>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ultrasound>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ultrasound)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tcp_comm-msg:<Ultrasound> is deprecated: use tcp_comm-msg:Ultrasound instead.")))

(cl:ensure-generic-function 'ultra_1-val :lambda-list '(m))
(cl:defmethod ultra_1-val ((m <Ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:ultra_1-val is deprecated.  Use tcp_comm-msg:ultra_1 instead.")
  (ultra_1 m))

(cl:ensure-generic-function 'ultra_2-val :lambda-list '(m))
(cl:defmethod ultra_2-val ((m <Ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:ultra_2-val is deprecated.  Use tcp_comm-msg:ultra_2 instead.")
  (ultra_2 m))

(cl:ensure-generic-function 'ultra_3-val :lambda-list '(m))
(cl:defmethod ultra_3-val ((m <Ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:ultra_3-val is deprecated.  Use tcp_comm-msg:ultra_3 instead.")
  (ultra_3 m))

(cl:ensure-generic-function 'ultra_4-val :lambda-list '(m))
(cl:defmethod ultra_4-val ((m <Ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:ultra_4-val is deprecated.  Use tcp_comm-msg:ultra_4 instead.")
  (ultra_4 m))

(cl:ensure-generic-function 'ultra_5-val :lambda-list '(m))
(cl:defmethod ultra_5-val ((m <Ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:ultra_5-val is deprecated.  Use tcp_comm-msg:ultra_5 instead.")
  (ultra_5 m))

(cl:ensure-generic-function 'ultra_6-val :lambda-list '(m))
(cl:defmethod ultra_6-val ((m <Ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tcp_comm-msg:ultra_6-val is deprecated.  Use tcp_comm-msg:ultra_6 instead.")
  (ultra_6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ultrasound>) ostream)
  "Serializes a message object of type '<Ultrasound>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ultrasound>) istream)
  "Deserializes a message object of type '<Ultrasound>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultra_6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ultrasound>)))
  "Returns string type for a message object of type '<Ultrasound>"
  "tcp_comm/Ultrasound")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ultrasound)))
  "Returns string type for a message object of type 'Ultrasound"
  "tcp_comm/Ultrasound")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ultrasound>)))
  "Returns md5sum for a message object of type '<Ultrasound>"
  "6a2ee6ada60a58fe4ab82604f9f4f532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ultrasound)))
  "Returns md5sum for a message object of type 'Ultrasound"
  "6a2ee6ada60a58fe4ab82604f9f4f532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ultrasound>)))
  "Returns full string definition for message of type '<Ultrasound>"
  (cl:format cl:nil "uint8 ultra_1~%uint8 ultra_2~%uint8 ultra_3~%uint8 ultra_4~%uint8 ultra_5~%uint8 ultra_6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ultrasound)))
  "Returns full string definition for message of type 'Ultrasound"
  (cl:format cl:nil "uint8 ultra_1~%uint8 ultra_2~%uint8 ultra_3~%uint8 ultra_4~%uint8 ultra_5~%uint8 ultra_6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ultrasound>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ultrasound>))
  "Converts a ROS message object to a list"
  (cl:list 'Ultrasound
    (cl:cons ':ultra_1 (ultra_1 msg))
    (cl:cons ':ultra_2 (ultra_2 msg))
    (cl:cons ':ultra_3 (ultra_3 msg))
    (cl:cons ':ultra_4 (ultra_4 msg))
    (cl:cons ':ultra_5 (ultra_5 msg))
    (cl:cons ':ultra_6 (ultra_6 msg))
))
