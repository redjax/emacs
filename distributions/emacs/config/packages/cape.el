;; Install & configure cape https://github.com/minad/cape#cape-yasnippet
(use-package cape
  :ensure t
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file)
  ;; Add yasnippet integration when yasnippet is present
  (when (require 'yasnippet nil 'noerror)
  (add-to-list 'completion-at-point-functions #'cape-yasnippet)))
