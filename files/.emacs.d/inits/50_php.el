;; auto-insert-mode
(define-auto-insert "\\.php$" "template.php")

(use-package php-mode
  :defer t
  :mode
  (("\\.php$" . php-mode))
  :bind
  (:map php-mode-map
        ("C-c n" . 'my/php-ns-replace)
        ("C-c j" . 'lsp-ui-peek-find-definitions)
        ;; global の設定が上書きされる
        ("(" . 'skeleton-pair-insert-maybe)
        ("{" . 'skeleton-pair-insert-maybe))
  :init
  (add-hook 'php-mode-hook 'my/php-mode-hook)
  (add-hook 'php-mode-hook 'php-enable-psr2-coding-style)
  )

(defun my/php-mode-hook ()
  (setq tab-width 4)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  )

(defun my/php-ns-replace ()
  "replace slash sparated lower camel case to back slash separated upper camel case on current line after first space character"
  (interactive)
  (save-excursion
    (save-restriction
      (goto-char (line-beginning-position))
      (let ((start (re-search-forward " " nil t))
            (end (line-end-position)))
        (upcase-initials-region start end)
        (narrow-to-region start end)
        (while (re-search-forward "/" nil t)
          (replace-match "\\\\"))))))
