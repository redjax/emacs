(unless (package-installed-p 'company-shell)
  (package-install 'company-shell))

(with-eval-after-load 'company
  (add-hook 'sh-mode-hook
            (lambda ()
              (setq-local company-backends
                          '((company-shell company-files))))))
