;; Install icons-in-terminal https://github.com/seagle0128/icons-in-terminal.el
(unless (package-installed-p 'icons-in-terminal)
  (package-install 'icons-in-terminal))

;; Import icons-in-terminal
(require 'icons-in-terminal)

(icons-in-terminal-install-font)
