(in-package :cl-slack)

;;
;; Revokes a token.
;; * path-url : /auth.revoke
;;
(defun get-auth.revoke (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/auth.revoke"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Checks authentication &amp; identity.
;; * path-url : /auth.test
;;
(defun get-auth.test (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/auth.test"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
