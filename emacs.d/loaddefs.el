;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (clojure-mode) "clojure-mode" "../usr/share/elpa-alt/clojure-mode.el"
;;;;;;  (18745 45977))
;;; Generated autoloads from ../usr/share/elpa-alt/clojure-mode.el

(autoload (quote clojure-mode) "clojure-mode" "\
Major mode for editing Clojure code - similar to Lisp mode..
Commands:
Delete converts tabs to spaces as it moves back.
Blank lines separate paragraphs.  Semicolons start comments.
\\{clojure-mode-map}
Note that `run-lisp' may be used either to start an inferior Lisp job
or to switch back to an existing one.

Entry to this mode calls the value of `clojure-mode-hook'
if that value is non-nil.

\(fn)" t nil)

;;;***

;;;### (autoloads (magit-status) "magit" "../usr/share/elpa-alt/magit.el"
;;;;;;  (18745 46979))
;;; Generated autoloads from ../usr/share/elpa-alt/magit.el

(autoload (quote magit-status) "magit" "\
Not documented

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (matlab-shell matlab-mode) "matlab" "../usr/share/elpa-alt/matlab.el"
;;;;;;  (18745 44593))
;;; Generated autoloads from ../usr/share/elpa-alt/matlab.el

(autoload (quote matlab-mode) "matlab" "\
MATLAB-mode is a major mode for editing MATLAB dot-m files.
\\<matlab-mode-map>
Convenient editing commands are:
 \\[matlab-comment-region]   - Comment/Uncomment out a region of code.
 \\[matlab-fill-comment-line] - Fill the current comment line.
 \\[matlab-fill-region] - Fill code and comments in region.
 \\[matlab-fill-paragraph]     - Refill the current command or comment.
 \\[matlab-complete-symbol]   - Symbol completion of matlab symbolsbased on the local syntax.

Convenient navigation commands are:
 \\[matlab-beginning-of-command]   - Move to the beginning of a command.
 \\[matlab-end-of-command]   - Move to the end of a command.
 \\[matlab-beginning-of-defun] - Move to the beginning of a function.
 \\[matlab-end-of-defun] - Move do the end of a function.
 \\[matlab-forward-sexp] - Move forward over a syntactic block of code.
 \\[matlab-backward-sexp] - Move backwards over a syntactic block of code.

Convenient template insertion commands:
 \\[tempo-template-matlab-function] - Insert a function definition.
 \\[tempo-template-matlab-if] - Insert an IF END block.
 \\[tempo-template-matlab-for] - Insert a FOR END block.
 \\[tempo-template-matlab-switch] - Insert a SWITCH END statement.
 \\[matlab-insert-next-case] - Insert the next CASE condition in a SWITCH.
 \\[matlab-insert-end-block] - Insert a matched END statement.  With optional ARG, reindent.
 \\[matlab-stringify-region] - Convert plaintext in region to a string with correctly quoted chars.

Variables:
  `matlab-indent-level'		Level to indent blocks.
  `matlab-cont-level'		Level to indent continuation lines.
  `matlab-cont-requires-ellipsis' Does your MATLAB support implied elipsis.
  `matlab-case-level'		Level to unindent case statements.
  `matlab-indent-past-arg1-functions'
                                Regexp of functions to indent past the first
                                  argument on continuation lines.
  `matlab-maximum-indents'      List of maximum indents during lineups.
  `matlab-comment-column'       Goal column for on-line comments.
  `fill-column'			Column used in auto-fill.
  `matlab-indent-function'	If non-nil, indents body of MATLAB functions.
  `matlab-return-function'	Customize RET handling with this function
  `matlab-auto-fill'            Non-nil, do auto-fill at startup
  `matlab-fill-code'            Non-nil, auto-fill code.
  `matlab-fill-strings'         Non-nil, auto-fill strings.
  `matlab-verify-on-save-flag'  Non-nil, enable code checks on save
  `matlab-highlight-block-match-flag'
                                Enable matching block begin/end keywords
  `matlab-vers-on-startup'	If t, show version on start-up.
  `matlab-handle-simulink'      If t, enable simulink keyword highlighting.

All Key Bindings:
\\{matlab-mode-map}

\(fn)" t nil)

(autoload (quote matlab-shell) "matlab" "\
Create a buffer with MATLAB running as a subprocess.

MATLAB shell cannot work on the MS Windows platform because MATLAB is not
a console application.

\(fn)" t nil)

;;;***

;;;### (autoloads (paredit-mode) "paredit" "../usr/share/elpa-alt/paredit.el"
;;;;;;  (18753 11904))
;;; Generated autoloads from ../usr/share/elpa-alt/paredit.el

(autoload (quote paredit-mode) "paredit" "\
Minor mode for pseudo-structurally editing Lisp code.
\\<paredit-mode-map>

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (twitter-status-edit twitter-get-friends-timeline)
;;;;;;  "twitter" "../usr/share/elpa-alt/twitter.el" (18747 8086))
;;; Generated autoloads from ../usr/share/elpa-alt/twitter.el

(autoload (quote twitter-get-friends-timeline) "twitter" "\
Fetch and display the friends timeline.
The results are formatted and displayed in a buffer called
*Twitter friends timeline*

\(fn)" t nil)

(autoload (quote twitter-status-edit) "twitter" "\
Edit your twitter status in a new buffer.
A new buffer is popped up in a special edit mode. Press
\\[twitter-status-post] when you are finished editing to send the
message.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-zenburn) "zenburn" "../usr/share/elpa-alt/zenburn.el"
;;;;;;  (18744 10345))
;;; Generated autoloads from ../usr/share/elpa-alt/zenburn.el

(autoload (quote color-theme-zenburn) "zenburn" "\
Just some alien fruit salad to keep you in the zone.

\(fn)" t nil)

(defalias (quote zenburn) (function color-theme-zenburn))

;;;***

;;;### (autoloads nil nil ("../usr/share/elpa-alt/blogmax.el" "../usr/share/elpa-alt/clojure-auto.el"
;;;;;;  "../usr/share/elpa-alt/clojure-paredit.el" "../usr/share/elpa-alt/markdown-mode.el"
;;;;;;  "moriarity-appearance.el" "moriarity-arc.el" "moriarity-auctex.el"
;;;;;;  "moriarity-blogmax.el" "moriarity-clojure.el" "moriarity-desktop.el"
;;;;;;  "moriarity-ecb.el" "moriarity-erc.el" "moriarity-eshell.el"
;;;;;;  "moriarity-haskell.el" "moriarity-js2.el" "moriarity-lisp.el"
;;;;;;  "moriarity-magit.el" "moriarity-markdown.el" "moriarity-matlab.el"
;;;;;;  "moriarity-ocaml.el" "moriarity-paredit.el" "moriarity-psgml.el"
;;;;;;  "moriarity-rails.el" "moriarity-ruby.el" "moriarity-sage.el"
;;;;;;  "moriarity-scala.el" "moriarity-tabbar.el" "moriarity-w3m.el")
;;;;;;  (18753 11911 911880))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; loaddefs.el ends here
