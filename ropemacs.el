(pymacs-load "ropemacs" "rope-")

(setq ropemacs-confirm-saving nil
      ropemacs-guess-project t
      ropemacs-enable-autoimport t)

(setq ropemacs-autoimport-modules '("os" "shutil" "contextlib" "django"
                                    "django.utils.simplejson" "lxml"))

(add-to-list 'load-path "~/elisp/auto-complete")
(require 'auto-complete)
(global-auto-complete-mode t)
