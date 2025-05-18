#!/bin/bash

info() { echo "[INFO] $@"; }
debug() { echo "[DEBUG] $@"; }
warning() { echo "[WARNING] $@"; }
error() { echo "[ERROR] $@"; }

CWD=$(pwd)
debug "Script dir: $CWD"

DOTCONFIG_DIR="${HOME}/.config"
debug ".config dir: $DOTCONFIG_DIR"

# EMACS_CONFIG_SRC="${CWD}/
# debug "Emacs config src: $EMACS_CONFIG_SRC"

DOOM_CONFIG_SRC="${CWD}/distributions/doom"
debug "Doom config src: $DOOM_CONFIG_SRC"

DOOM_CONFIG_DEST="${DOTCONFIG_DIR}/doom"
debug "Doom config dest: $DOOM_CONFIG_DEST"

if [[ ! -d "${DOTCONFIG_DIR}" ]]; then
    info "Path '${DOTCONFIG_DIR}' does not exist. Creating."
    mkdir -pv "${DOTCONFIG_DIR}"
else
    if [[ -d $DOOM_CONFIG_DEST ]]; then
        warning "Doom config already exists at $DOOM_CONFIG_DEST"
    elif [ -L "${DOOM_CONFIG_DEST}" ]; then
        info "Doom config path is a symlink. Removing link"
        rm "${DOOM_CONFIG_DEST}"
    else
        info "Doom config path is not a symlink. Backing up to ${DOOM_CONFIG_DEST}.bak"
        mv "${DOOM_CONFIG_DEST}" "${DOOM_CONFIG_DEST}.bak"
    fi
fi

info "Creating symlink from ${DOOM_CONFIG_SRC} to ${DOOM_CONFIG_DEST}"
ln -s "${DOOM_CONFIG_SRC}" "${DOOM_CONFIG_DEST}"

if [[ ! $? -eq 0 ]]; then
    error "Error occurred creating symlink from ${DOOM_CONFIG_SRC} to ${DOOM_CONFIG_DEST}"
    exit 1
fi

if [[ ! -L "${DOOM_CONFIG_DEST}" ]]; then
    error "Error occurred creating symlink from ${DOOM_CONFIG_SRC} to ${DOOM_CONFIG_DEST}"
    exit 1
fi
