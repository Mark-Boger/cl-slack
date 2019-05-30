(in-package :cl-slack)

;;
;; Creates a reminder.
;; * path-url : /reminders.add
;;
(defun post-reminders.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.add"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Marks a reminder as complete.
;; * path-url : /reminders.complete
;;
(defun post-reminders.complete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.complete"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Deletes a reminder.
;; * path-url : /reminders.delete
;;
(defun post-reminders.delete (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.delete"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets information about a reminder.
;; * path-url : /reminders.info
;;
(defun get-reminders.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists all reminders created by or for a given user.
;; * path-url : /reminders.list
;;
(defun get-reminders.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reminders.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
