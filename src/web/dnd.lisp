(in-package :cl-slack)

;;
;; Ends the current user&#39;s Do Not Disturb session immediately.
;; * path-url : /dnd.endDnd
;;
(defun post-dnd.enddnd (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.endDnd"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Ends the current user&#39;s snooze mode immediately.
;; * path-url : /dnd.endSnooze
;;
(defun post-dnd.endsnooze (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.endSnooze"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieves a user&#39;s current Do Not Disturb status.
;; * path-url : /dnd.info
;;
(defun get-dnd.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Turns on Do Not Disturb mode for the current user, or changes its duration.
;; * path-url : /dnd.setSnooze
;;
(defun post-dnd.setsnooze (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.setSnooze"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieves the Do Not Disturb status for users on a team.
;; * path-url : /dnd.teamInfo
;;
(defun get-dnd.teaminfo (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/dnd.teamInfo"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
