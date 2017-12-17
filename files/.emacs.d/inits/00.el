;; user info
(setq user-full-name "hekt")
(setq user-mail-address "hektorg@gmail.com")

;; display
(menu-bar-mode -1)
(global-hl-line-mode t)
(column-number-mode t)
(setq inhibit-splash-screen t)
(setq initial-buffer-choice t)
(setq initial-scratch-message nil)

;; editing
(prefer-coding-system 'utf-8)
(setq scroll-step 1)
(setq scroll-error-top-bottom t)
(setq-default tab-width 4 indent-tabs-mode nil)
(setq-default fill-column 72)
(delete-selection-mode t)

;; sound
(setq ring-bell-function 'ignore)

;; hide a password
(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)

;; disable clipboard integration
(setq interprogram-cut-function nil)
(setq interprogram-paste-function nil)

;; autoinsert
(auto-insert-mode)
(setq auto-insert-directory "~/.emacs.d/templates/")
(define-auto-insert "\\.php$" "template.php")

;; recent files
(require 'recentf)
(setq recentf-auto-cleanup 'never)
(setq recentf-max-menu-items 20)
(setq recentf-max-saved-items 2000)

;; tramp
(require 'tramp)
(setq tramp-terminal-type "dump")
(setq tramp-default-method "ssh")
(add-to-list 'tramp-default-proxies-alist
             '(nil "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
             '("localhost" nil nil))
(add-to-list 'tramp-default-proxies-alist
             '((regexp-quote (system-name)) nil nil))

;; auto-complete
(global-auto-complete-mode t)
(setq ac-auto-start 4)
(setq ac-use-menu-map t)

;; helm
(helm-mode 0)
(custom-set-variables
 '(helm-buffer-max-length 28)
 '(helm-truncate-lines t))
;; Emulate 'kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents 
    (before helm-emulate-kill-line activate)
  "Emulate 'kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

;; popwin
(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:special-display-config
      '(("*Help*")
        ("*Completions*")
        ("*compilation*")
        ("*Occur*")
        ("*Backtrace*")))

;; yasnippet
(setq yas-triggers-in-field t)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; neotree
(custom-set-variables
 '(neo-smart-open t)
 '(neo-window-width 28)
 '(neo-window-fixed-size nil)
 )
