;; Install dirvish https://github.com/alexluigit/dirvish
(unless (package-installed-p 'dirvish)
  (package-install 'dirvish))

;; Import dirvish
(require 'dirvish)

;; Set dirvish activation to C-c b
(with-eval-after-load 'dirvish
  (global-set-key (kbd "C-c b") #'dirvish-side))

;; Initialize dirvish (leave at bottom)
(dirvish-override-dired-mode)
