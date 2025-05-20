;; Theme loader -- only activate one at a time!

;; Uncomment the theme you want to use, comment out the rest.
;;  Activate a theme in the "Activate theme theme" section below

;; Catppuccin
;; (load (expand-file-name "catppuccin-theme.el" (file-name-directory load-file-name)))
;; Nordic night
;; (load (expand-file-name "nordic-night-theme.el" (file-name-directory load-file-name)))
;; Zeno
;; (load (expand-file-name "zeno-theme.el" (file-name-directory load-file-name)))
;; Melancholy
;; (load (expand-file-name "melancholy-theme.el" (file-name-directory load-file-name)))
;; Doom
;; (load (expand-file-name "doom-themes.el" (file-name-directory load-file-name)))
;; Modus themes
;; (load (expand-file-name "modus-themes.el" (file-name-directory load-file-name)))
;; Zenburn
;; (load (expand-file-name "zenburn-theme.el" (file-name-directory load-file-name)))
;; Spacemacs
;; (load (expand-file-name "spacemacs-theme.el" (file-name-directory load-file-name)))
;; Gruvbox
;; (load (expand-file-name "gruvbox-theme.el" (file-name-directory load-file-name)))
;; Ample
;; (load (expand-file-name "ample-theme.el" (file-name-directory load-file-name)))
;; Moe
;; (load (expand-file-name "moe-theme.el" (file-name-directory load-file-name)))
;; Atom One Dark
;; (load (expand-file-name "atom-one-dark-theme.el" (file-name-directory load-file-name)))
;; Doom
;; (load (expand-file-name "doom-themes.el" (file-name-directory load-file-name)))
;; Material
(load (expand-file-name "material-theme.el" (file-name-directory load-file-name)))

;; Disable any previously enabled themes for a clean switch
(mapc #'disable-theme custom-enabled-themes)

;; Activate the theme (uncomment the desired theme's load-theme line):

;; (load-theme 'catppuccin :no-confirm)
;; (load-theme 'nordic-night :no-confirm)
;; (load-theme 'zeno :no-confirm)
;; (load-theme 'melancholy :no-confirm)
;; (load-theme 'doom-one :no-confirm)
;; (load-theme 'modus-vivendi :no-confirm)  ;; Or 'modus-operandi for light mode
;; (load-theme 'zenburn :no-confirm)
;; (load-theme 'spacemacs-dark :no-confirm)
;; (load-theme 'gruvbox-dark-medium :no-confirm)
;; (load-theme 'ample :no-confirm)
;; (load-theme 'moe-dark :no-confirm)
;; (load-theme 'atom-one-dark :no-confirm)
;; (load-theme 'doom-one :no-confirm)
(load-theme 'material :no-confirm)
