(require-package 'magit)

(setq magit-diff-options '("--histogram"))
(setq magit-stage-all-confirm nil)

(after 'magit
  (defadvice magit-status (around my-magit-fullscreen activate)
    (window-configuration-to-register :magit-fullscreen)
    ad-do-it
    (delete-other-windows)))

(defun my-magit-quit-session ()
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))


(require-package 'gist)


(if (display-graphic-p)
  (require-package 'git-gutter+)
  (require-package 'git-gutter+))

(global-git-gutter+-mode)

(provide 'init-git)
