#!/bin/bash

EMACS_VERSION="28.2"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

## Source script with emacs installer function
. $SCRIPT_DIR/install_emacs.sh $EMACS_VERSION

install_emacs_debian $EMACS_VERSION
if [ $? -ne 0 ]; then
  echo "Failed to install emacs."
  exit 1
fi

## Clone spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
