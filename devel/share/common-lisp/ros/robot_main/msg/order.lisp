; Auto-generated. Do not edit!


(cl:in-package robot_main-msg)


;//! \htmlinclude order.msg.html

(cl:defclass <order> (roslisp-msg-protocol:ros-message)
  ((target_coordinate_x
    :reader target_coordinate_x
    :initarg :target_coordinate_x
    :type cl:integer
    :initform 0)
   (target_coordinate_y
    :reader target_coordinate_y
    :initarg :target_coordinate_y
    :type cl:integer
    :initform 0))
)

(cl:defclass order (<order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_main-msg:<order> is deprecated: use robot_main-msg:order instead.")))

(cl:ensure-generic-function 'target_coordinate_x-val :lambda-list '(m))
(cl:defmethod target_coordinate_x-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_main-msg:target_coordinate_x-val is deprecated.  Use robot_main-msg:target_coordinate_x instead.")
  (target_coordinate_x m))

(cl:ensure-generic-function 'target_coordinate_y-val :lambda-list '(m))
(cl:defmethod target_coordinate_y-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_main-msg:target_coordinate_y-val is deprecated.  Use robot_main-msg:target_coordinate_y instead.")
  (target_coordinate_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <order>) ostream)
  "Serializes a message object of type '<order>"
  (cl:let* ((signed (cl:slot-value msg 'target_coordinate_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_coordinate_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <order>) istream)
  "Deserializes a message object of type '<order>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_coordinate_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_coordinate_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<order>)))
  "Returns string type for a message object of type '<order>"
  "robot_main/order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'order)))
  "Returns string type for a message object of type 'order"
  "robot_main/order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<order>)))
  "Returns md5sum for a message object of type '<order>"
  "c85ee4726e19a286fd142a1dc905754d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'order)))
  "Returns md5sum for a message object of type 'order"
  "c85ee4726e19a286fd142a1dc905754d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<order>)))
  "Returns full string definition for message of type '<order>"
  (cl:format cl:nil "int32 target_coordinate_x~%int32 target_coordinate_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'order)))
  "Returns full string definition for message of type 'order"
  (cl:format cl:nil "int32 target_coordinate_x~%int32 target_coordinate_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <order>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <order>))
  "Converts a ROS message object to a list"
  (cl:list 'order
    (cl:cons ':target_coordinate_x (target_coordinate_x msg))
    (cl:cons ':target_coordinate_y (target_coordinate_y msg))
))
