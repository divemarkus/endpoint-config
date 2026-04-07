#!/bin/bash

# Install zsh + tools
sudo apt install zsh -y

# Symlink dotfiles
ln -sf ~/repos/endpoint-config/dotfiles/zsh/.zshrc ~/.zshrc

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Source config
source ~/.zshrc