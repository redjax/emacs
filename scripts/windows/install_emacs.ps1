function Install-Emacs {
    if ( Get-Command "emacs" -ErrorAction SilentlyContinue ) {
        Write-Host "Emacs is already installed." -ForegroundColor Green
    }
    else {
        Write-Host "Installing Emacs..." -ForegroundColor Green
        try {
            winget install GNU.Emacs
        }
        catch {
            Write-Error "Failed to install Emacs."
            Write-Error "Exception details: $($exc.Message)"

            exit 1
        }
    }
}

function Set-EmacsBinPath {
    # Set path to Emacs bin directory
    $emacsBin = "C:\Program Files\Emacs\bin"

    ## Get the current user PATH
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")

    ## Only add if not already present
    if (-not ($currentPath -split ';' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ieq $emacsBin })) {
        $newPath = if ($currentPath) { "$currentPath;$emacsBin" } else { $emacsBin }
        [Environment]::SetEnvironmentVariable("PATH", $newPath, "User")
        Write-Host "Emacs bin directory added to user PATH."
    }
    else {
        Write-Host "Emacs bin directory is already in user PATH."
    }
}

try {
    Install-Emacs
} 
catch {
    Write-Error "Failed to install Emacs."
    Write-Error "Exception details: $($exc.Message)"
}

try {
    Set-EmacsBinPath
} 
catch {
    Write-Error "Failed to set Emacs bin path."
    Write-Error "Exception details: $($exc.Message)"
}
