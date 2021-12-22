; Auto-generated. Do not edit!


(cl:in-package robot_main-msg)


;//! \htmlinclude sensor_flag.msg.html

(cl:defclass <sensor_flag> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass sensor_flag (<sensor_flag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor_flag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor_flag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_main-msg:<sensor_flag> is deprecated: use robot_main-msg:sensor_flag instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <sensor_flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_main-msg:flag-val is deprecated.  Use robot_main-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor_flag>) ostream)
  "Serializes a message object of type '<sensor_flag>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor_flag>) istream)
  "Deserializes a message object of type '<sensor_flag>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor_flag>)))
  "Returns string type for a message object of type '<sensor_flag>"
  "robot_main/sensor_flag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor_flag)))
  "Returns string type for a message object of type 'sensor_flag"
  "robot_main/sensor_flag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor_flag>)))
  "Returns md5sum for a message object of type '<sensor_flag>"
  "aa0dbc5596ec12974ea3a17a045b36e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor_flag)))
  "Returns md5sum for a message object of type 'sensor_flag"
  "aa0dbc5596ec12974ea3a17a045b36e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor_flag>)))
  "Returns full string definition for message of type '<sensor_flag>"
  (cl:format cl:nil "int32 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor_flag)))
  "Returns full string definition for message of type 'sensor_flag"
  (cl:format cl:nil "int32 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor_flag>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor_flag>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor_flag
    (cl:cons ':flag (flag msg))
))
