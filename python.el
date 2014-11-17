(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(add-hook 'python-mode-hook
          (lambda ()
            (setenv "LANG" "en_US.UTF-8")
            (setenv "LC_ALL" "en_US.UTF-8")

            (require 'virtualenv)
            (require 'nose)

            (define-key python-mode-map (kbd "RET") 'newline)
            (define-key python-mode-map (kbd "#") 'self-insert-command)

            (define-key python-mode-map (kbd "<s-backspace>") (lambda () (interactive) (kill-line 0)))

            (define-key python-mode-map (kbd "<backtab>") 'py-shift-left)
            (define-key python-mode-map (kbd "<M-S-tab>") 'py-shift-right)

            (local-set-key "\C-ca" 'nosetests-all)
            (local-set-key "\C-cm" 'nosetests-module)
            (local-set-key "\C-c." 'nosetests-one)

            (set (make-variable-buffer-local 'beginning-of-defun-function)
                 'py-beginning-of-def-or-class)
            (setq outline-regexp "def\\|class ")

            ;; (highlight-parentheses-mode t)
            (rainbow-delimiters-mode)
            (highlight-indentation-mode)))

;; (add-hook 'python-mode-hook #'(lambda ()
;;                                 (define-key py-mode-map (kbd "M-<tab>") 'complete-symbol)
;;                                 (define-key py-mode-map (kbd "M-/") 'dabbrev-expand)))

;; (require 'ipython)
;; (setq py-python-command-args '( "-colors" "Linux"))

;; (defadvice py-execute-buffer (around python-keep-focus activate)
;;   "return focus to python code buffer"
;;   (save-excursion ad-do-it))

;; (provide 'python-programming)

;;;;;;;;;;;;;;;;;;;;

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))

;;;;;;;;;;;;;;;;;;;;

(setq ropemacs-loaded nil)
(add-hook 'python-mode-hook
          (lambda ()
            (when (not ropemacs-loaded)
              (pymacs-load "ropemacs" "rope-")
              (define-key ropemacs-local-keymap (kbd "M-/") 'dabbrev-expand)
              (define-key ropemacs-local-keymap (kbd "C-c f") 'rope-find-occurrences)
              (setq ropemacs-loaded t))))

(setq ropemacs-confirm-saving nil
      ropemacs-guess-project t
      ropemacs-enable-autoimport t)

(setq ropemacs-autoimport-modules '("os" "shutil" "StringIO" "spinoff"))

;;;;;;;;;;;;;;;;;;;;

(add-hook 'python-mode-hook (lambda () (load "cython-mode.el")))
