;; Install workgroups2 https://github.com/pashinin/workgroups2
;  Prefix: C-c z
(unless (package-installed-p 'workgroups2)
  (package-install 'workgroups2))

;; Import workgroups2
(require 'workgroups2)

;; Configuration

;; Change prefix key (before activating WG)
(setq wg-prefix-key "C-c z")

;; Set path to workgroups session file
(setq wg-session-file "~/.emacs.d/.emacs_workgroups")

;; Support special buffer (ivy)
;; (with-eval-after-load 'workgroups2
;;   ;; provide major mode, package to require, and functions
;;   (wg-support 'ivy-occur-grep-mode 'ivy
;;               `((serialize . ,(lambda (_buffer)
;;                                 (list (base64-encode-string (buffer-string) t))))
;;                 (deserialize . ,(lambda (buffer _vars)
;;                                   (switch-to-buffer (wg-buf-name buffer))
;;                                   (insert (base64-decode-string (nth 0 _vars)))
;;                                   ;; easier than `ivy-occur-grep-mode' to set up
;;                                   (grep-mode)
;;                                   ;; need return current buffer at the end of function
;;                                   (current-buffer))))))

;; Enable minor mode (keep at bottom)
; (workgroups-mode 1)
