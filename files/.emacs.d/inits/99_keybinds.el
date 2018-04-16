(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c M-r") 'replace-regexp)
(global-set-key (kbd "M-g") 'fill-region-with-fold-by-comma)
(global-set-key (kbd "<backtab>") 'un-indent-by-removing-2-spaces)
(global-set-key (kbd "C-m") 'newline-and-indent)

;; bind C-h as delete-backward-char in mini buffer
(define-key key-translation-map [?\C-h] [?\C-?])

;; auto complete ( { [ "
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(setq skeleton-pair 1)

;; compile
(global-set-key (kbd "C-c c") 'compile)

;; C-o as open-line-and-indent
;; http://ochiailab.blogspot.jp/2014/04/emacsc-o.html
(defun my/open-line-and-indent ()
  "Open a line and indent the next line."
  (interactive)
  (save-excursion
    (newline)
    (indent-for-tab-command)))
(global-set-key (kbd "C-o") 'my/open-line-and-indent)

;; osx
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta))
