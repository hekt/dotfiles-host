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
 '(font-lock-keyword-face ((t (:foreground "magenta"))))
 '(font-lock-negation-char-face ((t (:foreground "red"))))
 '(font-lock-preprocessor-face ((t (:foreground "red"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "yellow"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 '(font-lock-string-face ((t (:foreground "green"))))
 '(font-lock-type-face ((t (:foreground "green"))))
 '(font-lock-variable-name-face ((t (:foreground "cyan"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "red"))))

 '(header-line ((t (:foreground "#999999" :background nil))))
 '(mode-line ((t (:foreground "#393939" :background "#999999"))))
 '(mode-line-inactive ((t (:foreground "#393939" :background "#777777"))))
 '(minibuffer-prompt ((t (:foreground "blue"))))
 '(secondary-selection ((t (:background "#666666"))))
 '(escape-glyph ((t (:foreground "red"))))
 '(success ((t (:foreground "green" :weight bold))))
 '(warning ((t (:foreground "yellow" :weight bold))))
 '(highlight ((t (:background "#999999"))))
 '(fringe ((t (:foreground "#999999" :background nil))))
 '(vertical-border ((t (:foreground "#454545" :background "#454545"))))

 ;; display-line-numbers-mode
  '(line-number ((t (:foreground "#666666" :background "#393939"))))
  '(line-number-current-line ((t :foreground "#999999" :background "#454545")))

 ;; search
 '(match ((t (:foreground "yellow" :inverse-video t))))
 '(isearch ((t (:foreground "red" :inverse-video t))))
 '(isearch-lazy-highlight-face ((t (:foreground "yellow" :inverse-video t))))
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
 '(helm-buffer-not-saved ((t (:foreground "yellow" :weight bold))))
 '(helm-buffer-modified ((t (:foreground "cyan"))))
 '(helm-buffer-saved-out ((t (:foreground "black" :background "red"))))
 '(helm-buffer-directory ((t (:foreground "black" :background "blue"))))
 '(helm-ff-file ((t (:inherit helm-buffer-file))))
 '(helm-ff-symlink ((t (:inherit helm-buffer-not-saved))))
 '(helm-selection ((t (:foreground nil :background "#515151"))))
 '(helm-source-header ((t (:foreground "black" :background "white"))))
 '(helm-buffer-process ((t (:foreground "magenta"))))
 '(helm-buffer-size ((t (:foreground "#999999"))))
 '(helm-match ((t :inherit match)))
 '(helm-header ((t :foreground "white" :background "color-240")))
 '(helm-candidate-number ((t :foreground nil :background nil)))

 ;; swoop
 '(swoop-face-header-format-line ((t :foreground "white" :background "color-240")))
 '(swoop-face-line-number ((t :foreground "color-245")))
 '(swoop-face-line-buffer-name ((t :foreground "yellow")))
 '(swoop-face-target-line ((t :background "color-240")))
 '(swoop-face-target-words ((t :foreground "color-240" :background "yellow")))

 ;; paren
 '(show-paren-match ((t (:foreground "white" :background "brightblack"))))
 '(show-paren-mismatch ((t (:foreground "white" :background "red"))))

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
 '(js2-function-call ((t (:foreground "cyan"))))

 ;; company
 '(company-tooltip ((t (:foreground "black" :background "#cccccc"))))
 '(company-tooltip-selection ((t (:foreground "white" :background "blue"))))
 '(company-tooltip-annotation ((t (:foreground "black"))))
 '(company-tooltip-annotation-selection ((t (:foreground "white"))))
 '(company-tooltip-common ((t (:foreground "black"))))
 '(company-tooltip-common-selection ((t (:foreground "white"))))
 '(company-scrollbar-bg ((t (:background "#aaaaaa"))))
 '(company-scrollbar-fg ((t (:background "#666666"))))

 ;; defined by 30_apperances.el
 '(my/mode-line-buffer-name-face ((t (:foreground nil))))
 '(my/mode-line-read-only-face ((t (:foreground "red"))))
 '(my/mode-line-modified-face ((t (:foreground "cyan"))))

 ;; lsp-mode
 '(lsp-ui-doc-background ((t (:background "color-240"))))

 ;; web-mode
 '(web-mode-current-element-highlight-face ((t (:background "brightblack"))))
 '(web-mode-html-tag-face ((t (:foreground "yellow"))))
 '(web-mode-html-attr-custom-face ((t (:foreground "cyan"))))
 '(web-mode-html-attr-name-face ((t (:foreground "cyan"))))
 '(web-mode-html-attr-equal-face ((t (:foreground "white"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "white"))))
 '(web-mode-block-delimiter-face ((t (:foreground "blue"))))
 )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'my-tomorrow-night-eighties)
