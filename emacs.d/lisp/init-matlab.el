(autoload 'matlab-mode "matlab" "" t)
(autoload 'matlab-shell "matlab" "" t)

(eval-after-load "matlab"
  '(progn
     (setq matlab-indent-function t)
     (setq matlab-shell-command "/Applications/MATLAB_R2008bSV.app/bin/matlab")
     (setq matlab-shell-command-switches '("-nosplash" "-nodesktop"))))