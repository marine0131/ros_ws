
(cl:in-package :asdf)

(defsystem "my_tutorial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalList" :depends-on ("_package_GoalList"))
    (:file "_package_GoalList" :depends-on ("_package"))
    (:file "DelGoal" :depends-on ("_package_DelGoal"))
    (:file "_package_DelGoal" :depends-on ("_package"))
    (:file "MapData" :depends-on ("_package_MapData"))
    (:file "_package_MapData" :depends-on ("_package"))
    (:file "MapRename" :depends-on ("_package_MapRename"))
    (:file "_package_MapRename" :depends-on ("_package"))
    (:file "MapList" :depends-on ("_package_MapList"))
    (:file "_package_MapList" :depends-on ("_package"))
    (:file "AddGoal" :depends-on ("_package_AddGoal"))
    (:file "_package_AddGoal" :depends-on ("_package"))
  ))