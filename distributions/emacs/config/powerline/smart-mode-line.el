;; Install & configure smart-mode-line https://github.com/Malabarba/smart-mode-line
(use-package smart-mode-line
  :ensure t
  :init
  ;; Don't ask for confirmation when loading mode-line themes
  (setq sml/no-confirm-load-theme t)
  ;; Fallback to dark theme if no other theme is active
  (unless custom-enabled-themes
    (setq sml/theme 'dark))
  :config
  (sml/setup))
