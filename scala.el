(modify-coding-system-alist 'file "\\.java$" 'utf-8)

(with-eval-after-load 'scala-mode                      
  (require 'ensime)
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  (add-hook 'java-mode-hook 'ensime-scala-mode-hook)

  (require 'ensime-doc)
  ;; (defun make-mongodb-doc-url (type &optional member)
  ;;   (let* ((doc-prefix "http://mongodb.github.io/casbah/api/#")
  ;;          (url-with-html-extension (ensime-make-scala-doc-url-helper doc-prefix type)))
  ;;     (substring url-with-html-extension 0 -5)))
  ;; (add-to-list 'ensime-doc-lookup-map '("^com\\.mongodb\\." . make-mongodb-doc-url))
  )

(with-eval-after-load 'ensime-mode
  (define-key ensime-mode-map (kbd "s-t") 'ensime-search))

