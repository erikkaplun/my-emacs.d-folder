(setq auto-mode-alist
      (append  '(("\\.st\\'" . smalltalk-mode))
               auto-mode-alist))

(autoload 'smalltalk-mode "/usr/local/share/emacs/site-lisp/smalltalk-mode.elc" "" t)
