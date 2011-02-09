(defun add-to-PATH (dir)
  "Add the specified path element to the Emacs PATH"
  (interactive "DEnter directory to be added to PATH: ")
  (if (file-directory-p dir)
      (setenv "PATH"
              (concat (expand-file-name dir)
                      path-separator
                      (getenv "PATH")))))

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/")
(add-to-list 'load-path "~/elisp")
(add-to-list 'exec-path "/opt/local/bin")
(add-to-list 'exec-path "~/bin")
(add-to-PATH "/opt/local/bin")
(add-to-PATH "~/bin")

(when (load (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(setq-default c-basic-offset 4)
(set-language-environment "utf-8")
(cua-selection-mode t)

(setq ffip-regexp ".*")
(setq ffip-find-options "-not -regex \".*(~|\\.pyc|\\.elc|#)\"")

(desktop-save-mode)

(load "~/.emacs.d/keymap.el")
;; (load "~/.emacs.d/sexp.el")
(load "~/.emacs.d/ido.el")
(load "~/.emacs.d/smex.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/uniquify.el")
(load "~/.emacs.d/tramp-conf.el")
(load "~/.emacs.d/textmate.el")
(load "~/.emacs.d/javascript.el")
(load "~/.emacs.d/yaml.el")
(load "~/.emacs.d/nxhtml.el")
;; (load "php-mode.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/pymacs.el")
(load "~/.emacs.d/ropemacs.el")
(load "~/.emacs.d/flymake.el")
(load "~/.emacs.d/django-utils.el")
(load "~/.emacs.d/lisp.el")
(require 'magit)

(load-file "~/elisp/rudel-0.2-4/rudel-loaddefs.el")

(load "~/.emacs.d/slime.el")


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-delay 0.2)
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(django-indent-width 4)
 '(mouse-wheel-progressive-speed t)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(nxhtml-default-encoding (quote utf-8))
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(safe-local-variable-values (quote ((virtualenv-workon . "kultinf") (ffip-regexp . ".+\\.(py|html|css)") (Package . CCL))))
 '(scroll-bar-mode nil)
 '(set-mark-command-repeat-pop t)
 '(show-paren-mode t))

(add-to-list 'auto-mode-alist '("\\.zcml\\'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.pt\\'" . nxml-mode))

(server-start)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "Black")))))

(defalias 'yes-or-no-p 'y-or-n-p)
