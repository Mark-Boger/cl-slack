(in-package :cl-slack)

;;
;; Add a comment to an existing file.
;; * path-url : /files.comments.add
;;
(defun post-files.comments.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.comments.add"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Deletes an existing comment on a file.
;; * path-url : /files.comments.delete
;;
(defun post-files.comments.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.comments.delete"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Edit an existing file comment.
;; * path-url : /files.comments.edit
;;
(defun post-files.comments.edit (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.comments.edit"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Deletes a file.
;; * path-url : /files.delete
;;
(defun post-files.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.delete"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets information about a team file.
;; * path-url : /files.info
;;
(defun get-files.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists &amp; filters team files.
;; * path-url : /files.list
;;
(defun get-files.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Revokes public/external sharing access for a file
;; * path-url : /files.revokePublicURL
;;
(defun post-files.revokepublicurl (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.revokePublicURL"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Enables a file for public/external sharing.
;; * path-url : /files.sharedPublicURL
;;
(defun post-files.sharedpublicurl (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.sharedPublicURL"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Uploads or creates a file.
;; * path-url : /files.upload
;;
(defun post-files.upload (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/files.upload"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
