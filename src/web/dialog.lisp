(in-package :cl-slack)

;;
;; Open a dialog with a user
;; * path-url : /dialog.open
;;
(defun get-dialog.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dialog.open"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
