# functions.ps1

function mkcd {
    param([string]$path)
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Set-Location $path
}

function reload {
    . $PROFILE
}

function deploy-infra {
    Set-Location "$HOME\repos\infra"
    git pull
    docker compose up -d
}