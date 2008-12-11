(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'my-coding-hook)
(add-hook 'lisp-mode-hook 'my-coding-hook)
(add-hook 'clojure-mode-hook 'my-coding-hook)

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-remove-elc-on-save)

(defun emacs-lisp-remove-elc-on-save ()
  "If you're saving an elisp file, likely the .elc is no longer valid."
  (make-local-variable 'after-save-hook)
  (add-hook 'after-save-hook
            (lambda ()
              (if (file-exists-p (concat buffer-file-name "c"))
                  (delete-file (concat buffer-file-name "c"))))))

(autoload 'enable-paredit-mode "paredit" "" t)

(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'arc-mode-hook 'enable-paredit-mode)
;;; Clojure does it's paredit handling special since it uses brackets
;;; as well as parentheses.

(defun my-dim-parentheses (mode)
  (font-lock-add-keywords mode
                          '(("(\\|)" . 'paren-face))))

(mapcar 'my-dim-parentheses '(emacs-lisp-mode
                              clojure-mode
                              lisp-mode))

(define-key lisp-mode-shared-map (kbd "C-c l") "lambda")

(defface paren-face
   '((((class color) (background dark))
      (:foreground "grey20"))
     (((class color) (background light))
      (:foreground "grey55")))
   "Face used to dim parentheses."
   :group 'starter-kit-faces)

(provide 'moriarity-lisp)