(ql:quickload "drakma")
(ql:quickload "cl-json")

(defun rest-call (host url-path
                  &key params content basic-authorization
                    (method :get)
                    (accept "application/json")
                    (content-type "application/json"))
  "call http-request with basic params and conteent and authorization"
  (multiple-value-bind (stream code)
      (drakma:http-request (format nil "~a~a" host url-path) :parameters params :content content :basic-authorization basic-authorization :accept accept :content-type content-type :want-stream t :method method)
    (if (equal code 200)
        (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
               (cl-json:decode-json stream))
        (format t "HTTP CODE : ~A ~%" code))))
;;
;; Checks API calling code.
;; * path-url : /api.test
;;
(defun get-api.test (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/api.test" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns list of permissions this app has on a team.
;; * path-url : /apps.permissions.info
;;
(defun get-apps.permissions.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Allows an app to request additional scopes
;; * path-url : /apps.permissions.request
;;
(defun get-apps.permissions.request (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.request" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns list of resource grants this app has on a team.
;; * path-url : /apps.permissions.resources.list
;;
(defun get-apps.permissions.resources.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.resources.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Returns list of scopes this app has on a team.
;; * path-url : /apps.permissions.scopes.list
;;
(defun get-apps.permissions.scopes.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.scopes.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Revokes a token.
;; * path-url : /auth.revoke
;;
(defun get-auth.revoke (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/auth.revoke" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Checks authentication &amp; identity.
;; * path-url : /auth.test
;;
(defun get-auth.test (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/auth.test" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about a bot user.
;; * path-url : /bots.info
;;
(defun get-bots.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/bots.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Archives a channel.
;; * path-url : /channels.archive
;;
(defun post-channels.archive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.archive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Creates a channel.
;; * path-url : /channels.create
;;
(defun post-channels.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.create" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Fetches history of messages and events from a channel.
;; * path-url : /channels.history
;;
(defun get-channels.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.history" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about a channel.
;; * path-url : /channels.info
;;
(defun get-channels.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Invites a user to a channel.
;; * path-url : /channels.invite
;;
(defun post-channels.invite (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.invite" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Joins a channel, creating it if needed.
;; * path-url : /channels.join
;;
(defun post-channels.join (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.join" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Removes a user from a channel.
;; * path-url : /channels.kick
;;
(defun post-channels.kick (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.kick" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Leaves a channel.
;; * path-url : /channels.leave
;;
(defun post-channels.leave (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.leave" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists all channels in a Slack team.
;; * path-url : /channels.list
;;
(defun get-channels.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/channels.list" :params params :content content
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
  (rest-call "https://slack.com/api" "/channels.rename" :params params :content content
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
  (rest-call "https://slack.com/api" "/channels.setPurpose" :params params :content content
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
  (rest-call "https://slack.com/api" "/channels.unarchive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Deletes a message.
;; * path-url : /chat.delete
;;
(defun post-chat.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.delete" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve a permalink URL for a specific extant message
;; * path-url : /chat.getPermalink
;;
(defun get-chat.getpermalink (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.getPermalink" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Share a me message into a channel.
;; * path-url : /chat.meMessage
;;
(defun post-chat.memessage (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.meMessage" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sends an ephemeral message to a user in a channel.
;; * path-url : /chat.postEphemeral
;;
(defun post-chat.postephemeral (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.postEphemeral" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sends a message to a channel.
;; * path-url : /chat.postMessage
;;
(defun post-chat.postmessage (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.postMessage" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Provide custom unfurl behavior for user-posted URLs
;; * path-url : /chat.unfurl
;;
(defun post-chat.unfurl (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.unfurl" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Updates a message.
;; * path-url : /chat.update
;;
(defun post-chat.update (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/chat.update" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Archives a conversation.
;; * path-url : /conversations.archive
;;
(defun post-conversations.archive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.archive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Closes a direct message or multi-person direct message.
;; * path-url : /conversations.close
;;
(defun post-conversations.close (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.close" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Initiates a public or private channel-based conversation
;; * path-url : /conversations.create
;;
(defun post-conversations.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.create" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Fetches a conversation&#39;s history of messages and events.
;; * path-url : /conversations.history
;;
(defun get-conversations.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.history" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve information about a conversation.
;; * path-url : /conversations.info
;;
(defun get-conversations.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Invites users to a channel.
;; * path-url : /conversations.invite
;;
(defun post-conversations.invite (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.invite" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Joins an existing conversation.
;; * path-url : /conversations.join
;;
(defun post-conversations.join (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.join" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Removes a user from a conversation.
;; * path-url : /conversations.kick
;;
(defun post-conversations.kick (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.kick" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Leaves a conversation.
;; * path-url : /conversations.leave
;;
(defun post-conversations.leave (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.leave" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists all channels in a Slack team.
;; * path-url : /conversations.list
;;
(defun get-conversations.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve members of a conversation.
;; * path-url : /conversations.members
;;
(defun get-conversations.members (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.members" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Opens or resumes a direct message or multi-person direct message.
;; * path-url : /conversations.open
;;
(defun post-conversations.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.open" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Renames a conversation.
;; * path-url : /conversations.rename
;;
(defun post-conversations.rename (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.rename" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a conversation
;; * path-url : /conversations.replies
;;
(defun get-conversations.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.replies" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the purpose for a conversation.
;; * path-url : /conversations.setPurpose
;;
(defun post-conversations.setpurpose (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.setPurpose" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the topic for a conversation.
;; * path-url : /conversations.setTopic
;;
(defun post-conversations.settopic (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.setTopic" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Reverses conversation archival.
;; * path-url : /conversations.unarchive
;;
(defun post-conversations.unarchive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/conversations.unarchive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Open a dialog with a user
;; * path-url : /dialog.open
;;
(defun get-dialog.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dialog.open" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Ends the current user&#39;s Do Not Disturb session immediately.
;; * path-url : /dnd.endDnd
;;
(defun post-dnd.enddnd (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.endDnd" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Ends the current user&#39;s snooze mode immediately.
;; * path-url : /dnd.endSnooze
;;
(defun post-dnd.endsnooze (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.endSnooze" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieves a user&#39;s current Do Not Disturb status.
;; * path-url : /dnd.info
;;
(defun get-dnd.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Turns on Do Not Disturb mode for the current user, or changes its duration.
;; * path-url : /dnd.setSnooze
;;
(defun post-dnd.setsnooze (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.setSnooze" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieves the Do Not Disturb status for users on a team.
;; * path-url : /dnd.teamInfo
;;
(defun get-dnd.teaminfo (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.teamInfo" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists custom emoji for a team.
;; * path-url : /emoji.list
;;
(defun get-emoji.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/emoji.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Add a comment to an existing file.
;; * path-url : /files.comments.add
;;
(defun post-files.comments.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.comments.add" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Deletes an existing comment on a file.
;; * path-url : /files.comments.delete
;;
(defun post-files.comments.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.comments.delete" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Edit an existing file comment.
;; * path-url : /files.comments.edit
;;
(defun post-files.comments.edit (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.comments.edit" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Deletes a file.
;; * path-url : /files.delete
;;
(defun post-files.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.delete" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about a team file.
;; * path-url : /files.info
;;
(defun get-files.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists &amp; filters team files.
;; * path-url : /files.list
;;
(defun get-files.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Revokes public/external sharing access for a file
;; * path-url : /files.revokePublicURL
;;
(defun post-files.revokepublicurl (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.revokePublicURL" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Enables a file for public/external sharing.
;; * path-url : /files.sharedPublicURL
;;
(defun post-files.sharedpublicurl (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.sharedPublicURL" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Uploads or creates a file.
;; * path-url : /files.upload
;;
(defun post-files.upload (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.upload" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Archives a private channel.
;; * path-url : /groups.archive
;;
(defun post-groups.archive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.archive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Creates a private channel.
;; * path-url : /groups.create
;;
(defun post-groups.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.create" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Clones and archives a private channel.
;; * path-url : /groups.createChild
;;
(defun post-groups.createchild (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.createChild" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Fetches history of messages and events from a private channel.
;; * path-url : /groups.history
;;
(defun get-groups.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.history" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about a private channel.
;; * path-url : /groups.info
;;
(defun get-groups.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Invites a user to a private channel.
;; * path-url : /groups.invite
;;
(defun post-groups.invite (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.invite" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Removes a user from a private channel.
;; * path-url : /groups.kick
;;
(defun post-groups.kick (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.kick" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Leaves a private channel.
;; * path-url : /groups.leave
;;
(defun post-groups.leave (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.leave" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists private channels that the calling user has access to.
;; * path-url : /groups.list
;;
(defun get-groups.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the read cursor in a private channel.
;; * path-url : /groups.mark
;;
(defun post-groups.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.mark" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Opens a private channel.
;; * path-url : /groups.open
;;
(defun post-groups.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.open" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Renames a private channel.
;; * path-url : /groups.rename
;;
(defun post-groups.rename (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.rename" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a private channel
;; * path-url : /groups.replies
;;
(defun get-groups.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.replies" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the purpose for a private channel.
;; * path-url : /groups.setPurpose
;;
(defun post-groups.setpurpose (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.setPurpose" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the topic for a private channel.
;; * path-url : /groups.setTopic
;;
(defun post-groups.settopic (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.setTopic" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Unarchives a private channel.
;; * path-url : /groups.unarchive
;;
(defun post-groups.unarchive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/groups.unarchive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Close a direct message channel.
;; * path-url : /im.close
;;
(defun post-im.close (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.close" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Fetches history of messages and events from direct message channel.
;; * path-url : /im.history
;;
(defun get-im.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.history" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists direct message channels for the calling user.
;; * path-url : /im.list
;;
(defun get-im.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the read cursor in a direct message channel.
;; * path-url : /im.mark
;;
(defun post-im.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.mark" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Opens a direct message channel.
;; * path-url : /im.open
;;
(defun post-im.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.open" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a direct message conversation
;; * path-url : /im.replies
;;
(defun get-im.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/im.replies" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; For Enterprise Grid workspaces, map local user IDs to global user IDs
;; * path-url : /migration.exchange
;;
(defun get-migration.exchange (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/migration.exchange" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Closes a multiparty direct message channel.
;; * path-url : /mpim.close
;;
(defun post-mpim.close (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.close" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Fetches history of messages and events from a multiparty direct message.
;; * path-url : /mpim.history
;;
(defun get-mpim.history (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.history" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists multiparty direct message channels for the calling user.
;; * path-url : /mpim.list
;;
(defun get-mpim.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Sets the read cursor in a multiparty direct message channel.
;; * path-url : /mpim.mark
;;
(defun post-mpim.mark (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.mark" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; This method opens a multiparty direct message.
;; * path-url : /mpim.open
;;
(defun post-mpim.open (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.open" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve a thread of messages posted to a direct message conversation from a multiparty direct message.
;; * path-url : /mpim.replies
;;
(defun get-mpim.replies (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/mpim.replies" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Exchanges a temporary OAuth verifier code for an access token.
;; * path-url : /oauth.access
;;
(defun get-oauth.access (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/oauth.access" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Exchanges a temporary OAuth verifier code for a workspace token.
;; * path-url : /oauth.token
;;
(defun get-oauth.token (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/oauth.token" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Pins an item to a channel.
;; * path-url : /pins.add
;;
(defun post-pins.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/pins.add" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists items pinned to a channel.
;; * path-url : /pins.list
;;
(defun get-pins.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/pins.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Un-pins an item from a channel.
;; * path-url : /pins.remove
;;
(defun post-pins.remove (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/pins.remove" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Adds a reaction to an item.
;; * path-url : /reactions.add
;;
(defun post-reactions.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.add" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets reactions for an item.
;; * path-url : /reactions.get
;;
(defun get-reactions.get (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.get" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists reactions made by a user.
;; * path-url : /reactions.list
;;
(defun get-reactions.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Removes a reaction from an item.
;; * path-url : /reactions.remove
;;
(defun post-reactions.remove (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.remove" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Creates a reminder.
;; * path-url : /reminders.add
;;
(defun post-reminders.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.add" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Marks a reminder as complete.
;; * path-url : /reminders.complete
;;
(defun post-reminders.complete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.complete" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Deletes a reminder.
;; * path-url : /reminders.delete
;;
(defun post-reminders.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.delete" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about a reminder.
;; * path-url : /reminders.info
;;
(defun get-reminders.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists all reminders created by or for a given user.
;; * path-url : /reminders.list
;;
(defun get-reminders.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Starts a Real Time Messaging session.
;; * path-url : /rtm.connect
;;
(defun get-rtm.connect (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/rtm.connect" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Starts a Real Time Messaging session.
;; * path-url : /rtm.start
;;
(defun get-rtm.start (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/rtm.start" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Searches for messages and files matching a query.
;; * path-url : /search.all
;;
(defun get-search.all (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/search.all" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Searches for files matching a query.
;; * path-url : /search.files
;;
(defun get-search.files (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/search.files" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Searches for messages matching a query.
;; * path-url : /search.messages
;;
(defun get-search.messages (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/search.messages" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Adds a star to an item.
;; * path-url : /stars.add
;;
(defun post-stars.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/stars.add" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists stars for a user.
;; * path-url : /stars.list
;;
(defun get-stars.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/stars.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Removes a star from an item.
;; * path-url : /stars.remove
;;
(defun post-stars.remove (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/stars.remove" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets the access logs for the current team.
;; * path-url : /team.accessLogs
;;
(defun get-team.accesslogs (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.accessLogs" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets billable users information for the current team.
;; * path-url : /team.billableInfo
;;
(defun get-team.billableinfo (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.billableInfo" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about the current team.
;; * path-url : /team.info
;;
(defun get-team.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets the integration logs for the current team.
;; * path-url : /team.integrationLogs
;;
(defun get-team.integrationlogs (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.integrationLogs" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieve a team&#39;s profile.
;; * path-url : /team.profile.get
;;
(defun get-team.profile.get (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.profile.get" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Create a User Group
;; * path-url : /usergroups.create
;;
(defun post-usergroups.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.create" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Disable an existing User Group
;; * path-url : /usergroups.disable
;;
(defun post-usergroups.disable (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.disable" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Enable a User Group
;; * path-url : /usergroups.enable
;;
(defun post-usergroups.enable (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.enable" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; List all User Groups for a team
;; * path-url : /usergroups.list
;;
(defun get-usergroups.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Update an existing User Group
;; * path-url : /usergroups.update
;;
(defun post-usergroups.update (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.update" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; List all users in a User Group
;; * path-url : /usergroups.users.list
;;
(defun get-usergroups.users.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.users.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Update the list of users for a User Group
;; * path-url : /usergroups.users.update
;;
(defun post-usergroups.users.update (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.users.update" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; List conversations the calling user may access.
;; * path-url : /users.conversations
;;
(defun get-users.conversations (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.conversations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Delete the user profile photo
;; * path-url : /users.deletePhoto
;;
(defun post-users.deletephoto (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.deletePhoto" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets user presence information.
;; * path-url : /users.getPresence
;;
(defun get-users.getpresence (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.getPresence" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Get a user&#39;s identity.
;; * path-url : /users.identity
;;
(defun get-users.identity (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.identity" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Gets information about a user.
;; * path-url : /users.info
;;
(defun get-users.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.info" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Lists all users in a Slack team.
;; * path-url : /users.list
;;
(defun get-users.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.list" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Find a user with an email address.
;; * path-url : /users.lookupByEmail
;;
(defun get-users.lookupbyemail (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.lookupByEmail" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Retrieves a user&#39;s profile information.
;; * path-url : /users.profile.get
;;
(defun get-users.profile.get (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.profile.get" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Set the profile information for a user.
;; * path-url : /users.profile.set
;;
(defun post-users.profile.set (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.profile.set" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Marked a user as active. Deprecated and non-functional.
;; * path-url : /users.setActive
;;
(defun post-users.setactive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.setActive" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Set the user profile photo
;; * path-url : /users.setPhoto
;;
(defun post-users.setphoto (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.setPhoto" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; Manually sets user presence.
;; * path-url : /users.setPresence
;;
(defun post-users.setpresence (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.setPresence" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))