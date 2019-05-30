(in-package :cl-slack)

;;
;; Archives a channel.
;; * path-url : /channels.archive
;;
(defun post-channels.archive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.archive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Creates a channel.
;; * path-url : /channels.create
;;
(defun post-channels.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.create"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Fetches history of messages and events from a channel.
;; * path-url : /channels.history
;;
(defun get-channels.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.history"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets information about a channel.
;; * path-url : /channels.info
;;
(defun get-channels.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Invites a user to a channel.
;; * path-url : /channels.invite
;;
(defun post-channels.invite (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.invite"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Joins a channel, creating it if needed.
;; * path-url : /channels.join
;;
(defun post-channels.join (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.join"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Removes a user from a channel.
;; * path-url : /channels.kick
;;
(defun post-channels.kick (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.kick"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Leaves a channel.
;; * path-url : /channels.leave
;;
(defun post-channels.leave (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.leave"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists all channels in a Slack team.
;; * path-url : /channels.list
;;
(defun get-channels.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the read cursor in a channel.
;; * path-url : /channels.mark
;;
(defun post-channels.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.mark" :params params :content content
                                                      :basic-authorization basic-authorization
                                                      :method :post
                                                      :accept "application/json"
                                                      :content-type "application/json"))
;;
;; Renames a channel.
;; * path-url : /channels.rename
;;
(defun post-channels.rename (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.rename"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a channel
;; * path-url : /channels.replies
;;
(defun get-channels.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.replies" :params params :content content
                                                         :basic-authorization basic-authorization
                                                         :method :get
                                                         :accept "application/json"
                                                         :content-type "application/json"))
;;
;; Sets the purpose for a channel.
;; * path-url : /channels.setPurpose
;;
(defun post-channels.setpurpose (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.setPurpose"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Sets the topic for a channel.
;; * path-url : /channels.setTopic
;;
(defun post-channels.settopic (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.setTopic" :params params :content content
                                                          :basic-authorization basic-authorization
                                                          :method :post
                                                          :accept "application/json"
                                                          :content-type "application/json"))
;;
;; Unarchives a channel.
;; * path-url : /channels.unarchive
;;
(defun post-channels.unarchive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.unarchive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
