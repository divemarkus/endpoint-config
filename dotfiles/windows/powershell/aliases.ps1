# aliases.ps1

Set-Alias ll Get-ChildItem
Set-Alias gs git status
Set-Alias gp git pull
Set-Alias dc docker-compose

# repo shortcuts
function ep { Set-Location "$HOME\repos\endpoint-config" }
function infra { Set-Location "$HOME\repos\infra" }
function ml { Set-Location "$HOME\repos\mlguide" }