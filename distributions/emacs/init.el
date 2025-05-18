;; Import config modules
(load (expand-file-name "config/packages.el" user-emacs-directory))
(load (expand-file-name "config/leaf.el" user-emacs-directory))
(load (expand-file-name "config/startup.el" user-emacs-directory))
(load (expand-file-name "config/ui.el" user-emacs-directory))
(load (expand-file-name "config/editing.el" user-emacs-directory))

(custom-set-variables
 '(package-selected-packages '(leaf-keywords leaf)))
(custom-set-faces)
