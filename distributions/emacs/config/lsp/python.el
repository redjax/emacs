;; Python LSP configuration
(require 'lsp-mode)

(with-eval-after-load 'python
    (add-hook 'python-mode-hook #'lsp-deferred))
