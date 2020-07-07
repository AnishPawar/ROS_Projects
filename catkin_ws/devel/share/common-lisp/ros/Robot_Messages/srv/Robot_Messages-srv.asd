
(cl:in-package :asdf)

(defsystem "Robot_Messages-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BatterySrv" :depends-on ("_package_BatterySrv"))
    (:file "_package_BatterySrv" :depends-on ("_package"))
    (:file "CircleArea" :depends-on ("_package_CircleArea"))
    (:file "_package_CircleArea" :depends-on ("_package"))
  ))