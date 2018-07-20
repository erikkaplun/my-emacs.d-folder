(setq debug-on-error t)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(setq default-directory "/Users/erik")


;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves" t)
(make-directory "~/.emacs.d/backups" t)


(defun add-to-path (dir)
  (let ((full-path (expand-file-name dir)))
    (when (file-directory-p full-path)
      (add-to-list 'exec-path full-path)
      (setenv "PATH" (concat full-path path-separator (getenv "PATH"))))))
(mapcar #'add-to-path '("/usr/local/bin"
                        "/usr/local/share/python"
                        "~/bin"
                        "/Users/erik/.local/bin"
                        "/Users/erik/.cabal/bin"
                        "/Users/erik/Library/Haskell/bin"
                        "~/kics2-0.5.0/bin"))


(setq-default c-basic-offset 2)
(set-language-environment "utf-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(cua-selection-mode t)
(tooltip-mode -1)  ;; Tooltips cause problems with multiple desktops.
(setq default-abbrev-mode t)
(global-auto-revert-mode t)
(setq tab-width 2)
(setq css-indent-level 2)
(setq ffip-limit 15000) ;; the default of 512 is way too low
(global-linum-mode)
(desktop-save-mode)
(server-start)
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'ido-exit-minibuffer 'disabled nil)
(put 'downcase-region 'disabled nil)
(electric-indent-mode nil)


(load "~/.emacs.d/keymap.el")


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "apple" :family "Monaco"))))
 '(compilation-error ((t (:background "dark red" :foreground "light green"))))
 '(flycheck-error ((t (:underline (:color "Red1" :style wave)))))
 '(flymake-errline ((t (:inherit error :background "dark red" :foreground "pink"))))
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(rst-level-1-face ((t (:background "grey35"))) t)
 '(rst-level-2-face ((t (:background "grey30"))) t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ack-and-a-half-project-root-file-patterns
   (quote
    (".emacs-project\\'" ".project\\'" ".xcodeproj\\'" ".sln\\'" "\\`Project.ede\\'" "\\`.git\\'" "\\`.bzr\\'" "\\`_darcs\\'" "\\`.hg\\'")))
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-revert-interval 0.25)
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(blink-cursor-delay 0.2)
 '(column-number-mode nil)
 '(create-lockfiles nil)
 '(cua-mode t nil (cua-base))
 '(fill-column 79)
 '(flycheck-flake8-maximum-line-length nil)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-tags-on-save t)
 '(load-dir-ignored (quote ("\\.dir-locals" ".*?.disabled")))
 '(load-dirs t)
 '(markdown-command "/usr/local/bin/markdown")
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/"))))
 '(package-pinned-packages (quote ((cider . "melpa-stable"))))
 '(package-selected-packages
   (quote
    (highlight-parentheses iedit cider-hydra clj-refactor sayid tagedit projectile ido-ubiquitous clojure-mode-extra-font-locking paredit cider rjsx-mode jsx-mode tide clojure-mode clojurescript-mode typescript-mode yasnippet yaml-mode web-mode w3m w3 use-package undo-tree tern swiper smex scss-mode rainbow-delimiters python purescript-mode psci php-mode paredit-menu paredit-everywhere nix-mode mo-git-blame markdown-mode magit json-mode js2-mode hindent hi2 helm-projectile helm-idris hamlet-mode gh fsharp-mode flymake-racket flymake-haskell-multi find-file-in-project faceup f erlang ecb deferred company-ghc color-theme cedit caml auto-complete applescript-mode apples-mode)))
 '(rst-level-face-base-light 40)
 '(safe-local-variable-values
   (quote
    ((hamlet/basic-offset . 2)
     (haskell-process-use-ghci . t)
     (haskell-indent-spaces . 2)
     (nose-global-name . "~/.virtualenvs/pastereview/bin/nosetests")
     (nose-global-name . "~/.virtualenvs/spinoff/bin/nosetests"))))
 '(scroll-bar-mode nil)
 '(scroll-conservatively nil)
 '(scroll-down-aggressively nil)
 '(scroll-margin 0)
 '(scroll-step 10)
 '(scroll-up-aggressively nil)
 '(send-mail-function (quote mailclient-send-it))
 '(set-mark-command-repeat-pop t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
