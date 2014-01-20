(require-package 'yaml-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'yaml-mode-hook (lambda () (electric-indent-local-mode -1)))

(provide 'init-yaml-mode)
