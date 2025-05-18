;; Basic Vanilla Emacs Configuration

;; Suppress the startup message and splash screen
(setq inhibit-startup-message t
      inhibit-startup-screen t
      initial-scratch-message nil)

;; Open an empty buffer named "untitled" on startup
(defun my/create-empty-startup-buffer ()
  "Create a new empty buffer on startup."
  (let ((buf (get-buffer-create "untitled")))
    (switch-to-buffer buf)
    (fundamental-mode)))

(add-hook 'emacs-startup-hook #'my/create-empty-startup-buffer)

;; Show line numbers in programming and text modes only (optional, less intrusive)
;; (add-hook 'prog-mode-hook #'display-line-numbers-mode)
;; (add-hook 'text-mode-hook #'display-line-numbers-mode)
(global-display-line-numbers-mode t)

;; Enable column number mode
(column-number-mode t)

;; Highlight current line
(global-hl-line-mode t)

;; Set a simple theme (optional)
(load-theme 'tango-dark t)

;; Enable matching parentheses highlighting
(show-paren-mode 1)

;; Set default font size (optional)
(set-face-attribute 'default nil :height 110)

;; Store backup and autosave files in a separate directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups/" user-emacs-directory))))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Set default tab width
(setq-default tab-width 4)

;; Set UTF-8 as default encoding
(prefer-coding-system 'utf-8)
