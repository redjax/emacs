;; DO NOT LEAVE THIS UNCOMMENTED!
;  Uncomment this line to TEMPORARILY disable package signature checking.
;  This should only be uncommented as a troubleshooting step
;; (setq package-check-signature nil)

;; Suppress non-critical warnings from package init
(custom-set-variables
 '(warning-suppress-types '((comp) (bytecomp))))

;; Enable package management
(require 'package)

;; Import config modules
(load (expand-file-name "config/ui.el" user-emacs-directory))
(load (expand-file-name "config/startup.el" user-emacs-directory))
(load (expand-file-name "config/editing.el" user-emacs-directory))
(load (expand-file-name "config/keyring.el" user-emacs-directory))
(load (expand-file-name "config/package-mgr.el" user-emacs-directory))
(load (expand-file-name "config/packages/init.el" user-emacs-directory))

;; Set theme before loading packages with powerline
(load (expand-file-name "config/theme/init.el" user-emacs-directory))

;; Load Powerline
(load (expand-file-name "config/powerline/init.el" user-emacs-directory))

(custom-set-variables
 '(package-selected-packages '(leaf-keywords leaf)))
(custom-set-faces)

;; Set custom-file to avoid polluting init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Automatically debug on error
(setq debug-on-error t)

;; Load LSPs
(load (expand-file-name "config/lsp/init.el" user-emacs-directory))
