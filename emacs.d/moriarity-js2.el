(autoload 'js2-mode "js2" "Javascript mode" t)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(provide 'moriarity-js2)