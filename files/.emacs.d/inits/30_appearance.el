;; appearance

;; linum
(global-linum-mode t)
(setq linum-format "%3d ")

;; paren-mode
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; display tab/space
;; http://d.hatena.ne.jp/syohex/20110119/1295450495
(require 'whitespace)
(setq whitespace-style '(face tabs tab-mark spaces space-mark))
(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\xBB ?\t] [?\\ ?\t])))
(setq whitespace-space-regexp "\\(\u3000+\\)")
(global-whitespace-mode 1)

;; modeline
(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let* ((available-width (- (window-total-width) (length left) 1)))
    (format (format "%%s %%%ds" available-width) left right)))

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

(make-face 'mode-line-buffer-name-face)
(set-face-attribute 'mode-line-buffer-name-face nil :foreground nil)
(make-face 'mode-line-read-only-face)
(set-face-attribute 'mode-line-read-only-face nil :foreground "red")
(make-face 'mode-line-modified-face)
(set-face-attribute 'mode-line-modified-face nil :foreground "blue")

(defun tne-theme()
  (interactive)
  (load-theme 'my-tomorrow-night-eighties t)
  (call-process-shell-command "tmux source-file ~/.tmux/tomorrow-night-eighties.conf"))
(tne-theme)
