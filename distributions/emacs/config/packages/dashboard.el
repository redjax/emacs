;; Install dashboard.el https://github.com/emacs-dashboard/emacs-dashboard
(unless (package-installed-p 'dashboard)
  (package-refresh-contents)
  (package-install 'dashboard))

(require 'dashboard)
(dashboard-setup-startup-hook)

;; Configure dashboard

;; Show dashboard in clients opened with emacsclient -c
(setq initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))

;; Use nerd-icons pack
(setq dashboard-display-icons-p t)
(setq dashboard-icon-type 'nerd-icons)

;; Use all-the-icons pack
;; (setq dashboard-icon-type 'all-the-icons)  ; use `all-the-icons' package

;; Use all-the-icons pack
;; (setq dashboard-icon-type 'all-the-icons)  ; use `all-the-icons' package

;; Set the banner
(setq dashboard-startup-banner 'official)
;; Center content
(setq dashboard-center-content t)
;; Vertically center content
(setq dashboard-vertically-center-content t)

;; Set items shown on dashboard
(setq dashboard-items '(
    (recents . 5)
    (bookmarks . 5)
    (projects . 5)
    (agenda . 5)
    (registers . 5)
))

;; Customize banner display elements
(setq dashboard-startupify-list '(
    dashboard-insert-banner
    dashboard-insert-newline
    dashboard-insert-banner-title
    dashboard-insert-newline
    dashboard-insert-navigator
    dashboard-insert-newline
    dashboard-insert-init-info
    dashboard-insert-items
    dashboard-insert-newline
    dashboard-insert-footer)
)

;; Enable cycling between sections
;; (setq dashboard-navigation-cycle t)

;; Customize item shortcuts
(setq dashboard-item-shortcuts '(
    (recents   . "r")
    (bookmarks . "m")
    (projects  . "p")
    (agenda    . "a")
    (registers . "e")
  )
)
