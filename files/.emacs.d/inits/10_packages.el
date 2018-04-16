(unless (require 'use-package nil t)
  (defmacro use-package (&rest args)))

(use-package recentf
  :config
  (setq recentf-auto-cleanup 'never)
  (setq recentf-max-menu-items 20)
  (setq recentf-max-saved-items 2000)
  )

(use-package tramp
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

(use-package linum
  :config
  (global-linum-mode t)
  (setq linum-format "%3d ")
  )

(use-package company
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
  )

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
  :defer t
  :bind
  (("C-M-m" . 'mc/mark-all-in-region))
  )

(use-package helm
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
  (defadvice helm-delete-minibuffer-contents 
      (before helm-emulate-kill-line activate)
    "Emulate 'kill-line' in helm minibuffer"
    (kill-new (buffer-substring (point) (field-end)))))

(use-package popwin
  :defer t
  :config
  (setq display-buffer-function 'popwin:display-buffer)
  (setq popwin:special-display-config
        '(("*Help*")
          ("*Completions*")
          ("*compilation*")
          ("*Occur*")
          ("*Backtrace*"))))

(use-package yasnippet
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
  :defer t
  :bind
  (("C-c s" . 'swoop))
  :config
  ;; disable auto insertion
  (setq swoop-pre-input-point-at-function: (lambda ()))
  )

(use-package whitespace
  :config
  ;; display tab/space
  ;; http://d.hatena.ne.jp/syohex/20110119/1295450495
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
  )

;; elpa のものとは別
(use-package osx-clipboard
  :if (eq system-type 'darwin)
  :defer t
  :bind
  (("C-c M-v" . 'osx-pbpaste)
   ("C-c M-c" . 'osx-pbcopy)
   ("C-c M-x" . 'osx-pbcut))
  )
