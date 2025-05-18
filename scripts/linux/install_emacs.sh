#!/bin/bash

EMACS_VERSION="28.2"

## Detect Linux distro ID from /etc/os-release
get_distro() {
  if [[ -f /etc/os-release ]]; then
    ## shellcheck disable=SC1091
    source /etc/os-release
    echo "$ID"
  else
    echo "unknown"
  fi
}

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

install_emacs_redhat() {
  local EMACS_VER=$1

  sudo dnf install -y gcc gcc-c++ make gtk3-devel gnutls-devel jansson-devel libgccjit-devel \
    libXpm-devel libjpeg-turbo-devel giflib-devel libtiff-devel ncurses-devel wget

  cd /tmp || exit 1

  wget https://ftp.gnu.org/gnu/emacs/emacs-"${EMACS_VER}".tar.xz

  tar -xf emacs-"${EMACS_VER}".tar.xz

  cd emacs-"${EMACS_VER}" || exit 1

  ./configure --with-native-compilation --with-json --with-modules
  make -j"$(nproc)"
  sudo make install
}

install_emacs() {
  EMACS_VER=$1
  local distro
  distro=$(get_distro)

  case "$distro" in
    ubuntu|debian|raspbian)
      echo "Detected Debian-based distro: $distro"
      install_emacs_debian "$EMACS_VER"
      ;;
    fedora|centos|rhel|rocky|almalinux)
      echo "Detected Red Hat-based distro: $distro"
      install_emacs_redhat "$EMACS_VER"
      ;;
    *)
      echo "Unsupported or unknown distro: $distro"
      echo "Please install dependencies and Emacs manually."
      exit 1
      ;;
  esac
}

## If script is called directly, run the install function
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  install_emacs "$EMACS_VERSION"
fi
