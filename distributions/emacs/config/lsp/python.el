;; Python LSP configuration using lsp-pyright

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred))

(use-package lsp-pyright
  :ensure t
  :after (lsp-mode python)
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp-deferred)))
  :custom
  (lsp-pyright-type-checking-mode "basic")  ;; or "off" or "strict"
  (lsp-pyright-auto-import-completions t)
  (lsp-pyright-use-library-code-for-types t))
