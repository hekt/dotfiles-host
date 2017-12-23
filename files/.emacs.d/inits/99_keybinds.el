(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c M-r") 'replace-regexp)
(global-set-key (kbd "M-g") 'fill-region-with-fold-by-comma)
(global-set-key (kbd "<backtab>") 'un-indent-by-removing-2-spaces)
(global-set-key (kbd "C-m") 'newline-and-indent)

;; auto complete ( { [ "
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(setq skeleton-pair 1)

;; compile
(global-set-key (kbd "C-c c") 'compile)

;; multiple-cursors
(define-key global-map (kbd "C-M-m") 'mc/mark-all-in-region)

;; auto-complete
(define-key ac-menu-map (kbd "C-n") 'ac-next)
(define-key ac-menu-map (kbd "C-p") 'ac-previous)

;; helm
(define-key global-map (kbd "C-c a") 'helm-mini)
(define-key global-map (kbd "C-c C-f") 'helm-find-files)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)

;; swoop
(define-key global-map (kbd "C-c s") 'swoop)

;; yasnippet
(define-key yas-minor-mode-map (kbd "C-]") 'yas-next-field)

;; osx-clipboard
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (require 'osx-clipboard) ;; elpa のものとは別
  (define-key global-map (kbd "C-c M-v") 'osx-pbpaste)
  (define-key global-map (kbd "C-c M-c") 'osx-pbcopy)
  (define-key global-map (kbd "C-c M-x") 'osx-pbcut))

;; C-o as open-line-and-indent
;; http://ochiailab.blogspot.jp/2014/04/emacsc-o.html
(defun open-line-and-indent ()
  "Open a line and indent the next line."
  (interactive)
  (save-excursion
    (newline)
    (indent-for-tab-command)))
(global-set-key (kbd "C-o") 'open-line-and-indent)
