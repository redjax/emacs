;; Fix error about requiring the 'seq' package
(setq package-install-upgrade-built-in t)

;; Install magit
(unless (package-installed-p 'magit)
  (package-install 'magit))

;; Import magit
(require 'magit)
