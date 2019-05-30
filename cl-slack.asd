(asdf:defsystem :cl-slack
  :description "Common Lisp Slack API"
  :author ("Mark Boger <93mar.bog@gmail.com>"
           "Elijah Malaby")
  :version "0.0.0"
  :licence "MIT"
  :depends-on (:drakma
               :cl-json
               :flexi-streams)
  :pathname "src/"
  :components ((:file "package")
               (:module web
                :depends-on ("package")
                :components ((:file "rest")
                             (:file "apps" :depends-on ("rest"))
                             (:file "auth" :depends-on ("rest"))
                             (:file "bots" :depends-on ("rest"))
                             (:file "channels" :depends-on ("rest"))
                             (:file "chat" :depends-on ("rest"))
                             (:file "conversations" :depends-on ("rest"))
                             (:file "dialog" :depends-on ("rest"))
                             (:file "dnd" :depends-on ("rest"))
                             (:file "emoji" :depends-on ("rest"))
                             (:file "files" :depends-on ("rest"))
                             (:file "groups" :depends-on ("rest"))
                             (:file "im" :depends-on ("rest"))
                             (:file "mpim" :depends-on ("rest"))
                             (:file "oath" :depends-on ("rest"))
                             (:file "pins" :depends-on ("rest"))
                             (:file "reactions" :depends-on ("rest"))
                             (:file "rtm" :depends-on ("rest"))
                             (:file "search" :depends-on ("rest"))
                             (:file "stars" :depends-on ("rest"))
                             (:file "team" :depends-on ("rest"))
                             (:file "usergroups" :depends-on ("rest"))
                             (:file "users" :depends-on ("rest"))))
               (:module real-time-messaging)
               (:module conversations)
               (:module events)))
