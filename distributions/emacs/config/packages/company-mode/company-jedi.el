(use-package company-jedi
  :ensure t
  :after (company python)
  :init
  (defun my/python-mode-company-jedi-setup ()
    (add-to-list 'company-backends 'company-jedi))
  (add-hook 'python-mode-hook #'my/python-mode-company-jedi-setup))
