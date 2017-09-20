
(cl:in-package :asdf)

(defsystem "api_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GridPoint" :depends-on ("_package_GridPoint"))
    (:file "_package_GridPoint" :depends-on ("_package"))
    (:file "CustomMoveCmd" :depends-on ("_package_CustomMoveCmd"))
    (:file "_package_CustomMoveCmd" :depends-on ("_package"))
  ))