(require-package 'auto-indent-mode)
;(setq auto-indent-on-visit-file t)
;(setq auto-indent-key-for-end-of-line-then-newline "<M-return>")
;(setq auto-indent-key-for-end-of-line-insert-char-then-newline "<M-S-return>")
(require 'auto-indent-mode)
;(auto-indent-global-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq ruby-indent-level 2)
(setq css-indent-offset 2)
(setq coffee-tab-width 2)
(setq js-indent-level 2)
(setq web-mode-indent-level 2)
(setq elixir-mode-indent-level 2)

(add-hook 'ruby-mode-hook
  (function (lambda ()
    (setq evil-shift-width ruby-indent-level))))

(add-hook 'css-mode-hook
  (function (lambda ()
    (setq evil-shift-width css-indent-offset))))

(add-hook 'coffee-mode-hook
  (function (lambda ()
    (setq evil-shift-width coffee-tab-width))))

(add-hook 'haml-mode-hook
  (function (lambda ()
    (setq evil-shift-width haml-mode-indent-level))))

(add-hook 'web-mode-hook
  (function (lambda ()
    (setq evil-shift-width web-mode-indent-level))))

(add-hook 'haml-mode-hook
          '(lambda ()
             (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'js2-mode-hook
  (function (lambda ()
    (setq evil-shift-width js-indent-level))))

(add-hook 'elixir-mode-hook
  (function (lambda ()
    (setq evil-shift-width elixir-mode-indent-level))))

(provide 'init-indent)
