(setq mac-command-modifier 'meta)
(fset 'yes-or-no-p 'y-or-n-p)

(ido-mode)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;; A stolen function for counting words
(defun word-count nil "Count words in buffer"
  (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))
