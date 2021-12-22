
(cl:in-package :asdf)

(defsystem "robot_main-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "key" :depends-on ("_package_key"))
    (:file "_package_key" :depends-on ("_package"))
    (:file "order" :depends-on ("_package_order"))
    (:file "_package_order" :depends-on ("_package"))
    (:file "sensor_flag" :depends-on ("_package_sensor_flag"))
    (:file "_package_sensor_flag" :depends-on ("_package"))
  ))