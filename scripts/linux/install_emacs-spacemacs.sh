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

if ! command -v emacs --version 2>&1 > /dev/nul; then
  echo "emacs will be installeed"
  install_emacs_debian $EMACS_VERSION
fi

if ! command -v git 2>&1 > /dev/null; then
  echo "git is not installed."
  exit 1
fi

## TODO: Write spacemacs install commands
