(in-package :cl-slack)

;;
;; Create a User Group
;; * path-url : /usergroups.create
;;
(defun post-usergroups.create (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.create"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Disable an existing User Group
;; * path-url : /usergroups.disable
;;
(defun post-usergroups.disable (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.disable"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Enable a User Group
;; * path-url : /usergroups.enable
;;
(defun post-usergroups.enable (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.enable"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; List all User Groups for a team
;; * path-url : /usergroups.list
;;
(defun get-usergroups.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))

;;
;; Update an existing User Group
;; * path-url : /usergroups.update
;;
(defun post-usergroups.update (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.update"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; List all users in a User Group
;; * path-url : /usergroups.users.list
;;
(defun get-usergroups.users.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.users.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Update the list of users for a User Group
;; * path-url : /usergroups.users.update
;;
(defun post-usergroups.users.update (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/usergroups.users.update"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
