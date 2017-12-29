(menu-bar-mode -1)
(global-hl-line-mode t)
(column-number-mode t)
(delete-selection-mode t)
(prefer-coding-system 'utf-8)
(setq-default tab-width 4 indent-tabs-mode nil)
(setq-default fill-column 72)

;; hide a password
(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)

;; autoinsert
(auto-insert-mode)
(define-auto-insert "\\.php$" "template.php")
