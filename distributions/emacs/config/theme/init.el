;; Theme loader -- only activate one at a time!

;; Uncomment the theme you want to use, comment out the rest.

;; (load (expand-file-name "catppuccin-theme.el" (file-name-directory load-file-name)))
(load (expand-file-name "nordic-night-theme.el" (file-name-directory load-file-name)))
;; (load (expand-file-name "zeno-theme.el" (file-name-directory load-file-name)))
;; (load (expand-file-name "melancholy-theme.el" (file-name-directory load-file-name)))
;; (load (expand-file-name "doom-themes.el" (file-name-directory load-file-name)))
;; (load (expand-file-name "modus-themes.el" (file-name-directory load-file-name)))

;; Disable any previously enabled themes for a clean switch
(mapc #'disable-theme custom-enabled-themes)

;; Activate the theme (uncomment the desired theme's load-theme line):

;; (load-theme 'catppuccin :no-confirm)
(load-theme 'nordic-night :no-confirm)
;; (load-theme 'zeno :no-confirm)
;; (load-theme 'melancholy :no-confirm)
;; (load-theme 'doom-one :no-confirm)
;; (load-theme 'modus-vivendi :no-confirm)  ;; Or 'modus-operandi for light mode
