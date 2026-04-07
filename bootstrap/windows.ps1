# bootstrap/windows.ps1

$REPO = "$HOME\repos\endpoint-config"

Write-Host "[+] Cloning repo..."
git clone https://github.com/divemarkus/endpoint-config.git $REPO

Write-Host "[+] Installing apps..."
& "$REPO\dotfiles\windows\winget\apps.ps1"

Write-Host "[+] Linking PowerShell profile..."

New-Item -ItemType Directory -Force -Path (Split-Path $PROFILE)

New-Item -ItemType SymbolicLink `
    -Path $PROFILE `
    -Target "$REPO\dotfiles\windows\powershell\Microsoft.PowerShell_profile.ps1" `
    -Force

Write-Host "[+] Done. Restart PowerShell."