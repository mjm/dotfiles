(require 'imenu)
(require 'cl)

(defun ido-goto-symbol ()
  "Update the imenu index and then use ido to select a symbol to navigate to."
  (interactive)
  (imenu--make-index-alist)
  (let ((name-and-pos '())
        (symbol-names '()))
    (flet ((addsymbols (symbol-list)
                       (when (listp symbol-list)
                         (dolist (symbol symbol-list)
                           (let ((name nil) (position nil))
                             (cond
                              ((and (listp symbol) (imenu--subalist-p symbol))
                               (addsymbols symbol))

                              ((listp symbol)
                               (setq name (car symbol))
                               (setq position (cdr symbol)))

                              ((stringp symbol)
                               (setq name symbol)
                               (setq position (get-text-property 1 'org-imenu-marker symbol))))

                             (unless (or (null position) (null name))
                               (add-to-list 'symbol-names name)
                               (add-to-list 'name-and-pos (cons name position))))))))
      (addsymbols imenu--index-alist))
    (let* ((selected-symbol (ido-completing-read "Symbol? " symbol-names))
           (position (cdr (assoc selected-symbol name-and-pos))))
      (goto-char position))))

(defun mjm-coding-hook ()
  "Turn on features for code buffers"
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (setq save-place t)
  (auto-fill-mode))

(defun untabify-buffer ()
  "Make tabs into spaces for the current buffer"
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  "Make sure the current buffer is properly indented"
  (interactive)
  (indent-region (point-min) (point-max)))

(defun pretty-lambdas ()
  "Make lambda show up as the lambda symbol"
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))