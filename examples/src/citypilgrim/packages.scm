(define-module (citypilgrim packages)
  #:use-module (gnu packages)

  #:export (base-home-packages))

(define base-home-packages
  (map specification->package
       '(
         ;; meta
         "glibc-locales"
         "guile"
         "guile-gcrypt"
         "guile-git"
         "guile-json"

         ;; utilities
         "daemonize"
         "grep"
         "sed"
         "findutils"
         "ripgrep"
         "gcc"
         "gcc-toolchain"
         "make"
         "binutils"
         "glibc-locales"
         "gnupg"

         ;; applications
         "openssh"
         "git"
         "emacs"
         "python"
         "openjdk@11.0.17"
         "ffmpeg"
         "pulseaudio"
         "ispell"
         "imagemagick"
         "texlive"

         ;; fonts
         "font-fira-code"
         "font-jetbrains-mono"
         "font-iosevka-aile"

         ;; emacs dependencies
         "emacs-use-package"            ;package
         "emacs-gcmh"                   ;performance
         "emacs-no-littering"           ;defaults
         "emacs-pinentry" "pinentry-emacs"
         "emacs-which-key"              ;keybinding
         "emacs-general"
         "emacs-hydra"
         "emacs-avy"
         "emacs-corfu"                  ;completion
         "emacs-cape"
         "emacs-vertico"
         "emacs-orderless"
         "emacs-marginalia"
         "emacs-tempel"
         "emacs-yasnippet"
         "emacs-yasnippet-snippets"
         "emacs-consult"
         "emacs-undo-fu"                ;ux
         ;; "emacs-tabspaces"
         "emacs-popper"
         "emacs-helpful"
         "emacs-all-the-icons"          ;ui
         "emacs-all-the-icons-dired"
         "emacs-spacegray-theme"
         "emacs-doom-themes"
         "emacs-ample-theme"
         "emacs-flycheck"               ;ide
         "emacs-pyvenv" "python-lsp-server"
         "emacs-dockerfile-mode"
         "emacs-eglot"
         "emacs-lsp-mode"
         "emacs-lsp-ui"
         "emacs-lsp-treemacs"
         "emacs-lsp-java"
         "emacs-lispy"                  ;lisp
         "emacs-geiser@0.28.2"
         "emacs-geiser-guile"
         "emacs-magit"                  ;vc
         "emacs-forge"
         "emacs-magit-todos"
         "emacs-git-gutter"
         "emacs-guix"
         "emacs-citar"                  ;books
         ;; "emacs-citar-embark"
         ;; "emacs-nov"
         ;; "emacs-dtk"
         "emacs-json-mode"              ;data
         "emacs-csv-mode"
         "emacs-esh-autosuggest"        ;shell
         "emacs-eshell-prompt-extras"
         "emacs-org"                    ;org
         "emacs-org-modern"
         "emacs-org-appear"
         "emacs-visual-fill-column"
         "emacs-hide-mode-line"
         "emacs-org-tree-slide"
         "emacs-org-roam"               ;notes
         "emacs-emacsql-sqlite3"
         ;; "emacs-org-roam-ui"
         "emacs-restclient"             ;web
         "emacs-cdlatex"
         )))