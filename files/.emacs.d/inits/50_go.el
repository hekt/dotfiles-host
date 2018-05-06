(use-package go-mode
  :ensure t
  :defer t
  :bind
  (:map go-mode-map
        ("C-c i" . 'go-import-add)
        ("C-c j" . 'godef-jump)
        ("C-c b" . 'pop-tag-mark))
  :init
  (setq gofmt-command "goimports")
  (add-hook 'go-mode-hook 'my/go-mode-hook)
  (add-hook 'go-mode-hook 'go-eldoc-setup)
  (add-hook 'before-save-hook 'gofmt-before-save)
  )

(use-package company-go
  :ensure t
  :defer t
  )

(use-package go-eldoc
  :ensure t
  :defer t
  )

(defun my/go-mode-hook ()
  (make-local-variable 'company-backends)
  (add-to-list 'company-backends 'company-go))
