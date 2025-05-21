## Core Doom Emacs install locations
$DOOM_CORE1 = "$($env:USERPROFILE)/.emacs.d"
$DOOM_CORE2 = "$($env:USERPROFILE)/.config/emacs"

## Doom user config locations
$DOOM_USER1 = "$($env:USERPROFILE)/.doom.d"
$DOOM_USER2 = "$($env:USERPROFILE)/.config/doom"

## Other possible Emacs config locations (optional)
$EMACS_CONFIG1 = "$($env:USERPROFILE)/.emacs"
$EMACS_CONFIG2 = "$($env:USERPROFILE)/.emacs.d"
$EMACS_CONFIG3 = "$($env:USERPROFILE)/.config/emacs"

function Remove-EmacsDir {
    Param(
        [Parameter(Mandatory = $false, HelpMessage = "Directory to remove")]
        [string]$RMDir
    )

    if (Test-Path $RMDir) {
        Write-Host "Removing $RMDir"
        Remove-Item $RMDir -Recurse -Force
    }
}

Remove-EmacsDir($DOOM_CORE1)
Remove-EmacsDir($DOOM_CORE2)
Remove-EmacsDir($DOOM_USER1)
Remove-EmacsDir($DOOM_USER2)
