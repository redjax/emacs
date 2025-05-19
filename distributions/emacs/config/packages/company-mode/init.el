;; Install & configure company-mode https://github.com/company-mode/company-mode?
(use-package company
  :ensure t
  :init
  (global-company-mode)
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)) ;; Show suggestions immediately

;; Load backend configs
(load (expand-file-name "company-files.el" (file-name-directory load-file-name)))
(load (expand-file-name "company-capf.el" (file-name-directory load-file-name)))
(load (expand-file-name "company-keywords.el" (file-name-directory load-file-name)))
(load (expand-file-name "company-shell.el" (file-name-directory load-file-name)))
(load (expand-file-name "company-emoji.el" (file-name-directory load-file-name)))
(load (expand-file-name "company-jedi.el" (file-name-directory load-file-name)))

;; Set up company-backends
(setq company-backends
      '((company-capf :with company-files company-keywords company-emoji)))

;; Set elisp backend
; (with-eval-after-load 'company
;   (add-hook 'emacs-lisp-mode-hook
;             (lambda ()
;               (setq-local company-backends
;                           '((company-elisp company-dabbrev-code company-keywords)))))
;   )
