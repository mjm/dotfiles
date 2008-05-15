(add-to-list 'load-path "/Users/mattmoriarity/usr/src/slime")

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