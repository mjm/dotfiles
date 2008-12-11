(autoload 'enable-paredit-mode "paredit" "" t)

(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'arc-mode-hook 'enable-paredit-mode)

(provide 'moriarity-paredit)