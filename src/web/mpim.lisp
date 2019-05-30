(in-package :cl-slack)

;;
;; Closes a multiparty direct message channel.
;; * path-url : /mpim.close
;;
(defun post-mpim.close (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.close"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Fetches history of messages and events from a multiparty direct message.
;; * path-url : /mpim.history
;;
(defun get-mpim.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.history"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists multiparty direct message channels for the calling user.
;; * path-url : /mpim.list
;;
(defun get-mpim.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the read cursor in a multiparty direct message channel.
;; * path-url : /mpim.mark
;;
(defun post-mpim.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.mark"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; This method opens a multiparty direct message.
;; * path-url : /mpim.open
;;
(defun post-mpim.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.open"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a direct message conversation from a multiparty direct message.
;; * path-url : /mpim.replies
;;
(defun get-mpim.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.replies"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
