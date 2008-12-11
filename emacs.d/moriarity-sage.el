(load "pyrex-mode")
(load "python-mode")
(setq ipython-command "/Users/mattmoriarity/usr/sage/sage")  ;; depends on where your sage is.
(load "sage")
(require 'ipython)

(fset 'py-shell-fullscreen
   [?\M-x ?p ?y ?- ?s ?h ?e ?l ?l return ?\C-x ?1])
(define-key esc-map "i" 'py-shell-fullscreen)

(setq auto-mode-alist (cons '("\\.pyx\\'" . pyrex-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxd\\'" . pyrex-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxi\\'" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sage\\'" . python-mode) auto-mode-alist))

(provide 'moriarity-sage)