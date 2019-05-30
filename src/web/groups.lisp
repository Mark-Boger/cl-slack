(in-package :cl-slack)

;;
;; Archives a private channel.
;; * path-url : /groups.archive
;;
(defun post-groups.archive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.archive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Creates a private channel.
;; * path-url : /groups.create
;;
(defun post-groups.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.create"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Clones and archives a private channel.
;; * path-url : /groups.createChild
;;
(defun post-groups.createchild (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.createChild"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Fetches history of messages and events from a private channel.
;; * path-url : /groups.history
;;
(defun get-groups.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.history"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets information about a private channel.
;; * path-url : /groups.info
;;
(defun get-groups.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Invites a user to a private channel.
;; * path-url : /groups.invite
;;
(defun post-groups.invite (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.invite"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Removes a user from a private channel.
;; * path-url : /groups.kick
;;
(defun post-groups.kick (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.kick"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Leaves a private channel.
;; * path-url : /groups.leave
;;
(defun post-groups.leave (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.leave"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists private channels that the calling user has access to.
;; * path-url : /groups.list
;;
(defun get-groups.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the read cursor in a private channel.
;; * path-url : /groups.mark
;;
(defun post-groups.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.mark"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Opens a private channel.
;; * path-url : /groups.open
;;
(defun post-groups.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.open"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Renames a private channel.
;; * path-url : /groups.rename
;;
(defun post-groups.rename (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.rename"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a private channel
;; * path-url : /groups.replies
;;
(defun get-groups.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.replies"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the purpose for a private channel.
;; * path-url : /groups.setPurpose
;;
(defun post-groups.setpurpose (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.setPurpose"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the topic for a private channel.
;; * path-url : /groups.setTopic
;;
(defun post-groups.settopic (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.setTopic"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Unarchives a private channel.
;; * path-url : /groups.unarchive
;;
(defun post-groups.unarchive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.unarchive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
