(require-package 'tabbar)
(require 'tabbar)
(tabbar-mode)

(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)

(provide 'init-tabbar)
