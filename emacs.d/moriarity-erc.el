(add-to-list 'load-path "/Users/mattmoriarity/usr/share/emacs/erc")
(require 'erc)

(setq erc-autojoin-channels-alist
      '(("freenode.net" "#emacs" "#clojure")))

(erc :server "irc.freenode.net" :nick "cooldude127")

(provide 'moriarity-erc)