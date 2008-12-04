(autoload 'tabbar-mode "tabbar" "Enable/disable the tabbar" t)

;;; Configure the fonts for tabbar
(eval-after-load "tabbar"
  '(progn
     (set-face-attribute 'tabbar-default-face
                         nil :background "gray60")
     (set-face-attribute 'tabbar-unselected-face nil
                         :background "gray85"
                         :foreground "gray30"
                         :box nil)
     (set-face-attribute 'tabbar-selected-face nil
                         :background "#f2f2f6"
                         :foreground "black"
                         :box nil)
     (set-face-attribute 'tabbar-button-face nil
                         :box '(:line-width 1
                                :color "gray72"
                                :style released-button))
     (set-face-attribute 'tabbar-separator-face nil
                         :height 0.8)
     ;; These are the same shortcuts as Safari
     (define-key global-map (kbd "M-}") 'tabbar-forward)
     (define-key global-map (kbd "M-{") 'tabbar-backward)))

;;; Turn on tabbar always
(tabbar-mode 1)

;;; Don't show the special *...* buffers in the tabbar
(setq tabbar-buffer-groups-function
      (lambda (b) (list "All Buffers")))
(setq tabbar-buffer-list-function
      (lambda ()
        (remove-if (lambda (buffer)
                     (find (aref (buffer-name buffer) 0) " *"))
                   (buffer-list))))

(provide 'moriarity-tabbar)