;;; -*- lexical-binding: t -*-

(defun all-conf-file-names () 
  (remove-if-not 
   (lambda (fname) (and (not (string-prefix-p "." fname)) (string-suffix-p ".el" fname)))
   (directory-files user-emacs-directory)))

(defun edit-emacs-conf (conf-name)
  (interactive (list (completing-read "Name: " (all-conf-file-names))))
  (find-file (concat user-emacs-directory "/" conf-name)))
