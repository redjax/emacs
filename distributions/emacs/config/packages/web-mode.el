;; Install web-mode https://web-mode.org
(unless (package-installed-p 'web-mode)
  (package-install 'web-mode))

;; Import web-mode
(require 'web-mode)

;; Configuration

;; Activate web-mode on html, php, js, css, etc files
(dolist (pattern
  '("\\.phtml\\'" "\\.php\\'" "\\.tpl\\'" "\\.[agj]sp\\'" "\\.as[cp]x\\'" "\\.erb\\'" "\\.mustache\\'" "\\.djhtml\\'"))
  (add-to-list 'auto-mode-alist (cons pattern 'web-mode)))
