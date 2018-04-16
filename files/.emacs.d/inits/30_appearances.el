;; modeline
(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let* ((available-width (- (window-total-width) (length left) 1)))
    (format (format "%%s %%%ds" available-width) left right)))

(make-face 'mode-line-buffer-name-face)
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(setq-default mode-line-format nil)
(setq-default
 header-line-format
 '((:eval (simple-mode-line-render
           (concat
            (cond (buffer-read-only
                   (propertize " # " 'face 'mode-line-read-only-face))
                  ((buffer-modified-p)
                   (propertize " * " 'face 'mode-line-modified-face))
                  (t " - "))
            (propertize (format-mode-line " %b | %m") 'face 'mode-line-buffer-name-face))
           (format-mode-line
            (concat
             "%c, %l/"
             (int-to-string (count-lines (point-min) (point-max)))
             " | "
             (format-time-string "%a %H:%M ")))))))

;; theme
(load-theme 'my-tomorrow-night-eighties t)
(call-process-shell-command "tmux source-file ~/.tmux/tomorrow-night-eighties.conf"))
