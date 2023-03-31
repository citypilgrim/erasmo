(define-module (citypilgrim configs))

(define-public base-he
  (rde-config-home-environment base-config))

;;; Dispatcher, which helps to return various values based on environment
;;; variable value.
(define (dispatcher)
  (let ((erasmo-target (getenv "ERASMO_TARGET")))
    (match erasmo-target
      (_ base-he))))
