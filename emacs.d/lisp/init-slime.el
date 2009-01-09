;;; Set the load path for slime, which is maintained through clbuild
(setq clbuild-dir (expand-file-name "~/lisp/clbuild/"))
(add-to-list 'load-path (concat clbuild-dir "source/slime"))
(add-to-list 'load-path (concat clbuild-dir "source/slime/contrib"))

(require 'slime-autoloads)

(eval-after-load "slime"
  '(progn
     (setq slime-complete-symbol*-fancy t
           slime-complete-symbol-function 'slime-fuzzy-complete-symbol
           slime-when-complete-filename-expand t
           slime-truncate-lines nil
           slime-autodoc-use-multiline-p t)
     
     (add-to-list 'slime-lisp-implementations
		  '(sbcl ("sbcl")))
     
     (slime-setup '(slime-fancy slime-asdf))

     (global-set-key (kbd "C-c s") 'slime-selector)))

(add-hook 'lisp-mode-hook
          (lambda ()
            (cond ((not (featurep 'slime))
                   (require 'slime)
                   (normal-mode)))))