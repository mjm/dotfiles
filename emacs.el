;;; Start the Emacs server so we can use emacsclient
(server-start)

;;; Avoid custom polluting the .emacs file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

(setq dotfiles-dir "~/.emacs.d/")
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "elpa"))
(add-to-list 'load-path "~/usr/share/elpa-alt")
(setq autoload-file (concat dotfiles-dir "loaddefs.el"))

;;; Set the path to be right
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

;;; Load things that will used often
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'imenu)

;;; Load the package manager
(require 'package)
(package-initialize)

(setq files-to-load
      '(misc defuns clojure lisp slime shortcuts ruby
        rails matlab markdown appearance blogmax eshell org))

(defun load-config (file)
  (require (intern (concat "moriarity-" (symbol-name file)))))

(mapcar 'load-config files-to-load)

(regen-autoloads)