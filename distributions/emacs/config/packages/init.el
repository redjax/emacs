(require 'package)

;; Setup package archives
(customize-set-variable
 'package-archives
 '(("org"   . "https://orgmode.org/elpa/")
   ("melpa" . "https://melpa.org/packages/")
   ("gnu"   . "https://elpa.gnu.org/packages/")))

;; Add marmalade package repository
;;  http://marmalade-repo.org/
;; (add-to-list 'package-archives
;;   '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Initialize emacs package manager
(package-initialize)

;; Optionally, ensure package lists are up to date
;; (unless package-archive-contents
;;   (package-refresh-contents))

;; Load 3rd party package configs

;; Leaf package manager
(load (expand-file-name "leaf.el" (file-name-directory load-file-name)))

;; Dashboard
(load (expand-file-name "dashboard.el" (file-name-directory load-file-name)))
