(prefer-coding-system 'utf-8)

(global-hl-line-mode t)
(global-display-line-numbers-mode t)
(delete-selection-mode t)
(show-paren-mode t)
(auto-insert-mode)
(setq skeleton-pair t)

;; hide a password on shell-mode
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)
