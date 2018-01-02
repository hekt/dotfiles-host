(defun php-ns-replace ()
  "replace slash sparated lower camel case to back slash separated upper camel case on current line after space"
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

(use-package php-mode
  :mode
  (("\\.php$" . php-mode))
  :bind
  (:map php-mode-map
   ("(" . 'skeleton-pair-insert-maybe)
   ("{" . 'skeleton-pair-insert-maybe)
   ("C-c n" . 'php-ns-replace))
  :init
  (add-hook 'php-mode-hook (lambda () (setq tab-width 4 c-basic-offset 4 indent-tabs-mode t)))
  ;; flycheck
  ;; (add-hook 'php-mode-hook 'flycheck-mode)
  )
