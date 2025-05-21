$SPACEMACS_FRAMEWORK = "$($env:USERPROFILE)/.emacs.d"
$SPACEMACS_CONFIG1 = "$($env:USERPROFILE)/.spacemacs"
$SPACEMACS_CONFIG2 = "$($env:USERPROFILE)/.spacemacs.d"

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

Remove-EmacsDir($SPACEMACS_FRAMEWORK)
Remove-EmacsDir($SPACEMACS_CONFIG1)
Remove-EmacsDir($SPACEMACS_CONFIG2)
