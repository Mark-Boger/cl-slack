(in-package :cl-slack)

;;
;; Searches for messages and files matching a query.
;; * path-url : /search.all
;;
(defun get-search.all (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/search.all"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Searches for files matching a query.
;; * path-url : /search.files
;;
(defun get-search.files (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/search.files"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Searches for messages matching a query.
;; * path-url : /search.messages
;;
(defun get-search.messages (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/search.messages"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
