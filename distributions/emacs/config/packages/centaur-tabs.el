;; Install centaur-tabs https://github.com/ema2159/centaur-tabs
(unless (package-installed-p 'centaur-tabs)
  (package-install 'centaur-tabs))

;; Import centaur-tabs
(require 'centaur-tabs)

;; Configuration

;; Initialize centaur tabs
(centaur-tabs-mode t)

;; Set keybinds
(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)

;; Match typeface
(centaur-tabs-headline-match)

;; Tabs style
;  Options: bar, alternate, box, chamfer, rounded, slant, wave, zigzag
(setq centaur-tabs-style "bar")

;; Set tab height
(setq centaur-tabs-height 32)

;; Display tab icons
(setq centaur-tabs-set-icons t)

;; Use plain icons (no color)
; (setq centaur-tabs-plain-icons t)

;; Gray-out unselected tabs
(setq centaur-tabs-gray-out-icons 'buffer)

;; Indicate selected tab bar
(setq centaur-tabs-set-bar 'left)

;; Indicate with line over top of tab
; (setq centaur-tabs-set-bar 'over)

;; Indicate with line under tab
; (setq centaur-tabs-set-bar 'under)
;; Note: If you're not using Spacmeacs, in order for the underline to display
;  correctly you must add the following line:
; (setq x-underline-at-descent-line t)

;; String for close button
(setq centaur-tabs-close-button "x")

;; Indicate modified tabs
(setq centaur-tabs-set-modified-marker t)

;; String character for modified tabs
(setq centaur-tabs-modified-marker "*")
