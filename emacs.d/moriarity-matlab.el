(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))

;(setenv "DISPLAY" ":0.0")
(setq matlab-indent-function t)
(setq matlab-shell-command "/Applications/MATLAB_R2008bSV.app/bin/matlab")
(setq matlab-shell-command-switches '("-nosplash" "-nodesktop"))

(provide 'moriarity-matlab)