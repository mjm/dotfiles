(setq mac-option-modifier 'meta)

(global-set-key (kbd "C-x C-u") 'undo)

;;; C-SPC is the shortcut for Quicksilver on the Mac
(global-set-key (kbd "M-SPC") 'set-mark-command)

;;; Wanting to indent is far more common
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'newline)

;;; Easy shifting between windows
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)

;;; Clean up the current buffer
(global-set-key (kbd "C-c n")
		(lambda ()
		  (interactive)
		  (indent-buffer)
		  (delete-trailing-whitespace)
		  (untabify-buffer)))

;;; Use regexp searches by default
;;; Get normal search by adding meta
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;;; Get fancy expansion
(global-set-key (kbd "M-/") 'hippie-expand)

;;; Jump to a symbol in the current file
(global-set-key (kbd "C-x C-j") 'ido-goto-symbol)

;;; File and buffer related shortcuts
(global-set-key (kbd "C-c b") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)

;;; Eshell shortcuts
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M")
		(lambda ()
		  (interactive)
		  (eshell t)))
(global-set-key (kbd "C-x C-m") 'shell)

;;; Make apropos just like another help function
(global-set-key (kbd "C-h a") 'apropos)

;;; Access magit from a convenient hotkey
(global-set-key (kbd "C-c m") 'magit-status)