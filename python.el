(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(add-hook 'python-mode-hook
          #'(lambda ()
              (setenv "LANG" "en_US.UTF-8")
              (setenv "LC_ALL" "en_US.UTF-8")

              (require 'virtualenv)

              (define-key py-mode-map (kbd "RET") 'newline)

              (set (make-variable-buffer-local 'beginning-of-defun-function)
                   'py-beginning-of-def-or-class)
              (setq outline-regexp "def\\|class ")

              (setq comment-start "#~")

              ;; (highlight-parentheses-mode t)
              ))

;; (add-hook 'python-mode-hook #'(lambda ()
;;                                 (define-key py-mode-map (kbd "M-<tab>") 'complete-symbol)
;;                                 (define-key py-mode-map (kbd "M-/") 'dabbrev-expand)))

;; (require 'ipython)
;; (setq py-python-command-args '( "-colors" "Linux"))

;; (defadvice py-execute-buffer (around python-keep-focus activate)
;;   "return focus to python code buffer"
;;   (save-excursion ad-do-it))

;; (provide 'python-programming)


(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))
