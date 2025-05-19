;; Install sideline https://github.com/emacs-sideline/sideline
(unless (package-installed-p 'sideline)
  (package-install 'sideline))

;; Install sideline extras
; Flycheck
(unless (package-installed-p 'sideline-flycheck)
  (package-install 'sideline-flycheck))

; LSP
(unless (package-installed-p 'sideline-lsp)
  (package-install 'sideline-lsp))

;; Import sideline
(require 'sideline)

;; Import sideline extras
(require 'sideline-flycheck)
(require 'sideline-lsp)

;; Configuration

;; Set the sideline backends
; Lazy load to avoid performance hits
(add-hook 'lsp-mode-hook
          (lambda ()
            (add-to-list 'sideline-backends-right 'sideline-lsp t)))

(add-hook 'flycheck-mode-hook
          (lambda ()
            (add-to-list 'sideline-backends-left 'sideline-flycheck t)))

; (setq sideline-backends-left '(sideline-flycheck)
;       sideline-backends-right '(sideline-lsp))

;; Add small delay to sideline initialization
(setq sideline-delay 0.2)

; don't display on current line (left)
(setq sideline-backends-left-skip-current-line t)
; don't display on current line (right)
(setq sideline-backends-right-skip-current-line t)
; or 'up
(setq sideline-order-left 'down)
; or 'down
(setq sideline-order-right 'up)
; format for left aligment
(setq sideline-format-left "%s   ")
; format for right aligment
(setq sideline-format-right "   %s")
; overlays' priority
(setq sideline-priority 100)
(setq sideline-display-backend-name t)

;; Enable sideline-mode when flycheck-mode or flymake-mode is enabled
(add-hook 'flycheck-mode-hook #'sideline-mode)
(add-hook 'flymake-mode-hook #'sideline-mode)
