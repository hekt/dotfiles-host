(prefer-coding-system 'utf-8)

(global-hl-line-mode t)
(delete-selection-mode t)
(show-paren-mode t)
(auto-insert-mode)

;; hide a password on shell-mode
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

(defadvice kill-line (before kill-line-and-fixup activate)
  "Remove indent when do kill-line at the last of line.
http://dev.ariel-networks.com/wp/documents/aritcles/emacs/part16"
  (when (and (not (bolp)) (eolp))
    (forward-char)
    (fixup-whitespace)
    (backward-char)))
