
(cl:in-package :asdf)

(defsystem "keyboard_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "key" :depends-on ("_package_key"))
    (:file "_package_key" :depends-on ("_package"))
  ))