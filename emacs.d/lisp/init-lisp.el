;;; Autoload paredit-mode
(autoload 'paredit-mode "paredit" "" t)

;;; Add the hooks for Lisp
(dolist (hook '(emacs-lisp-mode-hook
                lisp-mode-hook
                clojure-mode-hook))
  (add-hook hook 'mjm-coding-hook)
  (add-hook hook (lambda () (paredit-mode +1)))
  (add-hook hook 'pretty-lambdas))

;;; Dim parentheses to emphasize the code
(defface paren-face
  '((((class color) (background dark))
     (:foreground "#888888"))
    (((class color) (background light))
     (:foreground "#666666")))
  "Face used to dim parentheses."
  :group 'starter-kit-faces)
(dolist (mode '(emacs-lisp-mode
                lisp-mode
                clojure-mode))
  (font-lock-add-keywords mode '(("(\\|)" . 'paren-face))))

;;; Add a shortcut for inserting lambdas
(define-key lisp-mode-shared-map (kbd "C-c l") "lambda")
