;; (autoload #'espresso-mode "espresso" "Start espresso-mode" t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
;; (add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;; (add-hook 'espresso-mode-hook '(lambda () (highlight-parentheses-mode t)))
;; (add-hook 'espresso-mode-hook '(lambda () (setq comment-start "//~")))


;; (require 'flymake)

;; (defun flymake-jslint-init ()
;;   (let* ((temp-file (flymake-init-create-temp-buffer-copy
;; 		     'flymake-create-temp-inplace))
;;          (local-file (file-relative-name
;; 		      temp-file
;; 		      (file-name-directory buffer-file-name))))
;;     (list "rhino" (list (expand-file-name "~/bin/jslint.js") local-file))))

;; (setq flymake-allowed-file-name-masks
;;       (cons '(".+\\.js$"
;; 	      flymake-jslint-init
;; 	      flymake-simple-cleanup
;; 	      flymake-get-real-file-name)
;; 	    flymake-allowed-file-name-masks))

;; (setq flymake-err-line-patterns 
;;       (cons '("^Lint at line \\([[:digit:]]+\\) character \\([[:digit:]]+\\): \\(.+\\)$"  
;; 	      nil 1 2 3)
;; 	    flymake-err-line-patterns))

;; ;; (provide 'flymake-jslint)

;; ;; (require 'flymake-jslint)
;; (add-hook 'espresso-mode-hook
;; 	  (lambda () (flymake-mode t)))
;; (add-hook 'javascript-mode-hook
;; 	  (lambda () (flymake-mode t)))