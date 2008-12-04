(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files." t)

(add-to-list 'auto-mode-alist
             '("\\.text" . markdown-mode))

(provide 'moriarity-markdown)