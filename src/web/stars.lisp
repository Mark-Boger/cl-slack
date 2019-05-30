(in-package :cl-slack)

;;
;; Adds a star to an item.
;; * path-url : /stars.add
;;
(defun post-stars.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/stars.add"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists stars for a user.
;; * path-url : /stars.list
;;
(defun get-stars.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/stars.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Removes a star from an item.
;; * path-url : /stars.remove
;;
(defun post-stars.remove (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/stars.remove"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
