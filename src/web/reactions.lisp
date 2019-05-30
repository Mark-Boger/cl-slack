(in-package :cl-slack)

;;
;; Adds a reaction to an item.
;; * path-url : /reactions.add
;;
(defun post-reactions.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.add"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Gets reactions for an item.
;; * path-url : /reactions.get
;;
(defun get-reactions.get (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.get"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists reactions made by a user.
;; * path-url : /reactions.list
;;
(defun get-reactions.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Removes a reaction from an item.
;; * path-url : /reactions.remove
;;
(defun post-reactions.remove (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/reactions.remove"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
