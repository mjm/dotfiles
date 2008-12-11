(eval-after-load 'ruby-mode
  '(progn
     (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key ruby-mode-map [(control c) (l)] "lambda")))

(add-to-list 'completion-ignored-extensions ".rbc")

(add-hook 'ruby-mode-hook 'my-coding-hook)

(provide 'moriarity-ruby)