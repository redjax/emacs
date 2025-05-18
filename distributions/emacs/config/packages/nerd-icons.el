;; Install nerd-icons https://github.com/emacsmirror/nerd-icons
(unless (package-installed-p 'nerd-icons)
  (package-refresh-contents)
  (package-install 'nerd-icons))

;; Initialize nerd-icons
(require 'nerd-icons)

;; Configuration

;; Set icons pack
(setq nerd-icons-font-family "Symbols Nerd Font Mono")

;; Load nerd icons (leave at bottom)
(nerd-icons-install-fonts t)
