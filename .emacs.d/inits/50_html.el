;; html-mode
(font-lock-add-keywords 'html-mode
 '(("%=" . font-lock-keyword-face)
   ("%" . font-lock-keyword-face)
   ("?php" . font-lock-keyword-face)
   ("?" . font-lock-keyword-face)))

(defun html-mode-hooks ()
  (define-key html-mode-map (kbd "<") 'skeleton-pair-insert-maybe))
(add-hook 'html-mode-hook 'html-mode-hooks)

;; yasnippet
(defun get-html-tag-name (s)
  (cond 
   ((string-match "^[a-zA-Z]+" s) (match-string 0 s))
   (t "")))
