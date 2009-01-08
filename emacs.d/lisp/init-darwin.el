(when (eq system-type 'darwin)
  ;;; We need to fix the path
  (setenv "PATH"
	  (concat "/opt/local/bin:"
		  "/opt/local/sbin:"
		  "/usr/local/bin:"
		  "/usr/local/sbin:"
		  (expand-file-name "~/bin:")
		  (getenv "PATH")))
  ;;; Emacs has it's own PATH too
  (setq exec-path
	(append `("/opt/local/bin"
		  "/opt/local/sbin"
		  "/usr/local/bin"
		  "/usr/local/sbin"
		  ,(expand-file-name "~/bin"))
		exec-path)))