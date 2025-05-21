if ( -Not ( Get-Command "git" -ErrorAction SilentlyContinue ) ) {
    winget install Git.Git
}

if ( -Not ( Get-Command "emacs" -ErrorAction SilentlyContinue ) ) {
    ./install_emacs-spacemacs.ps1
}

## Execute doom installer
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
