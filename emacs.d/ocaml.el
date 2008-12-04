(add-to-list 'load-path "/Users/mattmoriarity/usr/share/emacs/ocaml")

(autoload 'caml-mode "ocaml" "Major mode for editing Caml code." t)
(autoload 'camldebug "camldebug" "Debug caml mode" nil)

(add-to-list 'auto-mode-alist '("\\.ml[iyl]?$" . caml-mode))

(provide 'moriarity-ocaml)