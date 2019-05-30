(in-package :cl-slack)

;;
;; Exchanges a temporary OAuth verifier code for an access token.
;; * path-url : /oauth.access
;;
(defun get-oauth.access (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/oauth.access"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Exchanges a temporary OAuth verifier code for a workspace token.
;; * path-url : /oauth.token
;;
(defun get-oauth.token (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/oauth.token"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
