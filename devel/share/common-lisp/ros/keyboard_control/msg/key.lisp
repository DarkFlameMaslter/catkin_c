; Auto-generated. Do not edit!


(cl:in-package keyboard_control-msg)


;//! \htmlinclude key.msg.html

(cl:defclass <key> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0))
)

(cl:defclass key (<key>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <key>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'key)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name keyboard_control-msg:<key> is deprecated: use keyboard_control-msg:key instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader keyboard_control-msg:key-val is deprecated.  Use keyboard_control-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <key>) ostream)
  "Serializes a message object of type '<key>"
  (cl:let* ((signed (cl:slot-value msg 'key)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <key>) istream)
  "Deserializes a message object of type '<key>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<key>)))
  "Returns string type for a message object of type '<key>"
  "keyboard_control/key")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'key)))
  "Returns string type for a message object of type 'key"
  "keyboard_control/key")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<key>)))
  "Returns md5sum for a message object of type '<key>"
  "d5f7d6b16cb4e9d7a81b607f04247968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'key)))
  "Returns md5sum for a message object of type 'key"
  "d5f7d6b16cb4e9d7a81b607f04247968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<key>)))
  "Returns full string definition for message of type '<key>"
  (cl:format cl:nil "int32 key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'key)))
  "Returns full string definition for message of type 'key"
  (cl:format cl:nil "int32 key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <key>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <key>))
  "Converts a ROS message object to a list"
  (cl:list 'key
    (cl:cons ':key (key msg))
))
