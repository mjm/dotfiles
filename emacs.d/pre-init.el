;;; Start an emacs server
(server-start)

;;; Put Customize stuff in its own file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

;;; Set up some load-path variables
;;; NOTE these are just variables, they are not in the load path yet
(setq dotfiles-dir (expand-file-name "~/.emacs.d/"))
(setq package-dir (concat dotfiles-dir "site-lisp/"))
(setq init-dir (concat dotfiles-dir "lisp/"))

;;; Set up the site folder to get loaded from
(add-to-list 'load-path package-dir)