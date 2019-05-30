(in-package :cl-slack)

;;
;; Deletes a message.
;; * path-url : /chat.delete
;;
(defun post-chat.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.delete"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a permalink URL for a specific extant message
;; * path-url : /chat.getPermalink
;;
(defun get-chat.getpermalink (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.getPermalink"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Share a me message into a channel.
;; * path-url : /chat.meMessage
;;
(defun post-chat.memessage (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.meMessage"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sends an ephemeral message to a user in a channel.
;; * path-url : /chat.postEphemeral
;;
(defun post-chat.postephemeral (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.postEphemeral"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sends a message to a channel.
;; * path-url : /chat.postMessage
;;
(defun post-chat.postmessage (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.postMessage"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Provide custom unfurl behavior for user-posted URLs
;; * path-url : /chat.unfurl
;;
(defun post-chat.unfurl (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.unfurl"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Updates a message.
;; * path-url : /chat.update
;;
(defun post-chat.update (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.update"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
