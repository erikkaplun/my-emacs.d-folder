(define-key local-function-key-map [kp-delete] [4])
(global-set-key (kbd "s-o") 'other-window)
(global-set-key (kbd "s-b") 'ido-switch-buffer)
(global-set-key (kbd "s--") 'kill-this-buffer)
(global-set-key (kbd "s-_") 'kill-buffer-and-window)
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-vertically)
(global-set-key (kbd "s-3") 'split-window-horizontally)
(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<C-S-tab>") 'previous-buffer)
(global-set-key (kbd "<C-M-backspace>") 'backward-kill-sexp)

(global-set-key (kbd "C-M-(") 'delete-pair)

(global-set-key (kbd "<s-backspace>") (lambda () (interactive) (kill-line 0)))
(global-set-key (kbd "<s-left>") 'move-beginning-of-line)
(global-set-key (kbd "<s-right>") 'move-end-of-line)
(global-set-key (kbd "<s-up>") 'beginning-of-buffer)
(global-set-key (kbd "<s-down>") 'end-of-buffer)

(global-set-key (kbd "s-t") 'find-file-in-project)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)

(global-set-key (kbd "s-<") 'edit-emacs-conf)


(defmacro allow-line-as-region-for-function (orig-function)
  `(defun ,(intern (concat (symbol-name orig-function) "-or-line"))
     ()
     ,(format "Like `%s', but acts on the current line if mark is not active."
              orig-function)
     (interactive)
     (if mark-active
         (call-interactively (function ,orig-function))
       (save-excursion
         ;; define a region (temporarily) -- so any C-u prefixes etc. are preserved.                                                                \

         (beginning-of-line)
         (set-mark (point))
         (end-of-line)
         (call-interactively (function ,orig-function))))))
(allow-line-as-region-for-function comment-or-uncomment-region)
(global-set-key [(super /)] 'comment-or-uncomment-region-or-line)
