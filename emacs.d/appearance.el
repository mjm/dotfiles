(require 'color-theme)
(color-theme-initialize)
(color-theme-subtle-hacker)

(set-terminal-coding-system 'iso-8859-1)
(set-face-attribute 'default nil
                    :family "consolas" :height 130)
(message "the value of default-frame-alist is %s" default-frame-alist)
;(setq default-frame-alist '(;(width . 168)
                            ;(height . 56)
                            ;(top . 0)
                            ;(left . 0)
;                            (tool-bar-line . 0)
;                            (cursor-type . bar)))