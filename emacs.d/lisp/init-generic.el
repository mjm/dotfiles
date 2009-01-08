;;; Set a ton of variables that don't make sense anywhere special
(setq visible-bell t
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      color-theme-is-global t
      imenu-auto-rescan t
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ;; next line should go in a mac-specific file
      browse-url-browser-function 'browse-url-default-macosx-browser
      semanticdb-default-save-directory "~/.semantic.cache")

;;; Be able to edit compressed files
(auto-compression-mode t)

;;; Show matching parentheses
(show-paren-mode 1)

;;; Enable ido-mode
(ido-mode)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point t
      ido-max-prospects 10)

;;; Use y and n instead of yes or no
(defalias 'yes-or-no-p 'y-or-n-p)