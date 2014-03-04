(package-install 'elscreen)
;; (require 'elscreen)

(setq elscreen-color-theme-override-theme t)

(require 'elscreen-color-theme)

(elscreen-start)

(global-set-key (kbd "<f3>") 'elscreen-create)
(global-set-key (kbd "<f4>") 'elscreen-kill)

(global-set-key (kbd "M-S-[") 'elscreen-previous)
(global-set-key (kbd "M-S-]") 'elscreen-next)

(provide 'init-elscreen)
