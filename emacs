(setq *emacs-load-start* (current-time))

;;; Start the Emacs server so we can use emacsclient
(server-start)

;;; Avoid custom polluting the .emacs file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

(add-to-list 'load-path "~/usr/share/emacs")

(load "~/.emacs.d/tweaks.el")
(load "~/.emacs.d/appearance.el")
(load "~/.emacs.d/slime.el")
(load "~/.emacs.d/arc.el")
(load "~/.emacs.d/paredit.el")
(load "~/.emacs.d/shortcuts.el")
(load "~/.emacs.d/w3m.el")
(load "~/.emacs.d/rails.el")
(load "~/.emacs.d/haskell.el")
(load "~/.emacs.d/ecb.el")
(load "~/.emacs.d/sage.el")

;;; Check the time to finish loading.
(message "My .emacs loaded in %ds"
         (destructuring-bind (hi lo ms) (current-time)
           (- (+ hi lo)
              (+ (first *emacs-load-start*)
                 (second *emacs-load-start*)))))
