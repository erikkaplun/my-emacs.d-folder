(defun add-to-PATH (dir)
  "Add the specified path element to the Emacs PATH"
  (interactive "Enter directory to be added to PATH: ")
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
(add-to-PATH "/Applications/Racket/bin")
(add-to-PATH "/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin/")

(when (load (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
(load "~/.emacs.d/el-get.el")

(setq-default c-basic-offset 4)
(set-language-environment "utf-8")
(cua-selection-mode t)
(tooltip-mode -1)  ; Tooltips cause problems with multiple desktops.

(setq ffip-regexp ".*")
(setq ffip-find-options "-not -regex \".*(~|\\.pyc|\\.elc|#)\"")

(desktop-save-mode)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups" t)

(setq tab-width 4)
(setf css-indent-level 4)

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
;; (load "~/.emacs.d/nxhtml.el")
;; (load "php-mode.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/pymacs.el")
(load "~/.emacs.d/ropemacs.el")
(load "~/.emacs.d/autocomplete.el")
(load "~/.emacs.d/flymake.el")
(load "~/.emacs.d/django-utils.el")
(load "~/.emacs.d/lisp.el")
(load "~/.emacs.d/slime.el")
(load "~/.emacs.d/w3m.el")
(load "~/.emacs.d/geiser-conf.el")
(load "~/.emacs.d/gettext.el")
;; (require 'magit)

;; (load-file "~/elisp/rudel-0.2-4/rudel-loaddefs.el")

(defun jao-toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (if selective-display nil (or column 1))))

(defun toggle-selective-display-column ()
  "set selective display fold everything greater than the current column, or toggle off if active"
  (interactive)
  (set-selective-display
   (if selective-display nil (or (+ (current-column) 1) 1))))

(server-start)

(require 'edit-server)
(edit-server-start)


;; (add-to-list 'auto-mode-alist '("\\.zcml\\'" . nxml-mode))
;; (add-to-list 'auto-mode-alist '("\\.pt\\'" . nxml-mode))


(defalias 'yes-or-no-p 'y-or-n-p)
(put 'ido-exit-minibuffer 'disabled nil)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-delay 0.2)
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(django-indent-width 0)
 '(mouse-wheel-progressive-speed t)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(nxhtml-default-encoding (quote utf-8))
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(rst-emphasis1-face (if (facep (quote italic)) (quote (quote italic)) (quote italic)))
 '(rst-emphasis2-face (if (facep (quote bold)) (quote (quote bold)) (quote bold)))
 '(rst-level-face-base-light 40)
 '(safe-local-variable-values (quote ((encoding . utf-8) (virtualenv-workon . "kultinf") (ffip-regexp . ".+\\.(py|html|css)") (Package . CCL))))
 '(scroll-bar-mode nil)
 '(set-mark-command-repeat-pop t)
 '(show-paren-mode t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 120 :width normal :foundry "apple" :family "Monaco"))))
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(rst-level-1-face ((t (:background "grey35"))) t)
 '(rst-level-2-face ((t (:background "grey30"))) t))
