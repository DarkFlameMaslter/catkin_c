;; Auto-generated. Do not edit!


(when (boundp 'robot_main::sensor_flag)
  (if (not (find-package "ROBOT_MAIN"))
    (make-package "ROBOT_MAIN"))
  (shadow 'sensor_flag (find-package "ROBOT_MAIN")))
(unless (find-package "ROBOT_MAIN::SENSOR_FLAG")
  (make-package "ROBOT_MAIN::SENSOR_FLAG"))

(in-package "ROS")
;;//! \htmlinclude sensor_flag.msg.html


(defclass robot_main::sensor_flag
  :super ros::object
  :slots (_flag ))

(defmethod robot_main::sensor_flag
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_main::sensor_flag :md5sum-) "aa0dbc5596ec12974ea3a17a045b36e0")
(setf (get robot_main::sensor_flag :datatype-) "robot_main/sensor_flag")
(setf (get robot_main::sensor_flag :definition-)
      "int32 flag

")



(provide :robot_main/sensor_flag "aa0dbc5596ec12974ea3a17a045b36e0")


