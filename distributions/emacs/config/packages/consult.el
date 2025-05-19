;; Install & configure consult https://github.com/minad/consult
(use-package consult
  :ensure t
  :bind
  (("C-s" . consult-line)                       ;; Search for lines in buffer
   ("C-x b" . consult-buffer)                   ;; Switch buffer
   ("M-y" . consult-yank-pop)                   ;; Enhanced yank-pop
   ("M-g g" . consult-goto-line)                ;; Go to line
   ("M-g i" . consult-imenu)                    ;; Jump to imenu symbol
   ("M-g o" . consult-outline)                  ;; Jump to outline heading
   ("M-g m" . consult-mark)                     ;; Jump to mark
   ("M-g r" . consult-ripgrep)                  ;; Ripgrep search
   ("M-g f" . consult-find))                    ;; Find file
  :init
  ;; Optionally enable preview for M-<up/down> in the minibuffer
  (setq consult-preview-key '(:debounce 0.5 any))
  ;; Optionally configure narrowing key
  (setq consult-narrow-key "<")
  ;; Register recentf for consult-buffer
  (recentf-mode 1))
