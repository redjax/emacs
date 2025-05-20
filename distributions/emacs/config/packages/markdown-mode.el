;; Install & configure markdown-mode https://github.com/jrblevin/markdown-mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init
  (setq markdown-command "multimarkdown")
  ;; Set custom markdown preview function
  (setq markdown-live-preview-window-function #'my-markdown-preview-function)

  ;; always open the preview window at the right
  (setq markdown-split-window-direction 'right)
  ;; delete exported HTML file after markdown-live-preview-export is called
  (setq markdown-live-preview-delete-export 'delete-on-export)

  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do))
)

;; Install edit-indirect
(use-package edit-indirect
  :ensure t
)