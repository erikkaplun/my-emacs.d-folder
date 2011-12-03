(setf ropemacs-loaded nil)
(add-hook 'python-mode-hook
          (lambda ()
            (when (not ropemacs-loaded)
              (pymacs-load "ropemacs" "rope-")
              (define-key ropemacs-local-keymap (kbd "M-/") 'dabbrev-expand)
              (setf ropemacs-loaded t))))

(setq ropemacs-confirm-saving nil
      ropemacs-guess-project t
      ropemacs-enable-autoimport t)

(setq ropemacs-autoimport-modules '("shutil" "StringIO"))
