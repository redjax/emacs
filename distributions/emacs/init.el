;; Add config directory to load-path
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

;; Load modules
(load "startup.el")
(load "ui.el")
(load "editing.el")
