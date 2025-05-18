;; Store backup and autosave files in a separate directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups/" user-emacs-directory))))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Set default tab width
(setq-default tab-width 4)

;; Set UTF-8 as default encoding
(prefer-coding-system 'utf-8)
