(add-to-list 'load-path "~/kics2-0.5.0/tools/emacs")

(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . curry-mode)
                ("\\.hi$"     . curry-mode)
                ("\\.l[hg]s$" . literate-curry-mode))))

(autoload 'curry-mode "curry-mode"
  "Major mode for editing Curry scripts." t)
(autoload 'literate-curry-mode "curry-mode"
  "Major mode for editing literate Curry scripts." t)

(add-hook 'curry-mode-hook 'turn-on-curry-font-lock)
(add-hook 'curry-mode-hook 'turn-on-curry-decl-scan)
(add-hook 'curry-mode-hook 'turn-on-curry-doc-mode)
(add-hook 'curry-mode-hook 'turn-on-curry-indent)
(add-hook 'curry-mode-hook 'turn-on-curry-simple-indent)
(add-hook 'curry-mode-hook 'turn-on-curry-pakcs)

