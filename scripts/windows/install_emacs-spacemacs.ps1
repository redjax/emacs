if ( -Not ( Get-Command "git" -ErrorAction SilentlyContinue ) ) {
    winget install Git.Git
}

if ( -Not ( Get-Command "emacs" -ErrorAction SilentlyContinue ) ) {
    ./install_emacs-spacemacs.ps1
}

## Clone spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
