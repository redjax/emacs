;; Install ace-popup-menu https://github.com/mrkkrp/ace-popup-menu
(unless (package-installed-p 'ace-popup-menu)
  (package-install 'ace-popup-menu))

;; Import ace-popup-menu
(require 'ace-popup-menu)

;; Initialize ace-popup-menu (leave at bottom)
(ace-popup-menu-mode 1)
