#!/bin/bash

EMACS_VERSION="28.2"

install_emacs_debian() {
  EMACS_VER=$1
  sudo apt-get update
  sudo apt-get install -y build-essential libgtk-3-dev libgnutls28-dev libjansson-dev libgccjit-*-dev \
    libxpm-dev libjpeg-dev libgif-dev libtiff-dev libncurses-dev wget

  cd /tmp
  wget https://ftp.gnu.org/gnu/emacs/emacs-${EMACS_VER}.tar.xz
  tar -xf emacs-${EMACS_VER}.tar.xz
  cd emacs-${EMACS_VER}
  ./configure --with-native-compilation --with-json --with-modules
  make -j"$(nproc)"
  sudo make install
}

echo "Cloning Doom emacs into ~/.config/emacs"
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
if [[ $? -ne 0 ]]; then
  echo "Failed to clone Doom emacs"
  exit 1
fi

## Execute doom installer
~/.config/emacs/bin/doom install
