;; Install and configure embark https://github.com/oantolin/embark
(use-package embark
  :ensure t
  :bind
  (("C-c ." . embark-act)         ;; Pick some comfortable key!
   ("C-c ;" . embark-dwim)       ;; Good default for "do what I mean"
   ("C-h B" . embark-bindings)) ;; List all keybindings for the current context
  :init
  ;; Optionally replace the regular help command with a richer Embark version:
  (setq prefix-help-command #'embark-prefix-help-command)
  :config
  ;; Show Embark actions in a popup (if you use which-key)
  (setq embark-action-indicator
        (lambda (&optional keymap targets prefix)
          (which-key--show-keymap "Embark Actions" keymap)))
  (setq embark-become-indicator embark-action-indicator))

;; Integrate with consult
(when (package-installed-p 'consult)
  (use-package embark-consult
    :ensure t
    :after (embark consult)
    :demand t))
