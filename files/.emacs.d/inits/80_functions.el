(defun rebuf ()
  "`revert-buffer` with no confirmation"
  (interactive)
  (revert-buffer t t))
