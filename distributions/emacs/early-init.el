;; Speed up startup by raising GC threshold and disabling file handlers
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)
(defvar my/original-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

;; Disable UI elements before they are drawn
;; Disable menu bar
;; (menu-bar-mode -1)
;; Disable tool bar
;; (tool-bar-mode -1)
;; Disable scroll bar
;; (scroll-bar-mode -1)
;; Inhibit startup screens, messages
(setq inhibit-startup-screen nil
  inhibit-startup-message nil
  initial-scratch-message nil)

;; (Optional) Set frame defaults early
(setq frame-inhibit-implied-resize t)
(setq initial-frame-alist '((left-fringe . 0)
  (right-fringe . 0)
  (internal-border-width . 8)
  (tool-bar-lines . 0)))

;; Ensure packages are enabled at startup if you use package.el
(setq package-enable-at-startup t)

;; Restore GC and file handler settings after startup
(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold (* 50 1024 1024) ; 50MB is a good default
      gc-cons-percentage 0.1
      file-name-handler-alist my/original-file-name-handler-alist)))
