;; Install avy https://github.com/abo-abo/avy
(unless (package-installed-p 'avy)
  (package-install 'avy))

;; Import avy
(require 'avy)

;; Initialize avy
(avy-setup-default)

;; Configuration

;; Keybinds
; Global keybind
(global-set-key (kbd "C-c C-j") 'avy-resume)

; GoTo character, i.e. C-: b
(global-set-key (kbd "C-:") 'avy-goto-char)

; Search string, i.e. C-' some phrase to find
(global-set-key (kbd "C-'") 'avy-goto-char-timer)

; GoTo line, i.e. M-g f 120
(global-set-key (kbd "M-g f") 'avy-goto-line)

; GoTo word, i.e. M-g wb searchTerm
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
