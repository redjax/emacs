;; (require 'package)

;; Setup package archives
(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("org"   . "https://orgmode.org/elpa/")))

;; Initialize emacs package manager
(package-initialize)

;; Suppress non-critical package warnings
(setq byte-compile-warnings '(not docstrings))

;; Optionally, ensure package lists are up to date
(unless package-archive-contents
  (package-refresh-contents))

(unless (bound-and-true-p package--initialized) ; Emacs 27+
  (package-initialize))

;; Install use-package if missing
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Import use-package
(require 'use-package)
