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
                :components ((:file "slack-web")))
               (:module real-time-messaging)
               (:module conversations)
               (:module events)))
