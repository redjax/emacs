;; Define the font family to install
(defvar my/nerd-icons-font-name "Symbols Nerd Font Mono"
  "Font name for Nerd Icons.")

;; Install nerd-icons https://github.com/emacsmirror/nerd-icons
;; On first run, manually execute this to install your icons:
;    M-x nerd-icons-install-fonts
(unless (package-installed-p 'nerd-icons)
  (package-refresh-contents)
  (package-install 'nerd-icons))

;; Initialize nerd-icons
(require 'nerd-icons)

;; Configuration

;; Set icons pack
(setq my/nerd-icons-font-family my/nerd-icons-font-name)
