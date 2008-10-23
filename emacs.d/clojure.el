(add-to-list 'load-path "/Users/mattmoriarity/usr/src/swank-clojure")
(add-to-list 'load-path "/Users/mattmoriarity/usr/src/clojure-mode")

(require 'swank-clojure-autoload)
(setq swank-clojure-binary "/Users/mattmoriarity/usr/src/clojure-extra/sh-script/clojure")
;(setq swank-clojure-jar-path "/Users/mattmoriarity/usr/src/clojure/clojure.jar")

(require 'clojure-auto)
(require 'clojure-paredit)