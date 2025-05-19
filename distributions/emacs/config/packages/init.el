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

;; Pulsar
(load (expand-file-name "pulsar.el" (file-name-directory load-file-name)))

;; Web-mode (for web editing like HTML, Javascript, etc)
(load (expand-file-name "web-mode.el" (file-name-directory load-file-name)))

;; Verb HTTP client
; (load (expand-file-name "verb.el" (file-name-directory load-file-name)))

;; Icomplete vertical
; (load (expand-file-name "icomplete-vertical.el" (file-name-directory load-file-name)))

;; Sideline (sidebar)
(load (expand-file-name "sideline.el" (file-name-directory load-file-name)))

;; Vertico vertical completion
(load (expand-file-name "vertico.el" (file-name-directory load-file-name)))

;; Marginalia
(load (expand-file-name "marginalia.el" (file-name-directory load-file-name)))

;; Try (try packages before installing them)
(load (expand-file-name "try.el" (file-name-directory load-file-name)))

;; Elboc box
(load (expand-file-name "eldoc-box.el" (file-name-directory load-file-name)))

;; Flycheck
(load (expand-file-name "flycheck.el" (file-name-directory load-file-name)))

;; Embark
(load (expand-file-name "embark.el" (file-name-directory load-file-name)))

;; Corfu + cape
(load (expand-file-name "corfu.el" (file-name-directory load-file-name)))
(load (expand-file-name "cape.el" (file-name-directory load-file-name)))

;; Consult
(load (expand-file-name "consult.el" (file-name-directory load-file-name)))

;; Company-mode
(load (expand-file-name "company-mode/init.el" (file-name-directory load-file-name)))
