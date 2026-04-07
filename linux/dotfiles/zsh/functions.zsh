# functions.zsh

mkcd () {
  mkdir -p "$1" && cd "$1"
}

git-clean-branches () {
  git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
}

deploy-infra () {
  cd ~/repos/infra && git pull && docker compose up -d
}