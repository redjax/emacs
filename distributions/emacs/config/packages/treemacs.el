;; Install & configure treemacs https://github.com/Alexander-Miller/treemacs
(use-package treemacs
  :ensure t
  :defer t
  :bind
  (("C-x t t" . treemacs))  ;; You can pick any keybinding you like
  :config
  (setq treemacs-width 35)) ;; Optional: set the width of the Treemacs window
