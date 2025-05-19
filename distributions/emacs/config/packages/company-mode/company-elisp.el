(with-eval-after-load 'company
  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (setq-local company-backends
                          '((company-elisp company-dabbrev-code company-keywords)))))
  )
