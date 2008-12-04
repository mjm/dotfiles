(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))

(provide 'moriarity-auctex)