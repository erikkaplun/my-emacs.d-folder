;; (add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-highlighting-mode 'lines)

(add-hook 'python-mode-hook
          (lambda ()
            ;; Don't invoke flycheck on temporary buffers for the interpreter.
            (unless (eq buffer-file-name nil)
              (flycheck-mode 1))))
