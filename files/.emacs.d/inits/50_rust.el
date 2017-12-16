;; typescript-mode
(defun rust-mode-hooks ()
  "rust-mode-hook"
  (auto-complete-mode t))
(add-hook 'rust-mode-hook 'rust-mode-hooks)
