;; Install flycheck https://github.com/flycheck/flycheck
(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

;; Import flycheck
(require 'flycheck)

;; Configuration

;; Initialize flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
