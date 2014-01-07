(require-package 'projectile)
(setq projectile-cache-file (concat user-emacs-directory ".cache/projectile.cache"))
(setq projectile-known-projects-file (concat user-emacs-directory ".cache/projectile-bookmarks.eld"))
(require 'projectile)

(add-to-list 'projectile-globally-ignored-directories "elpa")
(add-to-list 'projectile-globally-ignored-directories ".cache")
(add-to-list 'projectile-globally-ignored-directories "node_modules")

(require-package 'grizzl)
(require 'grizzl)
(projectile-global-mode t)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "C-c C-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "C-c C-b") 'projectile-switch-to-buffer)

(provide 'init-projectile)
