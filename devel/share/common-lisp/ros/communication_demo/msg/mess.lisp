; Auto-generated. Do not edit!


(cl:in-package communication_demo-msg)


;//! \htmlinclude mess.msg.html

(cl:defclass <mess> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass mess (<mess>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mess>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mess)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name communication_demo-msg:<mess> is deprecated: use communication_demo-msg:mess instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <mess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communication_demo-msg:count-val is deprecated.  Use communication_demo-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mess>) ostream)
  "Serializes a message object of type '<mess>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mess>) istream)
  "Deserializes a message object of type '<mess>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mess>)))
  "Returns string type for a message object of type '<mess>"
  "communication_demo/mess")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mess)))
  "Returns string type for a message object of type 'mess"
  "communication_demo/mess")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mess>)))
  "Returns md5sum for a message object of type '<mess>"
  "8dbac33d2eb67bfeeedd516d65fec846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mess)))
  "Returns md5sum for a message object of type 'mess"
  "8dbac33d2eb67bfeeedd516d65fec846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mess>)))
  "Returns full string definition for message of type '<mess>"
  (cl:format cl:nil "int64 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mess)))
  "Returns full string definition for message of type 'mess"
  (cl:format cl:nil "int64 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mess>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mess>))
  "Converts a ROS message object to a list"
  (cl:list 'mess
    (cl:cons ':count (count msg))
))
