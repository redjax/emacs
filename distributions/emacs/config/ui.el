;; Show line numbers
(global-display-line-numbers-mode t)

;; Enable column number mode
(column-number-mode t)

;; Highlight current line
(global-hl-line-mode t)

;; Set a simple theme
(load-theme 'tango-dark t)

;; Enable matching parentheses highlighting
(show-paren-mode 1)

;; Set default font size
(set-face-attribute 'default nil :height 110)

;; Enable mouse mode
(unless (display-graphic-p)
  (xterm-mouse-mode 1))

;; Cycle through windows with Shift+ArrowKey
(windmove-default-keybindings)
