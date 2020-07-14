(use-package rjsx-mode
  :mode
  (("\\.jsx?$" . rjsx-mode))
  :config
  (setq indent-tabs-mode nil)
  (setq js-indent-level 2)
  )

(add-hook 'js-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

;; (use-package typescript-mode
;;   :mode
;;   (("\\.tsx?$" . typescript-mode))
;;   :config
;;   (setq indent-tabs-mode nil)
;;   (setq typescript-indent-level 2)
;;   )
;; (use-package js2-mode
;;   :mode
;;   (("\\.js$" . js2-mode))
;;   :config
;;   (setq js2-basic-offset 2)
;;   (setq js2-strict-inconsistent-return-warning nil)
;;   (setq js2-strict-trailing-comma-warning nil)
;;   (setq js2-indent-switch-body t)
;;   (setq-default
;;    js2-global-externs
;;    '("setTimeout" "clearTimeout" "setInterval" "clearInterval"
;;      "location" "console" "JSON" "navigator"
;;      ;; new apis
;;      "FileReader" "localStorage" "sessionStorage" "history"
;;      "MutationObserver"
;;      ;; libs
;;      "$" "jQuery" "Vue" "chrome"
;;      ;; node.js
;;      "global" "require" "process" "module" "exports"
;;      ;; mocha
;;      "describe" "it" "before" "after" "beforeEach" "afterEach"
;;      ;; Web Extensions
;;      "browser"
;;      ))
;;   )

;; (use-package typescript-mode
;;   :config
;;   (setq typescript-indent-level 2)
;;   )

;; (use-package tide
;;   :ensure t
;;   :after (typescript-mode company flycheck)
;;   :hook ((typescript-mode . tide-setup)
;;          (typescript-mode . tide-hl-identifier-mode)
;;          (before-save . tide-format-before-save)))

;; from the Tide README
;; (defun setup-tide-mode ()
;;   "Set up Tide mode."
;;   (interactive)
;;   (tide-setup)
;;   (flycheck-mode +1)
;;   (setq flycheck-check-syntax-automatically '(save-mode-enabled))
;;   (eldoc-mode +1)
;;   (tide-hl-identifier-mode +1)
;;   (company-mode +1))

;; (use-package tide
;;   :ensure t
;;   :config
;;   (setq company-tooltip-align-annotations t)
;;   (add-hook 'before-save-hook 'tide-format-before-save)
;;   (add-hook 'typescript-mode-hook #'setup-tide-mode))
;; (use-package tide
;;   :ensure t
;;   :config
;;   (setq company-tooltip-align-annotations t)
;;   (add-hook 'typescript-mode-hook #'setup-tide-mode)
;;   ;; :after
;;   ;; (typescript-mode company flycheck)
;;   :hook
;;   (
;;    ;; (typescript-mode . tide-hl-identifier-mode)
;;    (before-save . tide-format-before-save)
;;    )
;;   )
