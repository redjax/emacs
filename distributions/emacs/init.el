;; DO NOT LEAVE THIS UNCOMMENTED!
;  Uncomment this line to TEMPORARILY disable package signature checking.
;  This should only be uncommented as a troubleshooting step
;; (setq package-check-signature nil)

;; Import config modules
(load (expand-file-name "config/keyring.el" user-emacs-directory))
(load (expand-file-name "config/packages/init.el" user-emacs-directory))
(load (expand-file-name "config/startup.el" user-emacs-directory))
(load (expand-file-name "config/ui.el" user-emacs-directory))
(load (expand-file-name "config/editing.el" user-emacs-directory))

(custom-set-variables
 '(package-selected-packages '(leaf-keywords leaf)))
(custom-set-faces)

;; Set custom-file to avoid polluting init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
