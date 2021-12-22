;; Auto-generated. Do not edit!


(when (boundp 'robot_main::key)
  (if (not (find-package "ROBOT_MAIN"))
    (make-package "ROBOT_MAIN"))
  (shadow 'key (find-package "ROBOT_MAIN")))
(unless (find-package "ROBOT_MAIN::KEY")
  (make-package "ROBOT_MAIN::KEY"))

(in-package "ROS")
;;//! \htmlinclude key.msg.html


(defclass robot_main::key
  :super ros::object
  :slots (_key ))

(defmethod robot_main::key
  (:init
   (&key
    ((:key __key) 0)
    )
   (send-super :init)
   (setq _key (round __key))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; int32 _key
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _key
       (write-long _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_main::key :md5sum-) "d5f7d6b16cb4e9d7a81b607f04247968")
(setf (get robot_main::key :datatype-) "robot_main/key")
(setf (get robot_main::key :definition-)
      "int32 key

")



(provide :robot_main/key "d5f7d6b16cb4e9d7a81b607f04247968")


