$ScriptDir = Split-Path $MyInvocation.MyCommand.Path -Parent
$DoomDir = Join-Path $env:APPDATA "emacs"
$DoomBin = Join-Path $DoomDir "bin\doom.ps1"

Write-Warning "This script is broken, installing emacs on Windows is a mess. Follow Doom's installation docs until this is fixed: https://github.com/doomemacs/doomemacs?tab=readme-ov-file#install"
exit 1

## Ensure git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git not found. Installing via winget..."
    try {
        winget install --id Git.Git --silent
    }
    catch {
        Write-Error "Failed to install git. $_"
        exit 1
    }
}

## Ensure emacs is installed
if (-not (Get-Command emacs -ErrorAction SilentlyContinue)) {
    try {
        . "$ScriptDir\install_emacs.ps1"
    }
    catch {
        Write-Error "Failed to install Emacs. $_"
        exit 1
    }
}

## Install Doom Emacs into $env:APPDATA\emacs
if (-not (Test-Path $DoomDir)) {
    Write-Host "Cloning Doom Emacs to $DoomDir"
    try {
        git clone --depth 1 https://github.com/doomemacs/doomemacs $DoomDir
    }
    catch {
        Write-Error "Failed to clone Doom Emacs. $_"
        exit 1
    }
}
else {
    Write-Host "Doom Emacs already cloned at $DoomDir"
}

## Run Doom Emacs installer
Write-Host "Running Doom Emacs install script..."
try {
    & $DoomBin install
}
catch {
    Write-Error "Failed to run Doom install. $_"
    exit 1
}

## Symlink/copy config
Write-Host "Linking Doom config..."
try {
    . "$ScriptDir\symlink-config.ps1" -Config doom
}
catch {
    Write-Error "Failed to symlink Doom config. $_"
    exit 1
}
