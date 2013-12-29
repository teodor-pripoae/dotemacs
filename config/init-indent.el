(require-package 'auto-indent-mode)
(setq auto-indent-on-visit-file t)
(setq auto-indent-key-for-end-of-line-then-newline "<M-return>")
(setq auto-indent-key-for-end-of-line-insert-char-then-newline "<M-S-return>")
(require 'auto-indent-mode)
(auto-indent-global-mode)

(provide 'init-indent)
