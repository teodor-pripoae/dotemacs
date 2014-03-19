(setq load-path (cons (expand-file-name "~/.emacs.d/elisp/erlang-mode/") load-path))
(setq load-path (cons (expand-file-name "~/.emacs.d/elisp/distel/elisp") load-path))

(require 'erlang-start)
(require 'distel)

(add-hook 'erlang-mode-hook 'auto-indent-mode)

(provide 'init-erlang)
