(in-package :cl-slack)

;;
;; List conversations the calling user may access.
;; * path-url : /users.conversations
;;
(defun get-users.conversations (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.conversations"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Delete the user profile photo
;; * path-url : /users.deletePhoto
;;
(defun post-users.deletephoto (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.deletePhoto"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets user presence information.
;; * path-url : /users.getPresence
;;
(defun get-users.getpresence (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.getPresence"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Get a user&#39;s identity.
;; * path-url : /users.identity
;;
(defun get-users.identity (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.identity"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets information about a user.
;; * path-url : /users.info
;;
(defun get-users.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists all users in a Slack team.
;; * path-url : /users.list
;;
(defun get-users.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Find a user with an email address.
;; * path-url : /users.lookupByEmail
;;
(defun get-users.lookupbyemail (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.lookupByEmail"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieves a user&#39;s profile information.
;; * path-url : /users.profile.get
;;
(defun get-users.profile.get (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.profile.get"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Set the profile information for a user.
;; * path-url : /users.profile.set
;;
(defun post-users.profile.set (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.profile.set"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Marked a user as active. Deprecated and non-functional.
;; * path-url : /users.setActive
;;
(defun post-users.setactive (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.setActive"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Set the user profile photo
;; * path-url : /users.setPhoto
;;
(defun post-users.setphoto (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.setPhoto"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Manually sets user presence.
;; * path-url : /users.setPresence
;;
(defun post-users.setpresence (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/users.setPresence"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
