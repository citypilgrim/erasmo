(define-module (citypilgrim home)
  #:use-module (citypilgrim packages)

  #:use-module (guix gexp)

  #:use-module (gnu services)
  #:use-module (gnu home)
  #:use-module (gnu home services)
  #:use-module (gnu home services xdg)
  #:use-module (gnu home services symlink-manager)
  #:use-module (gnu home services ssh)
  #:use-module (gnu home services shells)
  #:use-module (gnu home services guix)

  #:export (base-home-environment))

(define base-home-environment
  (home-environment
   (essential-services
    (list
     ;; essential-services
     (service home-environment-variables-service-type)
     (service home-profile-service-type base-home-packages)
     (service home-service-type)
     (service home-run-on-first-login-service-type)

     (simple-service 'base-home-files-service-type
                     home-files-service-type
                     `((".gnupg/gpg-agent.conf" ,(local-file "../../../files/gnupg/gpg-agent.conf"))))
     (service home-xdg-configuration-files-service-type)
     (service home-activation-service-type)
     (service home-symlink-manager-service-type)

     ;; shell
     (service home-shell-profile-service-type)
     (service home-bash-service-type
              (home-bash-configuration
               (aliases '(("grep" . "grep --color=auto") ("ll" . "ls -l")
                          ("ls" . "ls -p --color=auto")))
               (bashrc (list (local-file "../../../files/bash/.bashrc" "bashrc")))
               (bash-profile (list (local-file
                                    "../../../files/bash/.bash_profile"
                                    "bash_profile")))))

     ;; ssh
     (service home-openssh-service-type
              (home-openssh-configuration
               (hosts
                (list (openssh-host (name "github.com")
                                    (user "git")
                                    (port 22)
                                    (identity-file
                                     "~/.env/ssh/github_citypilgrim"))
                      (openssh-host (name "gitlab.com")
                                    (user "git")
                                    (port 22)
                                    (identity-file
                                     "~/.env/ssh/gitlab_citypilgrim"))))))

     ;; channels
     (simple-service 'base-home-channels-service-type
                     home-channels-service-type
                     (list))))
   (services
    (list))))
