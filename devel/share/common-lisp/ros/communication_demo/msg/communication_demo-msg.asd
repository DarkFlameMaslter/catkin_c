
(cl:in-package :asdf)

(defsystem "communication_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "key" :depends-on ("_package_key"))
    (:file "_package_key" :depends-on ("_package"))
    (:file "mess" :depends-on ("_package_mess"))
    (:file "_package_mess" :depends-on ("_package"))
  ))