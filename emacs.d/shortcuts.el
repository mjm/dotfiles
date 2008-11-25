(global-set-key [(control w)] 'backward-kill-word)
(global-set-key [(control x) (control k)] 'kill-region)
(global-set-key [(control c) (control k)] 'kill-region)

(global-set-key [(control x) (control u)] 'undo)

(global-set-key [(control x) (control b)] 'ido-switch-buffer)

(global-set-key "\M- " 'set-mark-command)
(global-set-key "\r" 'newline-and-indent)
(global-set-key [(meta shift return)] 'find-file-at-point)

(global-set-key [(control c) (y)] 'clipboard-yank)

(global-set-key [(control c) (m)] 'magit-status)

(global-set-key [(control x) (left)] 'windmove-left)
(global-set-key [(control x) (right)] 'windmove-right)
(global-set-key [(control x) (up)] 'windmove-up)
(global-set-key [(control x) (down)] 'windmove-down)