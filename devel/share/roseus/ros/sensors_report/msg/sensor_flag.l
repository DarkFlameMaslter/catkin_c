;; Auto-generated. Do not edit!


(when (boundp 'sensors_report::sensor_flag)
  (if (not (find-package "SENSORS_REPORT"))
    (make-package "SENSORS_REPORT"))
  (shadow 'sensor_flag (find-package "SENSORS_REPORT")))
(unless (find-package "SENSORS_REPORT::SENSOR_FLAG")
  (make-package "SENSORS_REPORT::SENSOR_FLAG"))

(in-package "ROS")
;;//! \htmlinclude sensor_flag.msg.html


(defclass sensors_report::sensor_flag
  :super ros::object
  :slots (_flag ))

(defmethod sensors_report::sensor_flag
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

(setf (get sensors_report::sensor_flag :md5sum-) "aa0dbc5596ec12974ea3a17a045b36e0")
(setf (get sensors_report::sensor_flag :datatype-) "sensors_report/sensor_flag")
(setf (get sensors_report::sensor_flag :definition-)
      "int32 flag

")



(provide :sensors_report/sensor_flag "aa0dbc5596ec12974ea3a17a045b36e0")


