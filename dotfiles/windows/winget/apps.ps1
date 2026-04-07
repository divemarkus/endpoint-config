# apps.ps1

$apps = @(
    "Git.Git"
    "Microsoft.VisualStudioCode"
    "Docker.DockerDesktop"
    "OpenJS.NodeJS"
    "Python.Python.3"
    "Kubernetes.kubectl"
)

foreach ($app in $apps) {
    winget install --id=$app -e --silent
}