
(cl:in-package :asdf)

(defsystem "sensors_report-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sensor_flag" :depends-on ("_package_sensor_flag"))
    (:file "_package_sensor_flag" :depends-on ("_package"))
  ))