(setq helm-command-prefix-key "C-c h")
(setq helm-quick-update t)

(require-package 'helm)
(require-package 'helm-swoop)
(require-package 'helm-rails)
(require-package 'helm-rb)
(require-package 'helm-themes)

(after 'projectile
  (require-package 'helm-projectile))

(require 'helm-config)
(require 'helm-swoop)
(require 'helm-rails)
(require 'helm-rb)
(require 'helm-themes)

(global-set-key (kbd "C-c h") 'helm-mini)

(provide 'init-helm)
