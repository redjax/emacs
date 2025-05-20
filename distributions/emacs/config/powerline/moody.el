;; Install & configure moody https://github.com/tarsius/moody
(use-package moody
  :ensure t
  :config
  ;; Replace default mode-line elements with Moody's styled variants
  (moody-replace-mode-line-front-space)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode))
