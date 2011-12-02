(setf pymacs-loaded nil)
(add-hook 'python-mode-hook
          (lambda ()
            (when (not pymacs-loaded)
              (pymacs-load "ropemacs" "rope-")
              (setf pymacs-loaded t))))

(setq ropemacs-confirm-saving nil
      ropemacs-guess-project t
      ropemacs-enable-autoimport t)

(setq ropemacs-autoimport-modules '("shutil" "StringIO"))
