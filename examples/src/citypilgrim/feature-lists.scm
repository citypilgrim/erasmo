(define-module (citypilgrim feature-lists)
  ;; #:use-module (erasmo features emacs)

  #:use-module (rde features base)

  #:use-module (rde features shells)
  #:use-module (rde features shellutils)
  #:use-module (rde features version-control)
  #:use-module (rde features ssh)

  #:use-module (rde features fontutils)
  #:use-module (gnu packages fonts)
  )

(define-public %base-features
  (list
   ;; (feature-base-services)              ;system config
   (feature-base-packages)
   ))

;; TODO implement docker
;; (define-public %virtualization-features
;;   (list
;;    (feature-docker)))

(define-public %cli-features
  (list
   (feature-bash)
   (feature-direnv)
   (feature-git #:sign-commits? #f)
   (feature-ssh)))

(define-public %ui-features
  (list
   ;; ignoring the font weight and size as that is set in emacs config
   (feature-fonts
    ;; font-iosevka-aile comes by default
    #:font-packages (list font-fira-mono
                          font-jetbrains-mono
                          font-gnu-unifont
                          font-gnu-freefont)
    ;; NOTE leaving these commented here for future reference
    ;; #:font-monospace (font "Iosevka" #:size 11 #:weight 'regular)
    ;; #:default-font-size 11
    )))

;; TODO implement emacs features

(define-public %all-features
  (append
   %base-features
   %cli-features
   %ui-features))
