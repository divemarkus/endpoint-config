#!/bin/bash

set -e

REPO_DIR="$HOME/repos/endpoint-config"

echo "[+] Installing base packages..."
sudo apt update
sudo apt install -y zsh git curl

echo "[+] Cloning repo..."
mkdir -p ~/repos
git clone https://github.com/YOUR_USERNAME/endpoint-config.git $REPO_DIR

echo "[+] Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[+] Linking dotfiles..."

ln -sf $REPO_DIR/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf $REPO_DIR/dotfiles/git/.gitconfig ~/.gitconfig
mkdir -p ~/.ssh
ln -sf $REPO_DIR/dotfiles/ssh/config ~/.ssh/config

echo "[+] Done. Restart shell."