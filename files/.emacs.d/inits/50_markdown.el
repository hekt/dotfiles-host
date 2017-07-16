;; markdown-mode
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(defun markdown-mode-hooks ()
  (setq markdown-command "mdown"))
(add-hook 'markdown-mode-hook 'markdown-mode-hooks)
