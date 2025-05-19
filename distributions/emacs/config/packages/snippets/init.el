;; Install & configure yasnippet https://github.com/joaotavora/yasnippet
(use-package yasnippet
  :ensure t
  :commands yas-minor-mode
  :hook ((prog-mode . yas-minor-mode)
         (text-mode . yas-minor-mode))
  :config
  (yas-reload-all))

;; Load snippet backends
(load (expand-file-name "yasnippet-snippets.el" (file-name-directory load-file-name)))
(load (expand-file-name "custom-snippets.el" (file-name-directory load-file-name)))
