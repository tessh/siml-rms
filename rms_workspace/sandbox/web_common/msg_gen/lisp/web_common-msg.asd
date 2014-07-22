
(cl:in-package :asdf)

(defsystem "web_common-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joint_states_web" :depends-on ("_package_joint_states_web"))
    (:file "_package_joint_states_web" :depends-on ("_package"))
    (:file "min_max_joint" :depends-on ("_package_min_max_joint"))
    (:file "_package_min_max_joint" :depends-on ("_package"))
  ))