(in-package :cl-slack)

;;
;; Starts a Real Time Messaging session.
;; * path-url : /rtm.connect
;;
(defun get-rtm.connect (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/rtm.connect"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Starts a Real Time Messaging session.
;; * path-url : /rtm.start
;;
(defun get-rtm.start (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/rtm.start"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
