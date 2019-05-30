(in-package :cl-slack)

;;
;; Gets information about a bot user.
;; * path-url : /bots.info
;;
(defun get-bots.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/bots.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
