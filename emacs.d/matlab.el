(autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

;(setenv "DISPLAY" ":0.0")
(setq matlab-indent-function t)
(setq matlab-shell-command "/Applications/Matlab/bin/matlab")
(setq matlab-shell-command-switches '("-nosplash" "-nodesktop"))

(provide 'moriarity-matlab)