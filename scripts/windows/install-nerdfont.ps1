[CmdletBinding()]
Param(
    [Parameter(Mandatory = $false, HelpMessage = "Scoop package name for Nerd Font to install")]
    ## Other options:
    #  - Hack-NF-Mono
    #  - FiraCode-NF-Mono
    [string]$FontName = "Hack-NF-Mono"
)

try {
    scoop install aria2
    if ( -Not $(scoop config aria2-enabled) -eq $True) {
        scoop config aria2-enabled true
    }
}
catch {
    Write-Error "Failed to install aria2."
    Write-Error "Exception details: $($exc.Message)"
}

Write-Host "Enable scoop buckets"
try {
    scoop bucket add extras
    scoop bucket add nerd-fonts
}
catch {
    Write-Error "Failed to enable 1 or more scoop buckets."
    Write-Error "Exception details: $($exc.Message)"
}

Write-Host "Disable scoop warning when using aria2 for downloads"
try {
    scoop config aria2-warning-enabled false
}
catch {
    Write-Error "Failed to disable aria2 warning."
    Write-Error "Exception details: $($exc.Message)"
}

Write-Host "Installing font: $($FontName)"
try {
    scoop install $FontName
}
catch {
    Write-Error "Failed to install font: $($FontName)"
    Write-Error "Exception details: $($exc.Message)"
}
