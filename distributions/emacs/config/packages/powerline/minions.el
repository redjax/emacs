;; Install & configure minions 
(use-package minions
  :ensure t
  :config
  (minions-mode 1))  ;; Enable Minions globally

;; Configure minions
;; After loading your theme:
(add-hook 'after-load-theme-hook
  (lambda ()
    (if (facep 'mode-line-active)
        ;; Emacs 28+ (mode-line-active/inactive exist)
        (progn
          (set-face-attribute 'mode-line-active nil :box 'unspecified)
          (set-face-attribute 'mode-line-inactive nil :box 'unspecified)
          (set-face-attribute 'mode-line-active nil
                              :overline "blue"
                              :underline `(:color "blue" :position t))
          (set-face-attribute 'mode-line-inactive nil
                              :overline "green"
                              :underline `(:color "green" :position t)))
      ;; Emacs <28 (only mode-line and maybe mode-line-inactive exist)
      (progn
        (set-face-attribute 'mode-line nil :box 'unspecified)
        (set-face-attribute 'mode-line nil
                            :overline "blue"
                            :underline `(:color "blue" :position t))
        (when (facep 'mode-line-inactive)
          (set-face-attribute 'mode-line-inactive nil :box 'unspecified)
          (set-face-attribute 'mode-line-inactive nil
                              :overline "green"
                              :underline `(:color "green" :position t)))))))

;; Remove parentheses around minor modes (Emacs 31+)
; (setq mode-line-modes-delimiters nil)
