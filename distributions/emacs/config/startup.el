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
