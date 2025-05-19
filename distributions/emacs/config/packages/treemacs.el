;; Install & configure treemacs https://github.com/Alexander-Miller/treemacs
(use-package treemacs
  :ensure t
  :defer t
  :bind
  (("C-x t t" . treemacs))  ;; You can pick any keybinding you like
  :config
  (setq treemacs-width 35)
  (treemacs-follow-mode 1)
  (treemacs-filewatch-mode 1)
  (treemacs-git-mode 'deferred)) ;; Optional: set the width of the Treemacs window

(use-package treemacs-nerd-icons
  :ensure t
  :config
  (treemacs-load-theme "nerd-icons"))
