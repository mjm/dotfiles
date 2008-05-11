(setq *emacs-load-start* (current-time))

;;; Start the Emacs server so we can use emacsclient
(server-start)

;;; Avoid custom polluting the .emacs file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

;;; We like options, but CMD makes more sense as meta
(setq mac-command-modifier 'meta)
;;; y-or-n-p is just more convenient
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m")
;;; Personal set of emacs files
(add-to-list 'load-path "/Users/mattmoriarity/usr/share/emacs")
(add-to-list 'load-path "/Users/mattmoriarity/usr/share/emacs/emacs-rails")
;;; CVS version of SLIME
(add-to-list 'load-path "/Users/mattmoriarity/usr/src/slime")
;;; Scala tools require their own directory, load it
(add-to-list 'load-path "/Users/mattmoriarity/usr/src/scala-tool-support/src/emacs")
;;; Git for emacs
;;; (add-to-list 'load-path "/Users/mattmoriarity/usr/src/git-emacs")
;;; Ocaml
(add-to-list 'load-path "/Users/mattmoriarity/usr/share/emacs/ocaml")
(load "/Users/mattmoriarity/usr/share/emacs/haskell-mode/haskell-site-file")
(add-to-list 'load-path "/opt/ecb")
(load "/opt/cedet/common/cedet.el")

(require 'w3m-load)
(require 'rails)
;(require 'git-emacs)
(require 'ecb-autoloads)

;;; Autoloads speed up emacs
(autoload 'enable-paredit-mode "paredit" "Start parediting" t)
(autoload 'tabbar-mode "tabbar" "Enable/disable the tabbar" t)
(autoload 'arc-mode "arc" "Arc mode" t)
(autoload 'run-arc "inferior-arc" "Inferior Arc mode" t)
(autoload 'haml-mode "haml-mode" "Major mode for HAML template language" t)
(autoload 'sass-mode "sass-mode" "Major mode for SASS CSS templates" t)
(autoload 'js2-mode "js2" "Javascript mode" t)
(autoload 'caml-mode "ocaml" "Major mode for editing Caml code." t)
(autoload 'camldebug "camldebug" "Debug caml mode" nil)

(add-to-list 'auto-mode-alist '("\\.arc$" . arc-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.ml[iyl]?$" . caml-mode))

(require 'scala-mode-auto)

(semantic-load-enable-code-helpers)

(setq arc-program-name "~/usr/src/arc-wiki/arc.sh --no-rl")

;;; Configure the fonts for tabbar
;; (eval-after-load "tabbar"
;;   '(progn
;;      (set-face-attribute 'tabbar-default-face
;;                          nil :background "gray60")
;;      (set-face-attribute 'tabbar-unselected-face nil
;;                          :background "gray85"
;;                          :foreground "gray30"
;;                          :box nil)
;;      (set-face-attribute 'tabbar-selected-face nil
;;                          :background "#f2f2f6"
;;                          :foreground "black"
;;                          :box nil)
;;      (set-face-attribute 'tabbar-button-face nil
;;                          :box '(:line-width 1
;;                                 :color "gray72"
;;                                 :style released-button))
;;      (set-face-attribute 'tabbar-separator-face nil
;;                          :height 0.8)
;;      ;; These are the same shortcuts as Safari
;;      (define-key global-map (kbd "M-}") 'tabbar-forward)
;;      (define-key global-map (kbd "M-{") 'tabbar-backward)))

;; ;;; Turn on tabbar always
;; (tabbar-mode 1)

;; ;;; Don't show the special *...* buffers in the tabbar
;; (setq tabbar-buffer-groups-function
;;       (lambda (b) (list "All Buffers")))
;; (setq tabbar-buffer-list-function
;;       (lambda ()
;;         (remove-if (lambda (buffer)
;;                      (find (aref (buffer-name buffer) 0) " *"))
;;                    (buffer-list))))

;;; Configure SLIME
(setq common-lisp-hyperspec-root
      "file:///Users/mattmoriarity/usr/doc/hyperspec")
(setq browse-url-browser-function 'browse-url-default-macosx-browser)
(setenv "SBCL_HOME" "/Users/mattmoriarity/usr/lib/sbcl/")
(add-to-list 'Info-default-directory-list
             "/Users/mattmoriarity/usr/share/info")
(setq slime-lisp-implementations
      '((sbcl ("/Users/mattmoriarity/usr/bin/sbcl"))
        (openmcl ("/opt/ccl/scripts/openmcl64"))))
(require 'slime-autoloads)
(add-hook 'lisp-mode-hook (lambda ()
                            (cond ((not (featurep 'slime))
                                   (require 'slime)
                                   (normal-mode)))))
(eval-after-load "slime"
  '(progn
     (add-to-list 'load-path "/Users/mattmoriarity/usr/src/slime/contrib")
     (slime-setup '(slime-fancy slime-asdf slime-banner))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-edit-definition-fallback-function 'find-tag)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
     (global-set-key "\C-cs" 'slime-selector)))

;;; I suppose these are for convenience
(defun slime-openmcl ()
  (interactive)
  (apply #'slime-start
         (list* :buffer "*inferior-lisp-openmcl*"
                (slime-lookup-lisp-implementation slime-lisp-implementations
                                                  'openmcl))))

(defun slime-sbcl ()
  (interactive)
  (apply #'slime-start
         (list* :buffer "*inferior-lisp-sbcl*"
                (slime-lookup-lisp-implementation slime-lisp-implementations
                                                  'sbcl))))

;;; Appearance tweaks
(set-terminal-coding-system 'iso-8859-1)
(set-face-attribute 'default nil
                    :family "inconsolata" :height 130)
(setq default-frame-alist '((width . 168)
                            (height . 56)
                            (top . 0)
                            (left . 0)
                            (tool-bar-line . 0)))

;;; Set the color theme
(require 'color-theme)
(color-theme-scintilla)

;;; Turn on Paredit for all Lispy languages
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'arc-mode-hook 'enable-paredit-mode)

;;; Wrapping is good for text
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;; It is very convenient to load files open from the last time
;; (require 'desktop)
;; (desktop-load-default)
;; (setq desktop-save-mode 1)
;; (desktop-read)

;;; Smart switching
(ido-mode)

;;; Stole this verbatim from Steve Yegge
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\M- " 'set-mark-command)
(global-set-key "\r" 'newline-and-indent)
(global-set-key "\C-j" 'newline)
(global-set-key [M-S-return] 'find-file-at-point)

(global-set-key "\C-cy" 'clipboard-yank)

;;; A stolen function for counting words
(defun word-count nil "Count words in buffer"
  (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))

;;; Check the time to finish loading.
(message "My .emacs loaded in %ds"
         (destructuring-bind (hi lo ms) (current-time)
           (- (+ hi lo)
              (+ (first *emacs-load-start*)
                 (second *emacs-load-start*)))))
