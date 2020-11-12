
(cl:in-package :asdf)

(defsystem "hrwros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "meters_2_feet" :depends-on ("_package_meters_2_feet"))
    (:file "_package_meters_2_feet" :depends-on ("_package"))
  ))