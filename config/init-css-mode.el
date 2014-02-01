(require-package 'css-mode)
(require 'css-mode)

(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-hook 'css-mode-hook 'auto-indent-mode)

(provide 'init-css-mode)
