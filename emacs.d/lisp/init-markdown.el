(autoload 'markdown-mode "markdown-mode" "" t)

(add-to-list 'auto-mode-alist
	     '("\\.text" . markdown-mode))
(add-to-list 'auto-mode-alist
	     '("\\.markdown" . markdown-mode))