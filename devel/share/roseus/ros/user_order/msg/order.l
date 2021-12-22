;; Auto-generated. Do not edit!


(when (boundp 'user_order::order)
  (if (not (find-package "USER_ORDER"))
    (make-package "USER_ORDER"))
  (shadow 'order (find-package "USER_ORDER")))
(unless (find-package "USER_ORDER::ORDER")
  (make-package "USER_ORDER::ORDER"))

(in-package "ROS")
;;//! \htmlinclude order.msg.html


(defclass user_order::order
  :super ros::object
  :slots (_target_coordinate_x _target_coordinate_y ))

(defmethod user_order::order
  (:init
   (&key
    ((:target_coordinate_x __target_coordinate_x) 0)
    ((:target_coordinate_y __target_coordinate_y) 0)
    )
   (send-super :init)
   (setq _target_coordinate_x (round __target_coordinate_x))
   (setq _target_coordinate_y (round __target_coordinate_y))
   self)
  (:target_coordinate_x
   (&optional __target_coordinate_x)
   (if __target_coordinate_x (setq _target_coordinate_x __target_coordinate_x)) _target_coordinate_x)
  (:target_coordinate_y
   (&optional __target_coordinate_y)
   (if __target_coordinate_y (setq _target_coordinate_y __target_coordinate_y)) _target_coordinate_y)
  (:serialization-length
   ()
   (+
    ;; int32 _target_coordinate_x
    4
    ;; int32 _target_coordinate_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _target_coordinate_x
       (write-long _target_coordinate_x s)
     ;; int32 _target_coordinate_y
       (write-long _target_coordinate_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _target_coordinate_x
     (setq _target_coordinate_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_coordinate_y
     (setq _target_coordinate_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get user_order::order :md5sum-) "c85ee4726e19a286fd142a1dc905754d")
(setf (get user_order::order :datatype-) "user_order/order")
(setf (get user_order::order :definition-)
      "int32 target_coordinate_x
int32 target_coordinate_y

")



(provide :user_order/order "c85ee4726e19a286fd142a1dc905754d")


