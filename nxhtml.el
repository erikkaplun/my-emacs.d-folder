(load "nxhtml/autostart.el")

(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))

(add-hook 'django-html-mumamo-mode-hook
          (lambda ()
            (define-key django-html-mumamo-mode-map
              (kbd "C-M-n") 'sgml-skip-tag-forward)
            (define-key django-html-mumamo-mode-map
              (kbd "C-M-p") 'sgml-skip-tag-backward)))

;; (add-hook 'nxhtml-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-M-n") 'sgml-skip-tag-forward)
;;             (local-set-key (kbd "C-M-p") 'sgml-skip-tag-backward)))
