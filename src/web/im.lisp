(in-package :cl-slack)

;;
;; Close a direct message channel.
;; * path-url : /im.close
;;
(defun post-im.close (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.close"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Fetches history of messages and events from direct message channel.
;; * path-url : /im.history
;;
(defun get-im.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.history"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists direct message channels for the calling user.
;; * path-url : /im.list
;;
(defun get-im.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the read cursor in a direct message channel.
;; * path-url : /im.mark
;;
(defun post-im.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.mark"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Opens a direct message channel.
;; * path-url : /im.open
;;
(defun post-im.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.open"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a direct message conversation
;; * path-url : /im.replies
;;
(defun get-im.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.replies"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
