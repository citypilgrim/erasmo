(define-module (citypilgrim configs)
  #:use-module (rde features)
  #:use-module (ice-9 match))

;; default
(define-public default-config
  (rde-config
   (features
    (append
     ;; %all-features
     ;; %default-features
     ;; %citypilgrim-features
     ))))

(define-public default-he
  (rde-config-home-environment default-config))

;;; Dispatcher, which helps to return various values based on environment
;;; variable value.
(define (dispatcher)
  (let ((rde-target (getenv "RDE_TARGET")))
    (match rde-target
      ("default-home" default-he)
      (_ default-he)
      )))

(dispatcher)
