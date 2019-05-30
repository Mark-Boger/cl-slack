(in-package :cl-slack)

(defun rest-call (host url-path
                  &key params content basic-authorization
                    (method :get)
                    (accept "application/json")
                    (content-type "application/json"))
  "call http-request with basic params and conteent and authorization"
  (multiple-value-bind (stream code)
      (drakma:http-request (format nil "~a~a" host url-path)
                           :parameters params
                           :content content
                           :basic-authorization basic-authorization
                           :accept accept
                           :content-type content-type
                           :want-stream t
                           :method method)
    (if (equal code 200)
        (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
               (cl-json:decode-json stream))
        (format t "HTTP CODE : ~A ~%" code))))

;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200)
        (progn
          (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
          (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))
