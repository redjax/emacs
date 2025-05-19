;; Install eldoc-box https://github.com/casouri/eldoc-box
(unless (package-installed-p 'eldoc-box)
  (package-install 'eldoc-box))

;; Import eldoc-box
(require 'eldoc-box)

;; Configuration

;; Show docs in childframe at top right
(add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode)

;; Show docs in a childframe at point (slower, but more precise)
; (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-at-point-mode)

;; Only show multi-line docs in childframe, single-line in minibuffer
(setq eldoc-box-only-multi-line t)

;; Set max size for the doc frame
(setq eldoc-box-max-pixel-width 500)
(setq eldoc-box-max-pixel-height 300)

;; Change border color (face)
(set-face-attribute 'eldoc-box-border nil :background "gray")

;; Use a nice sans-serif font for the doc popup
(set-face-attribute 'eldoc-box-body nil :family "DejaVu Sans" :height 120)

;; LSP mode
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'eldoc-box-hover-mode))
