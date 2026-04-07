# Microsoft.PowerShell_profile.ps1

$DOTFILES = "$HOME\repos\endpoint-config\dotfiles\windows\powershell"

# Load modules
. "$DOTFILES\aliases.ps1"
. "$DOTFILES\functions.ps1"
. "$DOTFILES\env.ps1"

# Prompt (optional)
if (Get-Command starship -ErrorAction SilentlyContinue) {
    Invoke-Expression (&starship init powershell)
}

Write-Host "✔ Environment Loaded" -ForegroundColor Green