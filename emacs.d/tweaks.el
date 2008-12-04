(fset 'yes-or-no-p 'y-or-n-p)

(ido-mode)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             (getenv "HOME") "~"
             (file-name-directory buffer-file-name))
          (buffer-name))))

;;; A stolen function for counting words
(defun word-count nil "Count words in buffer"
  (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))

(provide 'moriarity-misc)