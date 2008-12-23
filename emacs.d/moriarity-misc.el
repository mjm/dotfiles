(when window-system
  (mouse-wheel-mode t)
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

(setq visible-bell t
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      color-theme-is-global t
      imenu-auto-rescan t
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      browse-url-browser-function 'browse-url-default-macosx-browser
      semanticdb-default-save-directory "~/.semantic.cache")

(auto-compression-mode t)

(recentf-mode 1)

(show-paren-mode 1)

(when (> emacs-major-version 21)
  (ido-mode)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point t
        ido-max-prospects 10))

(defalias 'yes-or-no-p 'y-or-n-p)
(random t)

(delete 'try-expand-line hippie-expand-try-functions-list)
(delete 'try-expand-list hippie-expand-try-functions-list)

(setq mumamo-chunk-coloring 'submode-colored
      nxhtml-skip-welcome t
      indent-region-mode t
      rng-nxml-auto-validate-flag nil)

(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))

(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . nxhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . nxhtml-mode))

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             (getenv "HOME") "~"
             (file-name-directory buffer-file-name))
          (buffer-name))))

;; Create directories that don't exist when saving
(add-hook 'before-save-hook
          '(lambda ()
             (or (file-exists-p (file-name-directory buffer-file-name))
                 (make-directory (file-name-directory buffer-file-name) t))))

(provide 'moriarity-misc)