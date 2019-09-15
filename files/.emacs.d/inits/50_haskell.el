(use-package haskell-mode
  :mode
  (("\\.hs$" . haskell-mode)
   ("\\.lhs$" . literate-haskell-mode)
   ("\\.cabal$" . haskell-cabal-mode))
  )

(use-package lsp-haskell)
