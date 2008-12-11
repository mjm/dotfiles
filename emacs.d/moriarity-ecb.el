(add-to-list 'load-path "/opt/ecb")
(load "/opt/cedet/common/cedet.el")

(require 'ecb-autoloads)

(semantic-load-enable-code-helpers)

(provide 'moriarity-ecb)