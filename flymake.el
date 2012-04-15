(load "~/.emacs.d/flymake-point.el")

;; (require 'flymake)
;; (require 'flymake-point)

(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "~/.emacs.d/pyflymake.py" (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'python-mode-hook
          (lambda ()
            ;; Don't invoke flymake on temporary buffers for the interpreter.
            (unless (eq buffer-file-name nil)
              (flymake-mode 1))
            (when nil
              (local-set-key [f6] 'flymake-goto-prev-error)
              (local-set-key [f7] 'flymake-goto-next-error))))

;; (add-hook 'html-mode-hook
;;           '(lambda ()
;;              (unless (eq buffer-file-name nil) (flymake-mode 1))))


;;(require 'flymake-jslint)
(add-hook 'javascript-mode-hook
	  (lambda () (flymake-mode t)))
