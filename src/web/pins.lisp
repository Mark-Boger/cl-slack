(in-package :cl-slack)

;;
;; Pins an item to a channel.
;; * path-url : /pins.add
;;
(defun post-pins.add (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/pins.add"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
;;
;; Lists items pinned to a channel.
;; * path-url : /pins.list
;;
(defun get-pins.list (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/pins.list"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
;;
;; Un-pins an item from a channel.
;; * path-url : /pins.remove
;;
(defun post-pins.remove (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/pins.remove"
             :params params :content content
             :basic-authorization basic-authorization
             :method :post
             :accept "application/json"
             :content-type "application/json"))
