;; (use-package haskell-mode
;;   :mode
;;   (("\\.hs$" . haskell-mode)
;;    ("\\.lhs$" . literate-haskell-mode)
;;    ("\\.cabal$" . haskell-cabal-mode))
;;   )

(setq lsp-haskell-process-path-hie "hie-wrapper")

(use-package lsp-haskell)
