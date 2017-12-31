(use-package js2-mode
  :mode
  (("\\.js$" . js2-mode))
  :config
  (setq js2-basic-offset 2)
  (setq js2-strict-inconsistent-return-warning nil)
  (setq js2-strict-trailing-comma-warning nil)
  (setq js2-indent-switch-body t)
  (setq-default
   js2-global-externs
   '("setTimeout" "clearTimeout" "setInterval" "clearInterval"
     "location" "console" "JSON" "navigator"
     ;; new apis
     "FileReader" "localStorage" "sessionStorage" "history"
     "MutationObserver"
     ;; libs
     "$" "jQuery" "Vue" "chrome"
     ;; node.js
     "global" "require" "process" "module" "exports"
     ;; mocha
     "describe" "it" "before" "after" "beforeEach" "afterEach"
     ;; Web Extensions
     "browser"
     ))
  )

(use-package typescript-mode
  :config
  (setq typescript-indent-level 2)
  )
