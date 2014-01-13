(require-package 'css-mode)
(require 'css-mode)

(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(provide 'init-css-mode)
