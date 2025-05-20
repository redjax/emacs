;; Install & configure git-timemachine https://github.com/emacsmirror/git-timemachine
(use-package git-timemachine
  :ensure t
  :bind
  (("C-c t t" . git-timemachine)))  ;; You can choose any keybinding you like
