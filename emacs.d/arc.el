(autoload 'arc-mode "arc" "Arc mode" t)
(autoload 'run-arc "inferior-arc" "Inferior Arc mode" t)

(add-to-list 'auto-mode-alist '("\\.arc$" . arc-mode))

(setq arc-program-name "~/usr/src/arc-wiki/arc.sh --no-rl")

(provide 'moriarity-arc)
