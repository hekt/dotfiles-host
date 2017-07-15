(defadvice kill-line (before kill-line-and-fixup activate)
  "Reove indent when do kill-line at the last of line.
http://dev.ariel-networks.com/wp/documents/aritcles/emacs/part16"
  (when (and (not (bolp)) (eolp))
    (forward-char)
    (fixup-whitespace)
    (backward-char)))
