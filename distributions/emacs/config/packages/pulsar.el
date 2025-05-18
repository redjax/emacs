;; Install pulsar https://github.com/protesilaos/pulsar
(unless (package-installed-p 'pulsar)
  (package-install 'pulsar))

;; Import pulsar
(require 'pulsar)
