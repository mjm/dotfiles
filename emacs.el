(load "~/.emacs.d/pre-init.el")

;;; Automatically load any ~/.emacs.d/init-*.el files
(dolist (file (sort (file-expand-wildcards
		     (concat init-dir "init-*.el"))
		    #'string<))
  (load (file-name-sans-extension file) t))