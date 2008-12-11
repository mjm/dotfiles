(add-to-list 'load-path "/Users/mattmoriarity/usr/share/emacs/emacs-rails")
(require 'rails)

(autoload 'haml-mode "haml-mode" "Major mode for HAML template language" t)
(autoload 'sass-mode "sass-mode" "Major mode for SASS CSS templates" t)

(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(provide 'moriarity-rails)