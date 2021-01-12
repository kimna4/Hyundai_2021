
(cl:in-package :asdf)

(defsystem "hellocm_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Init" :depends-on ("_package_Init"))
    (:file "_package_Init" :depends-on ("_package"))
  ))