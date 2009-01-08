;;; Tweaks specific to GUI emacs.
(when window-system
  (mouse-wheel-mode t)
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))