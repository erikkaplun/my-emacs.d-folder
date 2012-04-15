(defun add-to-PATH (dir)
  "Add the specified path element to the Emacs PATH"
  (interactive "Enter directory to be added to PATH: ")
  (if (file-directory-p dir)
      (setenv "PATH"
              (concat (expand-file-name dir)
                      path-separator
                      (getenv "PATH")))))

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/my-packages")

(add-to-list 'exec-path "/opt/local/bin")
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/share/python")
(add-to-list 'exec-path "/usr/local/Cellar/ruby/1.9.2-p290/bin")
(add-to-list 'exec-path "~/bin")

(add-to-PATH "/opt/local/bin")
(add-to-PATH "/usr/local/bin")
(add-to-PATH "/usr/local/share/python/bin")
(add-to-PATH "~/bin")
(add-to-PATH "/usr/local/bin")
(add-to-PATH "/usr/local/share/python")
(add-to-PATH "/usr/local/Cellar/ruby/1.9.2-p290/bin")

(setq-default c-basic-offset 4)
(set-language-environment "utf-8")

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(cua-selection-mode t)
(tooltip-mode -1)  ; Tooltips cause problems with multiple desktops.
(setq default-abbrev-mode t)

;; (setq ffip-regexp ".*")
;; (setq ffip-find-options "-not -regex \".*(~|\\.pyc|\\.elc|#)\"")


;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves" t)
(make-directory "~/.emacs.d/backups" t)

(setq tab-width 4)
(setq css-indent-level 4)


;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(blink-cursor-delay 0.2)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes (quote ("711a87d0c4d52957d6f2e9ff1bd614d9de92a84d55e43fad05ab83a445fafef5" "ba0907ad6512d1ae5b94862b6f7fd0e7126ca46781cd32f0c03e25ce1d77d842" "8e7712753b220ea8f5596b95beff0e22324dd590cfd77bf3023dac36b2a8bd4e" "6bfacf9cfee32c45be215c269498ac81dbecca3ec0a51316c25ff79c51ad033b" "c9b2b6cc355053dd5a56191bacac351cfe07483dff5ae978703df5d0adc4b398" "3c2607fd931c0398af5ebae2bc2b539f4a459386d51bc647b8911079ee48ca92" default)))
 '(django-indent-width 0)
 '(mouse-wheel-progressive-speed t)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(nxhtml-default-encoding (quote utf-8))
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(rst-emphasis1-face (if (facep (quote italic)) (quote (quote italic)) (quote italic)))
 '(rst-emphasis2-face (if (facep (quote bold)) (quote (quote bold)) (quote bold)))
 '(rst-level-face-base-light 40)
 '(safe-local-variable-values (quote ((test-case-name . twisted\.test\.test_internet\,twisted\.internet\.test\.test_posixbase) (test-case-name . test\.test_txpostgres) (encoding . utf-8) (virtualenv-workon . "kultinf") (ffip-regexp . ".+\\.(py|html|css)") (Package . CCL))))
 '(scroll-bar-mode t)
 '(set-mark-command-repeat-pop t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))


(load "~/.emacs.d/package-mgmt.el")
(load "~/.emacs.d/ido.el")
(load "~/.emacs.d/smex.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/uniquify.el")
;; (load "~/.emacs.d/tramp-conf.el")
;; (load "~/.emacs.d/textmate.el")
(load "~/.emacs.d/javascript.el")
;; (load "~/.emacs.d/yaml.el")
;; (load "~/.emacs.d/nxhtml.el")
;; (load "php-mode.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/cython.el")
(load "~/.emacs.d/ropemacs.el")
(load "~/.emacs.d/flymake.el")
;; (load "~/.emacs.d/django-utils.el")
;; (load "~/.emacs.d/lisp.el")
;; (load "~/.emacs.d/slime.el")
;; (load "~/.emacs.d/w3m.el")
;; (load "~/.emacs.d/geiser-conf.el")
(load "~/.emacs.d/gettext.el")
;; (require 'magit)
(load "~/.emacs.d/linum-conf.el")
(load "~/.emacs.d/scss-mode-conf.el")

;; Any overrides come last:
(load "~/.emacs.d/keymap.el")

(desktop-save-mode)

;; (load-file "~/elisp/rudel-0.2-4/rudel-loaddefs.el")

(server-start)

;; (require 'edit-server)
;; (edit-server-start)

(server-start)


(defalias 'yes-or-no-p 'y-or-n-p)
(put 'ido-exit-minibuffer 'disabled nil)


(setq flymake-gui-warnings-enabled nil)


;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 180 :width normal :foundry "apple" :family "Monaco"))))
;;  '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
;;  '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
;;  '(rst-level-1-face ((t (:background "grey35"))) t)
;;  '(rst-level-2-face ((t (:background "grey30"))) t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "apple" :family "Monaco")))))
