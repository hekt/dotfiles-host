(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c M-r") 'replace-regexp)
(global-set-key (kbd "C-m") 'newline-and-indent)
(global-set-key (kbd "C-x [") 'beginning-of-buffer)
(global-set-key (kbd "C-x ]") 'end-of-buffer)

;; bind C-h as delete-backward-char in mini buffer
(define-key key-translation-map [?\C-h] [?\C-?])

;; auto complete ( { [ "
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)

;; osx
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta))
