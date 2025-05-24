$ScriptDir = (Split-Path $MyInvocation.MyCommand.Path -Parent)

if ( -Not ( Get-Command "git" -ErrorAction SilentlyContinue ) ) {
    Write-Host "Git is not installed. Installing with winget"
    try {
        winget install Git.Git
    }
    catch {
        Write-Error "Failed to install git. Details: $($_.Exception.Message)"
        exit 1
    }
}

if ( -Not ( Get-Command "emacs" -ErrorAction SilentlyContinue ) ) {
    try {
        . "$($ScriptDir)/install_emacs.ps1"
    }
    catch {
        Write-Error "Failed to install emacs. Details: $($_.Exception.Message)"
        exit 1
    }
}

Write-Host "Installing spacemacs"
## Clone spacemacs
try {
    git clone https://github.com/syl20bnr/spacemacs "$($env:AppData)/.emacs.d"
}
catch {
    Write-Error "Failed to clone spacemacs. Details: $($_.Exception.Message)"
    exit 1
}

Write-Host "Moving spacemacs init file"
try {
    Copy-Item "./distributions/spacemacs/init.el" "$($env:APPDATA)/.spacemacs"
}
catch {
    Write-Error "Failed to move spacemacs init file. Details: $($_.Exception.Message)"
    exit 1
}
