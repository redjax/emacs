#!/bin/bash

info()    { echo "[INFO] $*"; }
warning() { echo "[WARNING] $*"; }
error()   { echo "[ERROR] $*" >&2; }

## Core Doom Emacs install locations
DOOM_CORE1="$HOME/.emacs.d"
DOOM_CORE2="$HOME/.config/emacs"

## Doom user config locations
DOOM_USER1="$HOME/.doom.d"
DOOM_USER2="$HOME/.config/doom"

## Other possible Emacs config locations (optional)
EMACS_CONFIG1="$HOME/.emacs"
EMACS_CONFIG2="$HOME/.emacs.d"
EMACS_CONFIG3="$HOME/.config/emacs"

remove_dir() {
    local dir="$1"
    if [[ -e "$dir" ]]; then
        info "Removing $dir"
        rm -rf "$dir"
    else
        info "Not found: $dir"
    fi
}

info "Removing Doom Emacs core and config directories..."

remove_dir "$DOOM_CORE1"
remove_dir "$DOOM_CORE2"
remove_dir "$DOOM_USER1"
remove_dir "$DOOM_USER2"

## Uncomment these lines if you want to remove all other Emacs configs as well:
#  warning "The following will remove ALL your Emacs configurations, including non-Doom configs!"
# remove_dir "$EMACS_CONFIG1"
# remove_dir "$EMACS_CONFIG2"
# remove_dir "$EMACS_CONFIG3"

info "Doom Emacs uninstallation complete."
