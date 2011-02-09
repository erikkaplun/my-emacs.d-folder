(defun django-insert-trans (from to &optional buffer)
  (interactive "*r")
  (save-excursion
    (save-restriction
      (narrow-to-region from to)
      (goto-char from)
      (iso-iso2sgml from to)
      (insert "{% trans \"")
      (goto-char (point-max))
      (insert "\" %}")
      (point-max))))

(defun django-insert-comment (from to &optional buffer)
  (interactive "*r")
  (save-excursion
    (save-restriction
      (narrow-to-region from to)
      (goto-char from)
      (iso-iso2sgml from to)
      (insert "{% comment %}")
      (goto-char (point-max))
      (insert "{% endcomment %}")
      (point-max))))


(defun django-insert-comment-if (from to &optional buffer)
  (interactive "*r")
  (save-excursion
    (save-restriction
      (narrow-to-region from to)
      (goto-char from)
      (iso-iso2sgml from to)
      (insert "{% if 0 %}")
      (goto-char (point-max))
      (insert "{% endif %}")
      (point-max))))



(defun django-insert-transpy (from to &optional buffer)
  (interactive "*r")
  (save-excursion
    (save-restriction
      (narrow-to-region from to)
      (goto-char from)
      (iso-iso2sgml from to)
      (insert "_(")
      (goto-char (point-max))
      (insert ")")
      (point-max))))

;; (add-hook 'sgml-mode-hook
;;           (lambda ()
;;             (local-set-key "\C-c\C-g" 'django-insert-trans)
;;             (setq indent-tabs-mode nil)
;;             ))

(add-hook 'sgml-mode-hook
          (lambda ()
            (local-set-key [(super /)] 'django-insert-comment)
            (setq indent-tabs-mode nil)))

;; (add-hook 'python-mode-hook
;;           '(lambda ()
;;              (outline-minor-mode 1)
;;              (setq
;;               tab-width 4
;;               python-indent 4
;;               outline-regexp py-outline-regexp
;;               outline-level 'py-outline-level)
;;              (local-set-key "\C-c\C-t" 'django-insert-transpy)
;;              )
