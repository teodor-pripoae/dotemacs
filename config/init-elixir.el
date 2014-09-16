(require-package 'elixir-mode)
(require 'elixir-mode)

(require-package 'elixir-mix)
;(require 'elixir-mix)

(add-to-list 'auto-mode-alist '("\\.ex$" . elixir-mode))
(add-to-list 'auto-mode-alist '("\\.exs$" . elixir-mode))

(provide 'init-elixir)
