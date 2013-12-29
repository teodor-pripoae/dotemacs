(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;(setq molokai-theme-kit t)
(load-theme 'molokai t)

(set-face-attribute 'default nil :height 140)

(require 'cl)

(require 'init-packages)
(require 'init-util)
(require 'init-core)
(require 'init-org)
(require 'init-eyecandy)

(require 'init-editor)
;; (require 'init-smartparens)
(require 'init-autopair)

(require 'init-yasnippet)
(require 'init-auto-complete)
;; (require 'init-company)

(require 'init-projectile)
(require 'init-helm)
(require 'init-ido)

(require 'init-git)
(require 'init-flycheck)

(require 'init-vim)
(require 'init-stylus)
(require 'init-js)
(require 'init-web)
(require 'init-lisp)
(require 'init-markdown)

(require 'init-evil)
(require 'init-misc)
(require 'init-bindings)

(require 'init-textmate)
(require 'init-ag)
(require 'init-ruby)
(require 'init-frame)
(require 'init-indent)
(require 'init-multiple-cursors)
(require 'init-powerline)
;(require 'init-tabbar)

(setq ring-bell-function (lambda nil (message "")))
(setq visible-bell t)
