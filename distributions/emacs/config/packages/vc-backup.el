;; Install & configure vc-backup https://elpa.gnu.org/packages/vc-backup.html
(use-package vc-backup
  :ensure t
  :init
  ;; Optional: Enable versioned backups and set sensible defaults
  (setq version-control t
        kept-new-versions 10
        kept-old-versions 2
        delete-old-versions t
        backup-by-copying t
        backup-directory-alist `(("." . ,(expand-file-name "backups/" user-emacs-directory))))
  :config
  ;; Register the backend (required for Emacs 29+)
  (when (fboundp 'vc-register-backend)
    (vc-register-backend 'BACKUP)))
