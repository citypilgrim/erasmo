(define-module (citypilgrim packages)
  #:use-module (rde packages))

(define-public %all-packages
  (append
   (strings->packages
    ;; meta
    "glibc-locales"
    "guile"
    "guile-gcrypt"
    "guile-git"
    "guile-json"

    ;; build tools
    "make" "automake" "autoconf" "libtool"
    "gcc-toolchain"
    "clang-toolchain"
    "llvm"

    ;; utilities
    "daemonize"
    "curl"
    "grep"
    "sed"
    "unzip"
    "findutils"
    "ripgrep"
    "binutils"
    "glibc-locales"
    "gnupg"
    "nss-certs"

    ;; applications
    "stow"
    "pandoc"
    "emacs"
    "python" "python-lsp-server"
    "ffmpeg"
    "tree"
    "pulseaudio"
    "ispell"
    "imagemagick"
    "texlive"
    ;; "diatheke"

    ;; emacs dependencies
    "emacs-transient"                   ;shared
    ;; "emacs-dired-hacks"              ;incompatible
    "emacs-use-package"                 ;package
    "emacs-gcmh"                        ;performance
    "emacs-no-littering"                ;defaults
    "emacs-pinentry" "pinentry-emacs"
    "emacs-which-key"                   ;keybinding
    "emacs-general"
    "emacs-hydra"
    "emacs-avy"
    "emacs-corfu"                       ;completion
    "emacs-cape"
    "emacs-vertico"
    "emacs-orderless"
    "emacs-marginalia"
    "emacs-tempel" "emacs-tempel-collection"
    "emacs-yasnippet"
    "emacs-yasnippet-snippets"
    "emacs-consult"
    "emacs-embark"
    "emacs-undo-fu"    ;ux
    ;; "emacs-tabspaces"              ;incompatible
    "emacs-popper"
    "emacs-helpful" "emacs-elisp-demos"
    "emacs-emojify"                     ;ui
    "emacs-all-the-icons" "emacs-all-the-icons-dired" "emacs-all-the-icons-completion"
    "emacs-doom-modeline"
    "emacs-doom-themes" "emacs-ef-themes"
    "emacs-flycheck"   ;ide
    ;; "emacs-groovy-modes"           ;incompatible
    "emacs-pyvenv"
    "emacs-dockerfile-mode"
    "emacs-eglot"
    "emacs-lsp-mode"
    "emacs-lsp-ui"
    "emacs-lsp-treemacs"
    "emacs-lsp-java"
    "emacs-lispy"                       ;lisp
    "emacs-geiser@0.28.2"
    "emacs-geiser-guile"
    "emacs-magit"                       ;vc
    "emacs-forge"
    "emacs-magit-todos"
    ;; "emacs-magit-popup"            ;incompatible
    "emacs-git-gutter" "emacs-git-gutter-fringe" "emacs-fringe-helper"
    "emacs-guix"
    "emacs-docker"
    "emacs-citar"      ;books
    ;; "emacs-citar-embark"           ;missing
    ;; "emacs-nov-el"                 ;incompatible
    "emacs-esxml"                       ;dep for nov
    ;; "emacs-dtk"
    "emacs-json-mode"                   ;data
    "emacs-csv-mode"
    "emacs-esh-autosuggest"             ;shell
    "emacs-eshell-prompt-extras"
    "emacs-org"                         ;org
    "emacs-org-modern"
    "emacs-org-appear"
    "emacs-visual-fill-column"
    "emacs-hide-mode-line"
    "emacs-org-tree-slide"
    "emacs-org-roam"                    ;notes
    "emacs-emacsql-sqlite3"
    ;; "emacs-org-roam-ui"            ;missing
    "emacs-restclient"                  ;web
    "emacs-cdlatex"                     ;latex
    "emacs-telega"                      ;msg
    "gperf" "cmake" "pkg-config"
    ;; "emacs-gptel"                  ;ai, not updated
    )))
