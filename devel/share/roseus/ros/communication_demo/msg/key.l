;; Auto-generated. Do not edit!


(when (boundp 'communication_demo::key)
  (if (not (find-package "COMMUNICATION_DEMO"))
    (make-package "COMMUNICATION_DEMO"))
  (shadow 'key (find-package "COMMUNICATION_DEMO")))
(unless (find-package "COMMUNICATION_DEMO::KEY")
  (make-package "COMMUNICATION_DEMO::KEY"))

(in-package "ROS")
;;//! \htmlinclude key.msg.html


(defclass communication_demo::key
  :super ros::object
  :slots (_key ))

(defmethod communication_demo::key
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

(setf (get communication_demo::key :md5sum-) "d5f7d6b16cb4e9d7a81b607f04247968")
(setf (get communication_demo::key :datatype-) "communication_demo/key")
(setf (get communication_demo::key :definition-)
      "int32 key

")



(provide :communication_demo/key "d5f7d6b16cb4e9d7a81b607f04247968")


