(unless (require 'use-package nil t)
  (defmacro use-package (&rest args)))

(use-package recentf
  :ensure t
  :config
  (setq recentf-auto-cleanup 'never)
  (setq recentf-max-menu-items 20)
  (setq recentf-max-saved-items 2000)
  )

(use-package tramp
  :ensure t
  :config
  (setq tramp-terminal-type "dump")
  (setq tramp-default-method "ssh")
  (add-to-list 'tramp-default-proxies-alist
               '(nil "\\`root\\'" "/ssh:%h:"))
  (add-to-list 'tramp-default-proxies-alist
               '("localhost" nil nil))
  (add-to-list 'tramp-default-proxies-alist
               '((regexp-quote (system-name)) nil nil))
  )

(use-package server
  :ensure t
  :config
  (unless (server-running-p)
    (server-start)))

(use-package company
  :ensure t
  :bind
  (:map company-active-map
   ("M-n" . nil)
   ("M-p" . nil)
   ("C-h" . nil)
   ("C-n" . 'company-select-next)
   ("C-p" . 'company-select-previous))
  :config
  (global-company-mode t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 4)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-statistics company-sort-by-backend-importance))
  )

(use-package company-statistics
  :ensure t
  :config
  (company-statistics-mode))

(use-package company-lsp
  :after
  (lsp-mode company)
  :init
  (push 'company-lsp company-backends)
  )

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package auto-complete
  :disabled
  :bind
  (:map ac-menu-map
   ("C-n" . 'ac-next)
   ("C-p" . 'ac-previous))
  :config
  (global-auto-complete-mode t)
  (setq ac-auto-start 4)
  (setq ac-use-menu-map t)
  )

(use-package multiple-cursors
  :ensure t
  :defer t
  :bind
  (("C-M-m" . 'mc/mark-all-in-region))
  )

(use-package helm
  :ensure t
  :bind
  (("C-c a" . 'helm-mini)
   ("C-c f" . 'helm-find)
   ("C-c C-f" . 'helm-find-files)
   ("M-y" . 'helm-show-kill-ring))
  :config
  (helm-mode 0)
  (setq helm-use-line-number-face "")
  (setq helm-buffer-max-length 28)
  (setq helm-truncate-lines t)
  ;; Emulate 'kill-line' in helm minibuffer
  (setq helm-delete-minibuffer-contents-from-point t)
  (defun my/helm-mini-emulate-kill-line (&rest r)
    (kill-new (buffer-substring (point) (field-end))))
  (advice-add 'helm-delete-minibuffer-contents :before 'my/helm-mini-emulate-kill-line)
  )

(use-package popwin
  :ensure t
  :defer t
  :config
  (setq display-buffer-function 'popwin:display-buffer)
  (setq popwin:special-display-config
        '(("*Help*")
          ("*Completions*")
          ("*compilation*")
          ("*Occur*")
          ("*Backtrace*")))
  )

(use-package yasnippet
  :ensure t
  :bind
  (:map yas-minor-mode-map
   ("C-]" . 'yas-next-field))
  :init
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :config
  (yas-global-mode 1)
  (setq yas-triggers-in-field t)
  )

(use-package neotree
  :ensure t
  :defer t
  :bind
  (("C-c t" . 'neotree-toggle))
  :config
  (setq neo-smart-open t)
  (setq neo-window-width 28)
  (setq neo-window-fixed-size nil)
  (setq neo-mode-line-format nil)
  )

(use-package swoop
  :ensure t
  :defer t
  :bind
  (("C-c s" . 'swoop))
  :config
  ;; disable auto insertion
  (setq swoop-pre-input-point-at-function: (lambda ()))
  )

(use-package whitespace
  :ensure t
  :config
  (setq whitespace-style '(face tabs tab-mark))
  (global-whitespace-mode 1)
  )

(use-package expand-region
  :ensure t
  :bind
  (("C-c o" . 'er/expand-region)
   ("C-c p" . 'er/contract-region)))

;; elpa のものとは別
(use-package osx-clipboard
  :if (eq system-type 'darwin)
  ;; defer が指定されると bind だけだと動かず commands が必要 (要検証)
  :defer t
  :commands (osx-pbcopy osx-pbcut osx-pbpaste)
  :bind
  (("C-c M-v" . 'osx-pbpaste)
   ("C-c M-c" . 'osx-pbcopy)
   ("C-c M-x" . 'osx-pbcut))
  )
(use-package lsp-mode
  :hook
  (haskell-mode . lsp)
  (php-mode . lsp)
  :custom
  ;; (lsp-print-io t)
  (lsp-prefer-flymake 'flymake)
  :commands lsp
  )

(use-package lsp-ui
  :custom
  ;; lsp-ui-doc
  (lsp-ui-doc-enable nil)
  
  ;; lsp-ui-flycheck
  (lsp-ui-flycheck-enable nil)
  ;; (lsp-ui-flycheck-live-reporting t)
  
  ;; lsp-ui-peek
  (lsp-ui-peek-enable t)
  (lsp-ui-peek-fontify 'on-demand) ;; never, on-demand, or always
  
  ;; lsp-ui-imenu
  (lsp-ui-imenu-enable nil)
  
  ;; lsp-ui-sideline
  (lsp-ui-sideline-enable nil)
  
  :commands lsp-ui-mode
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (eval-after-load "flymake"
    (setq flymake-fringe-indicator-position nil)
    )
  )

(use-package flymake)

(use-package flymake-diagnostic-at-point
  :after flymake
  :custom
  (flymake-diagnostic-at-point-timer-delay 0.1)
  (flymake-diagnostic-at-point-error-prefix "[!] ")
  (flymake-diagnostic-at-point-display-diagnostic-function
   'flymake-diagnostic-at-point-display-minibuffer)
  :hook
  (flymake-mode . flymake-diagnostic-at-point-mode)
  )
