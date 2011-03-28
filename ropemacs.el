(pymacs-load "ropemacs" "rope-")

(setq ropemacs-confirm-saving nil
      ropemacs-guess-project t
      ropemacs-enable-autoimport t)

(setq ropemacs-autoimport-modules '("shutil" "StringIO"))
