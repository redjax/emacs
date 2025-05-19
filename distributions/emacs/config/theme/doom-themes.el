;; Doom themes https://github.com/doomemacs/themes
(use-package doom-themes
  :ensure t
  :config
  ;; Recommended global settings
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics are universally disabled

  ;; Load the theme
  ; (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  ;; Enable custom neotree theme (requires nerd-icons)
  (doom-themes-neotree-config)

  ;; Enable Treemacs theme (if you use Treemacs)
  ;; (setq doom-themes-treemacs-theme "doom-atom") ; or "doom-colors"
  (doom-themes-treemacs-config)

  ;; Improve org-mode fontification
  (doom-themes-org-config))
