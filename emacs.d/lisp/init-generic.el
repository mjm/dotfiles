;;; Set a ton of variables that don't make sense anywhere special
(setq visible-bell t
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      indent-tabs-mode nil
      color-theme-is-global t
      imenu-auto-rescan t
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ;; next line should go in a mac-specific file
      semanticdb-default-save-directory "~/.semantic.cache")

;;; Be able to edit compressed files
(auto-compression-mode t)

;;; Show matching parentheses
(show-paren-mode 1)

;;; Show column numbers
(column-number-mode t)

;;; Enable ido-mode
(ido-mode)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point t
      ido-max-prospects 10)

;;; Use y and n instead of yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Setup backups to get out of the way
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)
(setq backup-by-copying t)