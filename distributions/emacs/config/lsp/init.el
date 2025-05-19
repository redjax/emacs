(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))
(unless (package-installed-p 'lsp-ui)
  (package-install 'lsp-ui))

;; Initialize lsp-mode and lsp-ui
(require 'lsp-mode)
(require 'lsp-ui)

;; Enable lsp-ui features globally
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;; Configuration

;; Tweak lsp-ui
(setq lsp-ui-doc-enable t
      lsp-ui-doc-delay 0.2
      lsp-ui-sideline-enable t
      lsp-ui-sideline-show-code-actions t
      lsp-ui-sideline-show-diagnostics t)

;; Ignored directories
(setq lsp-file-watch-ignored-directories
      '("[/\\\\]\\.git$" "[/\\\\]\\.hg$" "[/\\\\]\\.svn$" "[/\\\\]\\.idea$"
        "[/\\\\]\\.ensime_cache$" "[/\\\\]\\.eunit$" "[/\\\\]node_modules$"
        "[/\\\\]\\.fslckout$" "[/\\\\]\\.tox$" "[/\\\\]\\.stack-work$"
        "[/\\\\]\\.bloop$" "[/\\\\]\\.metals$" "[/\\\\]target$"))

;; Load individual LSPs

; Python
(load (expand-file-name "python.el" (file-name-directory load-file-name)))
