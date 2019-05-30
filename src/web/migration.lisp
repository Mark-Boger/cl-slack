
;; This is just here for completeness, NOT TESTED
;;
;; For Enterprise Grid workspaces, map local user IDs to global user IDs
;; * path-url : /migration.exchange
;;
(defun get-migration.exchange (&key params content basic-authorization)
  (rest-call "https://slack.com/api" "/migration.exchange"
             :params params :content content
             :basic-authorization basic-authorization
             :method :get
             :accept "application/json"
             :content-type "application/json"))
