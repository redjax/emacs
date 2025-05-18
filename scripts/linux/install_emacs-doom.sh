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

if ! command -v git &> /dev/null; then
  echo "git is not installed."
  exit 1
fi

## Execute doom installer
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
