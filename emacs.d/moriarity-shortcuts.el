(setq mac-option-modifier 'meta)

(global-set-key [(control w)] 'backward-kill-word)
(global-set-key [(control x) (control k)] 'kill-region)
(global-set-key [(control c) (control k)] 'kill-region)

(global-set-key [(control x) (control u)] 'undo)

(global-set-key [(control x) (control b)] 'ido-switch-buffer)

(global-set-key "\M- " 'set-mark-command)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key [(control c) (y)] 'clipboard-yank)

(global-set-key [(control c) (m)] 'magit-status)

(global-set-key [(control x) (left)] 'windmove-left)
(global-set-key [(control x) (right)] 'windmove-right)
(global-set-key [(control x) (up)] 'windmove-up)
(global-set-key [(control x) (down)] 'windmove-down)

;;; Clean up the current buffer
(global-set-key [(control c) (n)] (lambda ()
                                    (interactive)
                                    (indent-buffer)
                                    (delete-trailing-whitespace)
                                    (untabify-buffer)))

;;; Make the default search use regexps
(global-set-key [(control s)] 'isearch-forward-regexp)
(global-set-key [(control r)] 'isearch-backward-regexp)
(global-set-key [(control meta s)] 'isearch-forward)
(global-set-key [(control meta r)] 'isearch-backward)

(global-set-key [(meta /)] 'hippie-expand)

;;; Jump to a symbol in the current file
(global-set-key [(control x) (control j)] 'ido-goto-symbol)

;;; Shortcuts for files and buffers
(global-set-key [(control x) (meta f)] 'ido-find-file-other-window)
;;; This one doesn't quite work
;;(global-set-key [(control x) (control meta f)] 'find-file-in-project)
(global-set-key [(control x) (f)] 'recentf-ido-find-file)
(global-set-key [(control x) (control p)] 'find-file-at-point)
(global-set-key [(control c) (b)] 'bury-buffer)
(global-set-key [(control c) (r)] 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)

(global-set-key [(control x) (m)] 'eshell)
(global-set-key [(control x) (shift m)] (lambda ()
                                          (interactive)
                                          (eshell t)))
(global-set-key [(control x) (control m)] 'shell)

(global-set-key [(control h) (a)] 'apropos)

(global-set-key [(control c) (i)] (lambda ()
                                    (interactive)
                                    (switch-or-start (lambda ()
                                                       (erc :server "irc.freenode.net"
                                                            :nick "cooldude127"))
                                                     "irc.freenode.net:6667")))

;;; Do full screen view in Carbon Emacs
(global-set-key [(control shift return)] 'mac-toggle-fullscreen)

(provide 'moriarity-shortcuts)