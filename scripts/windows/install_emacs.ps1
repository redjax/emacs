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

Install-Emacs
