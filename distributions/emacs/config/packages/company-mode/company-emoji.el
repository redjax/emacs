(unless (package-installed-p 'company-emoji)
  (package-install 'company-emoji))

(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-emoji))
