; Auto-generated. Do not edit!


(cl:in-package xunjian_nav-msg)


;//! \htmlinclude Wheelvelocity.msg.html

(cl:defclass <Wheelvelocity> (roslisp-msg-protocol:ros-message)
  ((vl
    :reader vl
    :initarg :vl
    :type cl:fixnum
    :initform 0)
   (vr
    :reader vr
    :initarg :vr
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Wheelvelocity (<Wheelvelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wheelvelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wheelvelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xunjian_nav-msg:<Wheelvelocity> is deprecated: use xunjian_nav-msg:Wheelvelocity instead.")))

(cl:ensure-generic-function 'vl-val :lambda-list '(m))
(cl:defmethod vl-val ((m <Wheelvelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:vl-val is deprecated.  Use xunjian_nav-msg:vl instead.")
  (vl m))

(cl:ensure-generic-function 'vr-val :lambda-list '(m))
(cl:defmethod vr-val ((m <Wheelvelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:vr-val is deprecated.  Use xunjian_nav-msg:vr instead.")
  (vr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wheelvelocity>) ostream)
  "Serializes a message object of type '<Wheelvelocity>"
  (cl:let* ((signed (cl:slot-value msg 'vl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wheelvelocity>) istream)
  "Deserializes a message object of type '<Wheelvelocity>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vl) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vr) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wheelvelocity>)))
  "Returns string type for a message object of type '<Wheelvelocity>"
  "xunjian_nav/Wheelvelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wheelvelocity)))
  "Returns string type for a message object of type 'Wheelvelocity"
  "xunjian_nav/Wheelvelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wheelvelocity>)))
  "Returns md5sum for a message object of type '<Wheelvelocity>"
  "354004442bfbf93ff928adad1c8f8f37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wheelvelocity)))
  "Returns md5sum for a message object of type 'Wheelvelocity"
  "354004442bfbf93ff928adad1c8f8f37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wheelvelocity>)))
  "Returns full string definition for message of type '<Wheelvelocity>"
  (cl:format cl:nil "int16 vl~%int16 vr ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wheelvelocity)))
  "Returns full string definition for message of type 'Wheelvelocity"
  (cl:format cl:nil "int16 vl~%int16 vr ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wheelvelocity>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wheelvelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'Wheelvelocity
    (cl:cons ':vl (vl msg))
    (cl:cons ':vr (vr msg))
))
