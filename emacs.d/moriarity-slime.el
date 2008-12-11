(setq slime-path "~/usr/src/clbuild/source/slime")
(add-to-list 'load-path slime-path)
(add-to-list 'load-path (concat slime-path "/contrib"))

(setq slime-lisp-implementations
      '((sbcl ("/Users/mattmoriarity/usr/src/clbuild/clbuild"
               "--implementation" "sbcl" "preloaded"))
        (openmcl ("/opt/ccl/scripts/openmcl64"))
        (allegro ("/Applications/AllegroCL/alisp"))))
(require 'slime-autoloads)
(add-hook 'lisp-mode-hook (lambda ()
                            (cond ((not (featurep 'slime))
                                   (require 'slime)
                                   (normal-mode)))))
(eval-after-load "slime"
  '(progn
     (slime-setup '(slime-fancy slime-tramp slime-asdf slime-banner))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-edit-definition-fallback-function 'find-tag)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
     (setq slime-use-autodoc-mode nil)
     (global-set-key "\C-cs" 'slime-selector)))
(setq slime-backend "/Users/mattmoriarity/usr/src/clbuild/.swank-loader.lisp")

(provide 'moriarity-slime)