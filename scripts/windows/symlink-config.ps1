<#
.SYNOPSIS
    Install Emacs configuration (Doom, Spacemacs, or vanilla) for Windows users.

.DESCRIPTION
    Creates a symbolic link from your repository's Emacs config directory to the appropriate user config location.
    If run as administrator, uses a symlink; otherwise, falls back to copying the directory.
    Backs up any existing config directory as needed.

.PARAMETER Config
    Which Emacs configuration to install: 'doom', 'spacemacs', or 'emacs' (default: 'emacs')

.PARAMETER DryRun
    Perform a dry run without making changes.

.PARAMETER Force
    Overwrite existing config if present.

.EXAMPLE
    .\symlink-emacs-config.ps1 -Config doom

.EXAMPLE
    .\symlink-emacs-config.ps1 -Config spacemacs -Force

.EXAMPLE
    .\symlink-emacs-config.ps1 -Config emacs -DryRun
#>
[CmdletBinding()]
Param(
    [Parameter(Mandatory = $false, HelpMessage = "Which Emacs config to install: doom, spacemacs, emacs")]
    [ValidateSet("doom", "spacemacs", "emacs")]
    [string]$Config = "emacs",

    [Parameter(Mandatory = $false, HelpMessage = "Dry run mode")]
    [switch]$DryRun,

    [Parameter(Mandatory = $false, HelpMessage = "Overwrite existing config")]
    [switch]$Force
)

function Write-Info { Write-Host "[INFO] $args" -ForegroundColor Cyan }
function Write-Warning { Write-Host "[WARNING] $args" -ForegroundColor Yellow }
function Write-Error { Write-Host "[ERROR] $args" -ForegroundColor Red }
function Write-Debug { if ($PSCmdlet.MyInvocation.BoundParameters["Debug"]) { Write-Host "[DEBUG] $args" -ForegroundColor Gray } }

function Test-IsAdmin {
    return ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
}

function New-WindowsEmacsPointer {
    $PointerFile = Join-Path $env:APPDATA ".emacs"
    #     $PointerFileContents = @"
    # (setq user-init-file "$($PointerFile -replace '\\', '/')")
    # (setq user-emacs-directory "$($EMACSD -replace '\\', '/')")
    # (setq default-directory "$($env:USERPROFILE -replace '\\', '/')")
    # (setenv "HOME" "$($env:USERPROFILE -replace '\\', '/')")
    # (load user-init-file)
    # "@
    $PointerFileContents = @"
(load (expand-file-name "init.el" "~/.emacs.d/"))
"@
    
    Write-Host "Creating .emacs file at path $PointerFile"

    try {
        ## Echo the $PointerFileContents into .emacs file
        Set-Content -Path $PointerFile -Value $PointerFileContents
    }
    catch {
        Write-Error "Failed to create .emacs file at path $PointerFile"
        Write-Error "Exception details: $($_.Exception.Message)"
        exit 1
    }
}

function Backup-ExistingConfig {
    param(
        [string]$Path
    )
    $bakPath = "$Path.bak"
    if (Test-Path $Path) {
        if (Test-Path $bakPath) {
            if ($DryRun) {
                Write-Info "Dry run: Would remove existing backup $bakPath"
            }
            else {
                Write-Info "Removing existing backup $bakPath"
                Remove-Item $bakPath -Recurse -Force
            }
        }
        if ($DryRun) {
            Write-Info "Dry run: Would backup $Path to $bakPath"
        }
        else {
            Write-Info "Backing up $Path to $bakPath"
            Move-Item $Path $bakPath -Force
        }
    }
}

function Safe-Symlink {
    param(
        [string]$Source,
        [string]$Dest
    )
    if (Test-Path $Dest) {
        if ((Get-Item $Dest).Attributes -band [IO.FileAttributes]::ReparsePoint) {
            Write-Info "Removing existing symlink at $Dest"
            if (-not $DryRun) { Remove-Item $Dest -Force }
        }
        else {
            Backup-ExistingConfig -Path $Dest
        }
    }
    Write-Info "Creating symlink: $Dest -> $Source"
    if (-not $DryRun) {
        try {
            New-Item -ItemType SymbolicLink -Path $Dest -Target $Source -Force | Out-Null
        }
        catch {
            Write-Error "Failed to create symlink: $($_.Exception.Message)"
            exit 1
        }
    }
}

function Safe-Copy {
    param(
        [string]$Source,
        [string]$Dest
    )
    if (Test-Path $Dest) {
        Backup-ExistingConfig -Path $Dest
    }
    Write-Info "Copying $Source to $Dest"
    if (-not $DryRun) {
        try {
            Copy-Item $Source $Dest -Recurse -Force
        }
        catch {
            Write-Error "Failed to copy: $($_.Exception.Message)"
            exit 1
        }
    }
}

# Set config source/destination based on choice
$CWD = Get-Location
$DOTCONFIG = Join-Path $env:USERPROFILE ".config"
$EMACSD = Join-Path $env:USERPROFILE ".emacs.d"

switch ($Config) {
    "doom" {
        $ConfigSrc = Join-Path $CWD "distributions/doom"
        $ConfigDest = Join-Path $DOTCONFIG "doom"
    }
    "spacemacs" {
        $ConfigSrc = Join-Path $CWD "distributions/spacemacs"
        $ConfigDest = Join-Path $env:USERPROFILE ".spacemacs.d"
    }
    "emacs" {
        $ConfigSrc = Join-Path $CWD "distributions/emacs"
        $ConfigDest = $EMACSD
    }
}

# Ensure parent directory exists
$ParentDir = Split-Path $ConfigDest -Parent
if (-not (Test-Path $ParentDir)) {
    if ($DryRun) {
        Write-Info "Dry run: Would create directory $ParentDir"
    }
    else {
        Write-Info "Creating directory $ParentDir"
        New-Item -ItemType Directory -Path $ParentDir -Force | Out-Null
    }
}

# Main logic
$IsAdmin = Test-IsAdmin
if ($IsAdmin) {
    Write-Info "Running as administrator. Using symbolic link."
    Safe-Symlink -Source $ConfigSrc -Dest $ConfigDest
}
else {
    Write-Warning "Not running as administrator. Falling back to copy."
    Write-Warning "You will need to re-run this script after updating your repo."
    Safe-Copy -Source $ConfigSrc -Dest $ConfigDest
}

## Create .emacs pointer file
try {
    New-WindowsEmacsPointer
}
catch {
    Write-Error "Failed to create .emacs file at path $PointerFile"
    Write-Error "Exception details: $($exc.Message)"
    exit 1
}

Write-Info "Installed $Config configuration successfully."
