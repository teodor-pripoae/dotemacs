(require-package 'ag)
(require 'ag)
(setq ag-highlight-search t)
(add-hook 'ag-mode-hook (lambda () (toggle-truncate-lines t)))


(require-package 'project-explorer)
(require 'project-explorer)
(setq pe/omit-regex (concat pe/omit-regex "\\|^node_modules$"))
(global-set-key (kbd "C-x C-,") 'project-explorer-open)


(require 'project-root)

(setq project-roots
    `(("Ruby project"
       :root-contains-files ("Rakefile"))))


(require-package 'ace-jump-mode)
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


(require-package 'expand-region)
(require 'expand-region)


(require-package 'editorconfig)
(require 'editorconfig)


(require-package 'etags-select)
(require 'etags-select)
(setq etags-select-go-if-unambiguous t)


(require-package 'windsize)
(require 'windsize)
(setq windsize-cols 16)
(setq windsize-rows 8)
(windsize-default-keybindings)


(require-package 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

(global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "C-x C-z"))

(require-package 'ws-trim)
(require 'ws-trim)
(global-ws-trim-mode t)
(set-default 'ws-trim-level 2)
(setq ws-trim-global-modes '(guess (not message-mode eshell-mode)))

(setq scroll-margin 4)

(defun touch ()
     "updates mtime on the file for the current buffer"
     (interactive)
     (shell-command (concat "touch " (shell-quote-argument (buffer-file-name))))
     (clear-visited-file-modtime))

(provide 'init-misc)
