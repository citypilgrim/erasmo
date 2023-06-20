(define-module (citypilgrim feature-lists)
  #:use-module (rde features base)
  #:use-module (rde features emacs)
  #:use-module (rde features fontutils)
  #:use-module (rde features shells)
  #:use-module (rde features shellutils)
  #:use-module (rde features ssh)
  #:use-module (rde features version-control)
  #:use-module (rde features web-browsers)

  #:use-module (gnu packages fonts)
  )

(define-public %base-features
  (list
   ;; system related
   ;; (feature-base-services)
   ;; (feature-desktop-services)         ;dbus
   ;; (feature-pipewire)                 ;sound
   ;; (feature-backlight #:step 10)
   ;; (feature-networking)

   ;; home related
   (feature-base-packages)              ;includes rde
   ;; (feature-transmission #:auto-start? #f) ;bittorrent, w emacs
   (feature-ungoogled-chromium #:default-browser? #t)
   ;; (feature-ledger)                     ;accounting, w emacs
   ;; (feature-imv)                        ;CLI image viewer
   ;; (feature-mpv                         ;video player
   ;;  #:extra-mpv-conf '((speed . 1.61)))
   ))

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
    #:extra-font-packages (list font-fira-code
                          font-jetbrains-mono
                          font-gnu-unifont
                          font-gnu-freefont)
    ;; NOTE leaving these commented here for future reference
    ;; #:font-monospace (font "Iosevka" #:size 11 #:weight 'regular)
    ;; #:default-font-size 11
    )))

(define-public %emacs-features
  (list
   (feature-emacs-portable)))

(define-public %all-features
  (append
   %base-features
   ;; %virtualization-features             ;docker, qemu
   ;; %mail-features
   %ui-features
   ;; %emacs-features
   ))
