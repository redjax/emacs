;; Install sublimity https://github.com/zk-phi/sublimity
(unless (package-installed-p 'sublimity)
  (package-install 'sublimity))

;; Import sublimity
(require 'sublimity)

;; Optional imports
(require 'sublimity-scroll)
; (require 'sublimity-map) ;; experimental
; (require 'sublimity-attractive)

;; Call sublimity
(sublimity-mode 1)
