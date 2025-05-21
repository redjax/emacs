;; Set variable according to magit warning around the 'seq' package.
;; \ On first run,
(setq package-install-upgrade-built-in t)

;; Install magit https://github.com/magit/magit
(use-package magit
  :ensure t)

;; Install transient magit dependency
(use-package transient
  :ensure t)

;; Import magit
(require 'magit)
