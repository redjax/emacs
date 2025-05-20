;; Install & configure auto-package-update https://github.com/rranelli/auto-package-update.el
(use-package auto-package-update
  :ensure t
  :custom
  (auto-package-update-interval 7)                ;; Update every 7 days (default)
  (auto-package-update-delete-old-versions t)     ;; Delete old package versions
  (auto-package-update-prompt-before-update t)    ;; Ask before updating
  (auto-package-update-hide-results nil)          ;; Show results buffer
  ;; (auto-package-update-excluded-packages '(package1 package2)) ;; Exclude these packages
  :config
  ;; Option 1: Update on startup if interval has passed
  (auto-package-update-maybe)
  ;; Option 2: Or update at a specific time each day (uncomment to use)
  ;; (auto-package-update-at-time "03:00")
)

(add-hook 'auto-package-update-before-hook (lambda () (message "Updating packages...")))
(add-hook 'auto-package-update-after-hook (lambda () (message "Done updating packages!")))
