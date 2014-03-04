(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(set-face-attribute 'default nil :height 140)

(add-to-list 'default-frame-alist '(font . "Menlo-16"))

(require 'cl)

(require 'init-packages)

(require-package 'color-theme-solarized)
(require-package 'color-theme-twilight)
;(color-theme-twilight)
(load-theme 'molokai t)
;(load-file "~/.emacs.d/themes/color-theme-idle-fingers.el")
;(color-theme-idle-fingers)
;; (load-theme 'solarized-light t)

(require 'init-util)
(require 'init-core)
(require 'init-org)
(require 'init-eyecandy)

(require 'init-editor)
(require 'init-smartparens)
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
(require 'init-css-mode)
(require 'init-yaml-mode)
(require 'init-docker-mode)
(require 'init-tramp)
(require 'init-clojure)
(require 'init-go-mode)
(require 'init-erlang)
(require 'init-python)
(require 'init-refactoring)
(require 'init-imenu)
(require 'init-hn)
(require 'init-elscreen)

(setq ring-bell-function (lambda nil (message "")))
(setq visible-bell t)

(defun seeing-is-believing ()
  "Replace the current region (or the whole buffer, if none) with the output
of seeing_is_believing."
  (interactive)
  (let ((beg (if (region-active-p) (region-beginning) (point-min)))
        (end (if (region-active-p) (region-end) (point-max))))
    (shell-command-on-region beg end "seeing_is_believing" nil 'replace)))
