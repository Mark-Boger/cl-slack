(in-package :cl-slack)

;;
;; Returns list of permissions this app has on a team.
;; * path-url : /apps.permissions.info
;;
(defun get-apps.permissions.info (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.info"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Allows an app to request additional scopes
;; * path-url : /apps.permissions.request
;;
(defun get-apps.permissions.request (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.request"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Returns list of resource grants this app has on a team.
;; * path-url : /apps.permissions.resources.list
;;
(defun get-apps.permissions.resources.list (&key
                                              params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.resources.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Returns list of scopes this app has on a team.
;; * path-url : /apps.permissions.scopes.list
;;
(defun get-apps.permissions.scopes.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/apps.permissions.scopes.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
