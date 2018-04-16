(menu-bar-mode -1)
(global-hl-line-mode t)
(column-number-mode t)
(delete-selection-mode t)
(prefer-coding-system 'utf-8)
(auto-insert-mode)
(setq-default tab-width 4 indent-tabs-mode nil)
(setq-default fill-column 72)

;; show-paren-mode
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; hide a password on shell-mode
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)
