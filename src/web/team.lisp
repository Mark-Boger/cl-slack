(in-package :cl-slack)

;;
;; Gets the access logs for the current team.
;; * path-url : /team.accessLogs
;;
(defun get-team.accesslogs (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.accessLogs"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets billable users information for the current team.
;; * path-url : /team.billableInfo
;;
(defun get-team.billableinfo (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.billableInfo"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets information about the current team.
;; * path-url : /team.info
;;
(defun get-team.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets the integration logs for the current team.
;; * path-url : /team.integrationLogs
;;
(defun get-team.integrationlogs (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.integrationLogs"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Retrieve a team&#39;s profile.
;; * path-url : /team.profile.get
;;
(defun get-team.profile.get (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/team.profile.get"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
