(require 'smex)
(add-hook 'after-init-hook 'smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This is the old M-x.
; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

