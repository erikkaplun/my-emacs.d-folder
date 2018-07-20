(add-to-list 'load-path "/Users/erik/code/haskell/stack-ide/stack-mode")
(autoload 'stack-mode "stack-mode" nil t)

;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-hi2)
;; (add-hook 'haskell-mode-hook 'stack-mode)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))


;; https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md#keeping-packages-up-to-date
;; > Note that given the usefulness of this feature, the haskell-mode wiki suggests binding the F8
;; > key combination to run this command, by adding to your personal configuration file the
;; > following line:
(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map [f8] 'haskell-navigate-imports))

(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))


;;(require 'agda-input)
;;(add-hook 'haskell-mode-hook
;;          (lambda () (set-input-method "Agda")))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "M-]") 'haskell-mode-stylish-buffer))


;; Alignment rules {

(eval-after-load "align"
  '(add-to-list 'align-rules-list
                '(haskell-types
                   (regexp . "\\(\\s-+\\)\\(::\\|∷\\)\\s-+")
                   (modes quote (haskell-mode literate-haskell-mode)))))
(eval-after-load "align"
  '(add-to-list 'align-rules-list
                '(haskell-assignment
                  (regexp . "\\(\\s-+\\)=\\s-+")
                  (modes quote (haskell-mode literate-haskell-mode)))))
(eval-after-load "align"
  '(add-to-list 'align-rules-list
                '(haskell-arrows
                  (regexp . "\\(\\s-+\\)\\(->\\|→\\|=>\\)\\s-+")
                  (modes quote (haskell-mode literate-haskell-mode)))))
(eval-after-load "align"
  '(add-to-list 'align-rules-list
                '(haskell-left-arrows
                  (regexp . "\\(\\s-+\\)\\(<-\\|←\\)\\s-+")
                  (modes quote (haskell-mode literate-haskell-mode)))))

;; } Alignment rules


(custom-set-variables
 '(haskell-tags-on-save t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
;;  '(haskell-process-type 'cabal-repl)
 )

;; (eval-after-load 'haskell-mode '(progn
;;   (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
;;   (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
;;   (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
;;   (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
;;   (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
;;   (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
;;   (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))

;; (eval-after-load 'haskell-cabal '(progn
;;   (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
;;   (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
;;   (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
;;   (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

(defvar ghc-document-key    "\e\C-D")
