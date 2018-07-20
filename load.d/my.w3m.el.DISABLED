;; (require 'browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-use-cookies t)

;; (defun w3m-browse-url-other-window (url &optional newwin)
;;   (interactive
;;    (browse-url-interactive-arg "w3m URL: "))
;;   (let ((pop-up-frames nil))
;;     (switch-to-buffer-other-window
;;      (w3m-get-buffer-create "*w3m*"))
;;     (w3m-browse-url url)))


;; ;; The ftp stuff is irrelevant for this discussion. I left it in anyhow.
;; (setq browse-url-browser-function
;;       (list (cons "^ftp:/.*"  (lambda (url &optional nf)
;;                                 (call-interactively #'find-file-at-point url)))
;;             (cons "."  #'browse-url-w3)))
