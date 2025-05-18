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

## If script is called directly, run the install function
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  install_emacs_debian "$EMACS_VERSION"
fi
