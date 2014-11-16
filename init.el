;; (setq debug-on-error t)

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/my-packages")
(add-to-list 'load-path "~/.emacs.d/my-packages/iedit")

(setq default-directory "/Users/erik")


(defun add-to-path (dir)
(let ((full-path (expand-file-name dir)))
     (when (file-directory-p full-path)
     (add-to-list 'exec-path full-path)
        (setenv "PATH"
             (concat full-path
                        path-separator
                     (getenv "PATH")))
        ))
)


(mapcar #'add-to-path
      '("/opt/local/bin"
 	  "/usr/local/bin"
        "/usr/local/share/python"
 	  "~/bin"))


(setq-default c-basic-offset 4)
(set-language-environment "utf-8")

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(cua-selection-mode t)
(tooltip-mode -1)  ; Tooltips cause problems with multiple desktops.
(setq default-abbrev-mode t)
(global-auto-revert-mode t)

;; (setq ffip-regexp ".*")
;; (setq ffip-find-options "-not -regex \".*(~|\\.pyc|\\.elc|#)\"")


;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves" t)
(make-directory "~/.emacs.d/backups" t)

(setq tab-width 4)
(setq css-indent-level 4)


;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
; custom-set-variables was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
 '(ack-and-a-half-project-root-file-patterns (quote (".emacs-project\\'" ".project\\'" ".xcodeproj\\'" ".sln\\'" "\\`Project.ede\\'" "\\`.git\\'" "\\`.bzr\\'" "\\`_darcs\\'" "\\`.hg\\'")))
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
'(auto-revert-interval 0.25)
  '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
'(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
  '(blink-cursor-delay 0.2)
'(column-number-mode t)
  '(create-lockfiles nil)
'(cua-mode t nil (cua-base))
  '(custom-enabled-themes (quote (tango-dark)))
'(custom-safe-themes (quote ("711a87d0c4d52957d6f2e9ff1bd614d9de92a84d55e43fad05ab83a445fafef5" "ba0907ad6512d1ae5b94862b6f7fd0e7126ca46781cd32f0c03e25ce1d77d842" "8e7712753b220ea8f5596b95beff0e22324dd590cfd77bf3023dac36b2a8bd4e" "6bfacf9cfee32c45be215c269498ac81dbecca3ec0a51316c25ff79c51ad033b" "c9b2b6cc355053dd5a56191bacac351cfe07483dff5ae978703df5d0adc4b398" "3c2607fd931c0398af5ebae2bc2b539f4a459386d51bc647b8911079ee48ca92" default)))
'(django-indent-width 0)
  '(fill-column 100)
'(flycheck-flake8-maximum-line-length nil)
  '(markdown-command "/usr/local/bin/markdown")
'(mouse-wheel-progressive-speed t)
  '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
'(nxhtml-default-encoding (quote utf-8))
  '(nxml-child-indent 4)
'(nxml-outline-child-indent 4)
  '(rst-emphasis1-face (if (facep (quote italic)) (quote (quote italic)) (quote italic)))
'(rst-emphasis2-face (if (facep (quote bold)) (quote (quote bold)) (quote bold)))
'(rst-level-face-base-light 40)
  '(safe-local-variable-values (quote ((nose-global-name . "~/.virtualenvs/pastereview/bin/nosetests") (nose-global-name . "~/.virtualenvs/spinoff/bin/nosetests"))))
'(scroll-bar-mode nil)
  '(send-mail-function (quote mailclient-send-it))
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
(load "~/.emacs.d/scala.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/cython.el")
(load "~/.emacs.d/load-pymacs.el")
(load "~/.emacs.d/ropemacs.el")
;; (load "~/.emacs.d/flymake.el")
(load "~/.emacs.d/flycheck.el")
;; (load "~/.emacs.d/django-utils.el")
;; (load "~/.emacs.d/lisp.el")
;; (load "~/.emacs.d/slime.el")
;; (load "~/.emacs.d/w3m.el")
;; (load "~/.emacs.d/geiser-conf.el")
(load "~/.emacs.d/gettext.el")
;; (require 'magit)
;; (load "~/.emacs.d/linum-conf.el")
(load "~/.emacs.d/scss-mode-conf.el")
(load "~/.emacs.d/erlang.el")
(load "~/.emacs.d/applescript-conf.el")
(load "~/.emacs.d/iedit.el")
(load "~/.emacs.d/smalltalk.el")
(load "~/.emacs.d/ack.el")
(load "~/.emacs.d/haskell.el")

(load "highlight-indentation")
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . highlight-indentation-mode))

(load "~/.emacs.d/auto-indent-on-yank.el")

;; Any overrides come last:
(load "~/.emacs.d/keymap.el")

(desktop-save-mode)

;; (load-file "~/elisp/rudel-0.2-4/rudel-loaddefs.el")

(server-start)

(defalias 'yes-or-no-p 'y-or-n-p)
(put 'ido-exit-minibuffer 'disabled nil)


(setq flymake-gui-warnings-enabled nil)


(custom-set-faces
;; custom-set-faces was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "apple" :family "Monaco"))))
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(rst-level-1-face ((t (:background "grey35"))) t)
 '(rst-level-2-face ((t (:background "grey30"))) t)
 '(compilation-error ((t (:background "dark red" :foreground "light green"))))
 '(flycheck-error ((t (:underline (:color "Red1" :style wave)))))
 '(flymake-errline ((t (:inherit error :background "dark red" :foreground "pink")))))
