;; Install leaf if not present
(unless (package-installed-p 'leaf)
  (package-refresh-contents)
  (package-install 'leaf))

(require 'leaf)

;; Suppress non-critical warnings during package management
(leaf *byte-compile
  :custom ((byte-compile-warnings . '(not free-vars docstrings lexical unresolved constants))
           (warning-suppress-types . '(comp))
           (debug-on-error . nil)))

;; Add leaf operations to environment
(leaf leaf-keywords
  :ensure t
  :config
  (leaf-keywords-init))
