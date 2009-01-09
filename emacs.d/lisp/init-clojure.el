;;; Clojure is different enough from other lisps to warrant its own
;;; initialization file
;;;
;;; Some of this is taken from Bill Clementson:
;;; http://bc.tech.coop/blog/081205.html
(setq clj-root (expand-file-name "~/lisp/clj/"))
(add-to-list 'load-path (concat clj-root "clojure-mode"))
(add-to-list 'load-path (concat clj-root "swank-clojure"))

(require 'swank-clojure-autoload)
(swank-clojure-config
 (setq swank-clojure-binary "clj-cmd")
 (setenv "CLJ_CMD"
	 (concat "java "
		 "-server "
		 "-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8888 "
		 "-cp "
		 (concat clj-root "clojure/clojure.jar:")
		 (concat clj-root "src/*:")
		 (concat (expand-file-name "~/.clojure:"))
		 (concat clj-root "clojure-contrib/clojure-contrib.jar:")
		 " clojure.lang.Repl")))