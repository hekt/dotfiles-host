(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; (use-package go-mode
;;   :ensure t
;;   :defer t
;;   :bind
;;   (:map go-mode-map
;;         ("C-c i" . 'go-import-add)
;;         ("C-c j" . 'godef-jump)
;;         ("C-c b" . 'pop-tag-mark))
;;   :init
;;   (setq gofmt-command "goimports")
;;   )

;; (use-package go-mode
;;   :commands go-mode
;;   :mode (("\\.go?\\'" . go-mode))
;;   :defer t
;;   :init
;;   (add-hook 'go-mode-hook #'lsp)
;;   :config
;;   ;; インデント関係の設定
;;   (setq indent-tabs-mode nil)
;;   (setq c-basic-offset 4)
;;   (setq tab-width 4)
;;   ;; 保存前に lsp-format-buffer
;;   (add-hook 'before-save-hook 'lsp-format-buffer))

;; (use-package company-go
;;   :ensure t
;;   :defer t
;;   )

;; (use-package go-eldoc
;;   :ensure t
;;   :defer t
;;   )

;; (defun my/go-mode-hook ()
;;   (make-local-variable 'company-backends)
;;   (add-to-list 'company-backends 'company-go))
