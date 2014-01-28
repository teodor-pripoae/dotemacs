(require-package 'rinari)
(require 'rinari)

(require-package 'rbenv)
(require 'rbenv)
(global-rbenv-mode)
;(rbenv-use-corresponding)

(require-package 'robe)
(require 'robe)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook 'auto-indent-mode)
(add-hook 'robe-mode-hook 'robe-ac-setup)

;(require-package 'enh-ruby-mode)
;(require 'enh-ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rxml$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.irbrc$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))

(require-package 'yari)
(require 'yari)

(defun ri-bind-key ()
  (local-set-key [f1] 'yari))

(add-hook 'ruby-mode-hook 'ri-bind-key)

(define-key rinari-minor-mode-map (kbd "C-c t") 'rinari-find-test)
(define-key rinari-minor-mode-map (kbd "C-c m") 'rinari-find-model)
(define-key rinari-minor-mode-map (kbd "C-c c") 'rinari-find-controller)
(define-key rinari-minor-mode-map (kbd "C-c v") 'rinari-find-view)

(setq load-path (cons (expand-file-name "~/.emacs.d/elisp/rails-reloaded") load-path))
(require 'rails-autoload)

;; Better indention for multi-line paren blocks
(setq ruby-deep-indent-paren-style nil)

(require-package 'bundler)
(require 'bundler)

(provide 'init-ruby)
