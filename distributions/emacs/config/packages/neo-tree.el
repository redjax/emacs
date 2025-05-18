;; Install neo-tree https://github.com/jaypei/emacs-neotree
(unless (package-installed-p 'neo-tree)
  (package-refresh-contents)
  (package-install 'neo-tree))

;; Initialize neo-tree
(require 'neo-tree)

;; Configuration

;; Set F8 key as activator
(global-set-key [f8] 'neotree-toggle)
(global-set-key C-c b 'neotree-toggle)
