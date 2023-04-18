(define-module (citypilgrim configs)
  ;; #:use-module (citypilgrim feature-lists)
  #:use-module (citypilgrim home)

  ;; #:use-module (rde features)
  ;; #:use-module (rde features gnupg)

  #:use-module (ice-9 match))

;; default

;; TODO integrate rde configs
;; (define-public default-config
;;   (rde-config
;;    (features
;;     (append
;;      %all-features
;;      %citypilgrim-features
;;      ))))

;; (define-public default-he
;;   (rde-config-home-environment default-config))

;; (define %citypilgrim-features
;;   (list
;;    (feature-user-info
;;     #:user-name "citypilgrim"
;;     #:full-name "citypilgrim"
;;     #:email "ciudadperegrino@gmail.com")

;;    (feature-gnupg
;;     #:gpg-ssh-agent? #f
;;     #:gpg-primary-key "3C3202B66FC44741"
;;     #:pinentry-flavor 'pinentry-emacs)))

;;; Dispatcher, which helps to return various values based on environment
;;; variable value.
(define (dispatcher)
  (let ((rde-target (getenv "RDE_TARGET")))
    (match rde-target
      ("default-home" base-home-environment)
      (_ base-home-environment)
      )))

(dispatcher)
