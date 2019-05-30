(in-package :cl-slack)

;;
;; Lists custom emoji for a team.
;; * path-url : /emoji.list
;;
(defun get-emoji.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/emoji.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
