#!/bin/bash

## Logging functions
info()    { echo "[INFO] $*"; }
debug()   { echo "[DEBUG] $*"; }
warning() { echo "[WARNING] $*"; }
error()   { echo "[ERROR] $*" >&2; }

## Allowed config options (which emacs distribution to use)
CONFIG_OPTIONS=("doom" "spacemacs" "emacs")

## Script paths
CWD=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTCONFIG_DIR="${HOME}/.config"
EMACSD_DIR="${HOME}/.emacs.d"

## Doom emacs
DOOM_CONFIG_SRC="${CWD}/distributions/doom"
DOOM_CONFIG_DEST="${DOTCONFIG_DIR}/doom"

## Spacemacs
SPACEMACS_CONFIG_SRC="${CWD}/distributions/spacemacs"
SPACEMACS_CONFIG_DEST="${HOME}/.spacemacs.d"

## Vanilla emacs
EMACS_CONFIG_SRC="${CWD}/distributions/emacs"
EMACS_CONFIG_DEST="${EMACSD_DIR}"

## Utility for safe symlink creation
safe_symlink() {
    local src="$1"
    local dest="$2"

    if [[ -L "$dest" ]]; then
        info "Removing existing symlink at $dest"
        rm "$dest"
    elif [[ -e "$dest" ]]; then
        info "Backing up existing $dest to ${dest}.bak"
        mv "$dest" "${dest}.bak"
    fi

    info "Creating symlink: $src -> $dest"
    ln -s "$src" "$dest"

    if [[ $? -ne 0 || ! -L "$dest" ]]; then
        error "Failed to create symlink for $dest"
        exit 1
    fi
}

## symlink doom
symlink_doom_config() {
    safe_symlink "$DOOM_CONFIG_SRC" "$DOOM_CONFIG_DEST"
}

## symlink spacemacs
symlink_spacemacs_config() {
    safe_symlink "$SPACEMACS_CONFIG_SRC" "$SPACEMACS_CONFIG_DEST"
}

## symlink vanilla emacs
symlink_emacs_config() {
    safe_symlink "$EMACS_CONFIG_SRC" "$EMACS_CONFIG_DEST"
}

main() {
    local config_name="${1:-emacs}"

    if [[ ! " ${CONFIG_OPTIONS[*]} " =~ " $config_name " ]]; then
        error "Unknown config '$config_name'. Valid options: ${CONFIG_OPTIONS[*]}"
        exit 1
    fi

    ## Ensure config directories exist
    [[ -d "$DOTCONFIG_DIR" ]] || mkdir -pv "$DOTCONFIG_DIR"

    case "$config_name" in
        doom)
            symlink_doom_config
            ;;
        spacemacs)
            symlink_spacemacs_config
            ;;
        emacs)
            symlink_emacs_config
            ;;
    esac

    info "Symlinked $config_name configuration successfully."
}

main "$@"
