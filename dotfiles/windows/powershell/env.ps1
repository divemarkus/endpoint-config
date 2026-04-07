# env.ps1

$env:EDITOR = "code"
$env:DEV_HOME = "$HOME\dev"

# ML
$env:MODEL_DIR = "$HOME\models"

# Docker
$env:DOCKER_BUILDKIT = "1"

# Kubernetes
$env:KUBECONFIG = "$HOME\.kube\config"