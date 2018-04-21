;; modeline
(make-face 'my/mode-line-buffer-name-face)
(make-face 'my/mode-line-read-only-face)
(make-face 'my/mode-line-modified-face)
(defvar my/buffer-read-only-mark (propertize "#" 'face 'my/mode-line-read-only-face))
(defvar my/buffer-modified-mark (propertize "*" 'face 'my/mode-line-modified-face))
(defvar my/buffer-default-mark "-")

(defun my/simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let ((available-width (- (window-total-width) (length left) 1)))
    (format (format "%%s %%%ds" available-width) left right)))

(defun my/render-mode-line ()
  (let ((buffer-mark
          (cond (buffer-read-only my/buffer-read-only-mark)
                ((buffer-modified-p) my/buffer-modified-mark)
                (t my/buffer-default-mark)))
        (buffer-name
         (propertize (format-mode-line "%b | %m") 'face 'my/mode-line-buffer-name-face))
        (char-counts (format-mode-line "%c, %l"))
        (max-lines (count-lines (point-min) (point-max)))
        (time (format-time-string "%a %H:%M")))
    (my/simple-mode-line-render
     (format " %s  %s" buffer-mark buffer-name)
     (format "%s/%d | %s " char-counts max-lines time))))

(setq-default mode-line-format nil)
(setq-default header-line-format '((:eval (my/render-mode-line))))

;; theme
(load-theme 'my-tomorrow-night-eighties t)
(call-process-shell-command "tmux source-file ~/.tmux/tomorrow-night-eighties.conf")
