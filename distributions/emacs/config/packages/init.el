(require 'package)

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

;; Load 3rd party package configs

;; Nerd icons
(load (expand-file-name "nerd-icons.el" (file-name-directory load-file-name)))

;; Leaf package manager
(load (expand-file-name "leaf.el" (file-name-directory load-file-name)))

;; Dashboard
(load (expand-file-name "dashboard.el" (file-name-directory load-file-name)))

;; Magit git interface
; (load (expand-file-name "magit.el" (file-name-directory load-file-name)))

;; Helpful, better help buffer
(load (expand-file-name "helpful.el" (file-name-directory load-file-name)))

;; Sublimity, codemap & sublime-like editing
(load (expand-file-name "sublimity.el" (file-name-directory load-file-name)))

;; Ace popup menu
(load (expand-file-name "ace-popup-menu.el" (file-name-directory load-file-name)))

;; Yascroll
(load (expand-file-name "yascroll.el" (file-name-directory load-file-name)))

;; Dirvish
(load (expand-file-name "dirvish.el" (file-name-directory load-file-name)))

;; Neotree
; (load (expand-file-name "neo-tree.el" (file-name-directory load-file-name)))

;; Icons in terminal
; (load (expand-file-name "icons-in-terminal.el" (file-name-directory load-file-name)))
