(use-package php-mode
  :mode
  (("\\.php$" . php-mode))
  :bind
  (:map php-mode-map
   ("(" . 'skeleton-pair-insert-maybe)
   ("{" . 'skeleton-pair-insert-maybe))
  :init
  (add-hook 'php-mode-hook (lambda () (setq tab-width 4 c-basic-offset 4 indent-tabs-mode t)))
  ;; flycheck
  ;; (add-hook 'php-mode-hook 'flycheck-mode)
  )
