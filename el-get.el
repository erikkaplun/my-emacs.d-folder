(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources '(el-get emacs-w3m geiser po-mode))

(el-get 'sync)


;; el-get installation snippet:

;; (if (require 'el-get nil t)
;;     (message "el-get is already installed, try M-x el-get-update")
;;   (url-retrieve
;;    "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
;;    (lambda (s)
;;      (end-of-buffer)
;;      (eval-print-last-sexp))))
