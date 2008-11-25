(setq *emacs-load-start* (current-time))

;;; Start the Emacs server so we can use emacsclient
(server-start)

;;; Avoid custom polluting the .emacs file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

(add-to-list 'load-path "~/usr/share/emacs")

(setq files-to-load
      '(tweaks
        appearance
        clojure
        slime
        ;arc
        paredit
        shortcuts
        w3m
        ruby
        rails
        haskell
        ecb
        ;sage
        js2
        psgml
        matlab
        auctex
        magit
        erc
        markdown
        blogmax))

(defun load-config (f)
  (load (concat "~/.emacs.d/"
                (symbol-name f)
                ".el")))

(mapcar 'load-config files-to-load)

;;; Check the time to finish loading.
(message "My .emacs loaded in %ds"
         (destructuring-bind (hi lo ms) (current-time)
           (- (+ hi lo)
              (+ (first *emacs-load-start*)
                 (second *emacs-load-start*)))))
