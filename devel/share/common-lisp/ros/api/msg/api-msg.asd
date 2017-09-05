
(cl:in-package :asdf)

(defsystem "api-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GridPose" :depends-on ("_package_GridPose"))
    (:file "_package_GridPose" :depends-on ("_package"))
    (:file "GridPoint" :depends-on ("_package_GridPoint"))
    (:file "_package_GridPoint" :depends-on ("_package"))
    (:file "NavGoal" :depends-on ("_package_NavGoal"))
    (:file "_package_NavGoal" :depends-on ("_package"))
  ))