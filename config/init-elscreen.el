(require-package 'elscreen)
;; (require 'elscreen)

(setq elscreen-color-theme-override-theme t)

(require 'elscreen-color-theme)

(elscreen-start)

(global-set-key (kbd "<f3>") 'elscreen-create)
(global-set-key (kbd "<f4>") 'elscreen-kill)

(if (eq system-type 'darwin)
  (progn
    (global-set-key (kbd "s-{") 'elscreen-previous)
    (global-set-key (kbd "s-}") 'elscreen-next))
  (progn
    (global-set-key (kbd "C-{") 'elscreen-previous)
    (global-set-key (kbd "C-}") 'elscreen-next)))

(provide 'init-elscreen)
