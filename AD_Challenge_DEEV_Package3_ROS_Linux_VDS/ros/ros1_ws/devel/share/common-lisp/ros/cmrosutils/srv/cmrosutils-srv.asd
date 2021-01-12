
(cl:in-package :asdf)

(defsystem "cmrosutils-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CMRemote" :depends-on ("_package_CMRemote"))
    (:file "_package_CMRemote" :depends-on ("_package"))
  ))