(define-module (citypilgrim configs)
  #:use-module (citypilgrim feature-lists)
  #:use-module (citypilgrim packages)

  #:use-module (gnu services)
  #:use-module (gnu home services)

  #:use-module (rde features base)
  #:use-module (rde features gnupg)
  #:use-module (rde features keyboard)
  #:use-module (rde features)
  #:use-module (rde packages)

  #:use-module (gnu home-services ssh)

  #:use-module (ice-9 match))

;;; Service extensions

(define home-extra-packages-service
  (simple-service
   'home-profile-extra-packages
   home-profile-service-type
   %all-packages))

(define ssh-extra-config-service
  (simple-service
   'ssh-extra-config
   home-ssh-service-type
   (home-ssh-extension
    (extra-config
     (list (ssh-host
            (host "github.com")
            (options
             '((identity-file . "~/.ssh/github_citypilgrim")
               (port . 22)
               (compression . #t)))))))))

;;; User-specific features with personal preferences

(define %citypilgrim-features
  (list
   (feature-user-info
    #:user-name "citypilgrim"
    #:full-name "City Pilgrim"
    #:email "ciudadperegrino@gmail.com")

   (feature-gnupg
    #:gpg-ssh-agent? #f
    #:gpg-primary-key "3C3202B66FC44741"
    #:pinentry-flavor 'emacs)

   (feature-custom-services
    #:feature-name-prefix 'abcdw
    #:home-services
    (list
     home-extra-packages-service
     ssh-extra-config-service))
   (feature-keyboard                    ;does not seem to work on WSL
    ;; To get all available options, layouts and variants run:
    ;; cat `guix build xkeyboard-config`/share/X11/xkb/rules/evdev.lst
    #:keyboard-layout
    (keyboard-layout
     "us" "qwerty,"
     #:options
     '("grp:shifts_toggle"              ;both shift for caps
       "ctrl:nocaps"                    ;ctrl as caps
       )))))

;;; Set-up specific

;; tur

(define tur-config
  (rde-config
   (features
    (append
     %all-features
     %citypilgrim-features
     ))))

(define tur-he
  (rde-config-home-environment tur-config))

;;; Dispatcher, which helps to return various values based on environment
;;; variable value.
(define (dispatcher)
  (let ((rde-target (getenv "RDE_TARGET")))
    (match rde-target
      ("tur-home" tur-he)
      (_ tur-he)
      )))

(dispatcher)
