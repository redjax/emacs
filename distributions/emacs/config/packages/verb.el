;; Install verb https://github.com/federicotdn/verb
(unless (package-installed-p 'verb)
  (package-install 'verb))

;; Import verb
(require 'verb)

;; Initialize verb
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map))
