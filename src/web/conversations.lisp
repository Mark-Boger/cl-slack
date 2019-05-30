(in-package :cl-slack)

;;
;; Archives a conversation.
;; * path-url : /conversations.archive
;;
(defun post-conversations.archive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.archive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Closes a direct message or multi-person direct message.
;; * path-url : /conversations.close
;;
(defun post-conversations.close (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.close"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Initiates a public or private channel-based conversation
;; * path-url : /conversations.create
;;
(defun post-conversations.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.create"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Fetches a conversation&#39;s history of messages and events.
;; * path-url : /conversations.history
;;
(defun get-conversations.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.history"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve information about a conversation.
;; * path-url : /conversations.info
;;
(defun get-conversations.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Invites users to a channel.
;; * path-url : /conversations.invite
;;
(defun post-conversations.invite (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.invite"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Joins an existing conversation.
;; * path-url : /conversations.join
;;
(defun post-conversations.join (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.join"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Removes a user from a conversation.
;; * path-url : /conversations.kick
;;
(defun post-conversations.kick (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.kick"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Leaves a conversation.
;; * path-url : /conversations.leave
;;
(defun post-conversations.leave (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.leave"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists all channels in a Slack team.
;; * path-url : /conversations.list
;;
(defun get-conversations.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve members of a conversation.
;; * path-url : /conversations.members
;;
(defun get-conversations.members (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.members"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Opens or resumes a direct message or multi-person direct message.
;; * path-url : /conversations.open
;;
(defun post-conversations.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.open"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Renames a conversation.
;; * path-url : /conversations.rename
;;
(defun post-conversations.rename (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.rename"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a conversation
;; * path-url : /conversations.replies
;;
(defun get-conversations.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.replies"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the purpose for a conversation.
;; * path-url : /conversations.setPurpose
;;
(defun post-conversations.setpurpose (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.setPurpose"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the topic for a conversation.
;; * path-url : /conversations.setTopic
;;
(defun post-conversations.settopic (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.setTopic"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Reverses conversation archival.
;; * path-url : /conversations.unarchive
;;
(defun post-conversations.unarchive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.unarchive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
