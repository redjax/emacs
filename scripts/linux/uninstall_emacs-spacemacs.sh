#!/bin/bash

info() { echo "[INFO] $*"; }
warning() { echo "[WARNING] $*"; }
error() { echo "[ERROR] $*" >&2; }

SPACEMACS_FRAMEWORK="$HOME/.emacs.d"
SPACEMACS_CONFIG1="$HOME/.spacemacs"
SPACEMACS_CONFIG2="$HOME/.spacemacs.d"

remove_path() {
    local path="$1"
    if [[ -e "$path" ]]; then
        info "Removing $path"
        rm -rf "$path"
    else
        info "Not found: $path"
    fi
}

info "Uninstalling Spacemacs framework and user config..."

remove_path "$SPACEMACS_FRAMEWORK"
remove_path "$SPACEMACS_CONFIG1"
remove_path "$SPACEMACS_CONFIG2"

info "Spacemacs uninstallation complete."
