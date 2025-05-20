(use-package yascroll
  ;; Only activate in GUI mode. Yascroll isn't supported in terminal
  :if (display-graphic-p)
  :ensure t
  :init
  (fringe-mode '(8 . 8))  ;; Ensure fringe is visible
  ;; Scrollbar always visible
  ;; (setq yascroll:delay-to-hide nil)
  ;; Scrollbar hide delay in seconds
  (setq yascroll:delay-to-hide 1.0)
  :config
  (global-yascroll-bar-mode 1))

