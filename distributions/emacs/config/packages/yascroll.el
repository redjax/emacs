;; Install yascroll https://github.com/emacsorphanage/yascroll
(unless (package-installed-p 'yascroll)
  (package-install 'yascroll))

;; Import yascroll
(require 'yascroll)

;; Initialize yascroll (keep at bottom)
(global-yascroll-bar-mode 1)
