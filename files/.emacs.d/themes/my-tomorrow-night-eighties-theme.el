(deftheme my-tomorrow-night-eighties "Tomorrow Night Eighties color theme")

(custom-theme-set-faces
 'my-tomorrow-night-eighties

 '(region ((t (:background "#666666"))))
 '(hl-line ((t (:background "#515151"))))

 ;; font-lock
 '(font-lock-builtin-face ((t (:foreground "blue"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#999999" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "#999999" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "magenta"))))
 '(font-lock-doc-face ((t (:foreground "#999999" :slant italic))))
 '(font-lock-doc-string-face ((t (:foreground "#999999" :slant italic))))
 '(font-lock-function-name-face ((t (:foreground "yellow"))))
 '(font-lock-keyword-face ((t (:foreground "green"))))
 '(font-lock-keyword-face ((t (:foreground "magenta"))))
 '(font-lock-negation-char-face ((t (:foreground "red"))))
 '(font-lock-preprocessor-face ((t (:foreground "red"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "yellow"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 '(font-lock-string-face ((t (:foreground "green"))))
 '(font-lock-type-face ((t (:foreground "green"))))
 '(font-lock-variable-name-face ((t (:foreground "blue"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "red"))))

 '(header-line ((t (:foreground "#999999" :background nil))))
 '(mode-line ((t (:foreground "#393939" :background "#999999"))))
 '(mode-line-inactive ((t (:foreground "#393939" :background "#777777"))))
 '(minibuffer-prompt ((t (:foreground "blue"))))
 '(secondary-selection ((t (:background "#666666"))))
 '(linum ((t (:foreground "#666666" :background "#393939"))))
 '(escape-glyph ((t (:foreground "red"))))
 '(success ((t (:foreground "green" :weight bold))))
 '(warning ((t (:foreground "yellow" :weight bold))))
 '(highlight ((t (:background "#999999"))))
 '(fringe ((t (:foreground "#999999" :background nil))))
 '(vertical-border ((t (:foreground "#454545" :background "#454545"))))

 ;; search
 '(match ((t (:foreground "yellow" :inverse-video t))))
 '(isearch ((t (:foreground "blue" :inverse-video t))))
 '(isearch-lazy-highlight-face ((t (:foreground "cyan" :inverse-video t))))
 '(isearch-fail ((t (:inherit font-lock-warning-face :inverse-video t))))

 ;; diff
 '(diff-added ((t (:foreground "black" :background "green"))))
 '(diff-changed ((t (:foreground "black" :background "yellow"))))
 '(diff-removed ((t (:foreground "black" :background "red"))))
 '(diff-refine-added ((t (:foreground "black" :background "green"))))
 '(diff-refine-changed ((t (:foreground "black" :background "yellow"))))
 '(diff-refine-removed ((t (:foreground "black" :background "red"))))
 '(diff-file-header ((t (:foregeround "blue"))))
 '(diff-hunk-header ((t (:inherit default))))
 '(diff-header ((t (:foreground "#999999"))))
 '(diff-context ((t (:foreground "#999999"))))

 ;; dired
 '(dired-directory ((t (:foreground "blue"))))
 '(dired-marked ((t (:foreground "yellow" :weight bold))))

 ;; link
 '(link ((t (:foreground "blue" :underline t))))

 ;; js2-mode
 '(js2-function-param ((t (:foreground "blue"))))
 '(js2-external-variable ((t (:foreground "red"))))

 ;; helm
 '(helm-buffer-file ((t (:foreground "magenta"))))
 '(helm-buffer-not-saved ((t (:foreground "cyan" :weight bold))))
 '(helm-buffer-saved-out ((t (:foreground "black" :background "red"))))
 '(helm-buffer-directory ((t (:foreground "blue"))))
 '(helm-ff-file ((t (:inherit helm-buffer-file))))
 '(helm-ff-symlink ((t (:inherit helm-buffer-not-saved))))
 '(helm-selection ((t (:foreground nil :background "#515151"))))
 '(helm-source-header ((t (:foreground "black" :background "white"))))
 '(helm-buffer-process ((t (:foreground "magenta"))))
 '(helm-buffer-size ((t (:foreground "#999999"))))
 '(helm-match ((t :inherit match)))

 ;; 括弧
 '(show-paren-match ((t (:foreground "cyan" :background "color-240"))))
 '(show-paren-mismatch ((t (:foreground "red" :background "color-240"))))

 ;; whitespace-mode
 ;; '(whitespace-newline ((t (:foreground "color-242"))))
 '(whitespace-tab ((t (:foreground "color-242"))))
 '(whitespace-space ((t (:foreground "color-242"))))

 ;; neotree
 '(neo-dir-link-face ((t (:foreground "blue"))))
 '(neo-file-link-face ((t (:foreground "color-250"))))
 '(neo-header-face ((t (:foreground "blue"))))
 '(neo-root-dir-face ((t (:foreground "green"))))
 '(neo-expand-btn-face ((t (:foreground "magenta"))))

 ;; js2
 '(js2-function-call ((t(:foreground "cyan"))))
 )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'my-tomorrow-night-eighties)
