(load "textmate.el/textmate.el")
(textmate-define-comment-line)
;;; Taken from textmate.el:
(global-set-key [(super /)] 'comment-or-uncomment-region-or-line)
;; (global-set-key [(super shift l)] 'textmate-select-line)
;; (global-set-key [(super return)] 'textmate-next-line)
