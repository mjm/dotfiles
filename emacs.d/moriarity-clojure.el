(add-to-list 'load-path "~/usr/src/swank-clojure")

(require 'swank-clojure-autoload)
(swank-clojure-config
 (setq swank-clojure-binary "~/usr/bin/clojure"))

(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

(require 'clojure-paredit)

(provide 'moriarity-clojure)