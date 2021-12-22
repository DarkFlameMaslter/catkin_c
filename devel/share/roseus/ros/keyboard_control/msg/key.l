;; Auto-generated. Do not edit!


(when (boundp 'keyboard_control::key)
  (if (not (find-package "KEYBOARD_CONTROL"))
    (make-package "KEYBOARD_CONTROL"))
  (shadow 'key (find-package "KEYBOARD_CONTROL")))
(unless (find-package "KEYBOARD_CONTROL::KEY")
  (make-package "KEYBOARD_CONTROL::KEY"))

(in-package "ROS")
;;//! \htmlinclude key.msg.html


(defclass keyboard_control::key
  :super ros::object
  :slots (_key ))

(defmethod keyboard_control::key
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

(setf (get keyboard_control::key :md5sum-) "d5f7d6b16cb4e9d7a81b607f04247968")
(setf (get keyboard_control::key :datatype-) "keyboard_control/key")
(setf (get keyboard_control::key :definition-)
      "int32 key

")



(provide :keyboard_control/key "d5f7d6b16cb4e9d7a81b607f04247968")


