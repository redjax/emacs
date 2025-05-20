;; Show line numbers
(global-display-line-numbers-mode t)

;; Enable column number mode
(column-number-mode t)

;; Highlight current line
(global-hl-line-mode t)

;; Set a simple theme
; (load-theme 'tango-dark t)

;; Enable matching parentheses highlighting
(show-paren-mode 1)

;; Function to set font
(defun font-available-p (font-name)
  (find-font (font-spec :name font-name)))

;; Set default font
(cond
 ((font-available-p "Fira Code")
  (set-frame-font "Fira Code-12"))
 ((font-available-p "JetBrains Mono")
  (set-frame-font "JetBrains Mono-12"))
 ((font-available-p "DejaVu Sans Mono")
  (set-frame-font "DejaVu Sans Mono-12")))

;; Enable mouse mode
(unless (display-graphic-p)
  (xterm-mouse-mode 1))

;; Cycle through windows with Shift+ArrowKey
(windmove-default-keybindings)
