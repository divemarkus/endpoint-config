#!/usr/bin/env bash
set -e

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "🍎 Starting macOS bootstrap..."

# 1. Install Homebrew
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

brew update

# 2. Install packages
bash "$REPO_ROOT/macos/packages.sh"

# 3. Apply macOS defaults
bash "$REPO_ROOT/macos/defaults.sh"

# 4. Setup dotfiles (ZSH)
echo "🔗 Linking dotfiles..."

ln -sf "$REPO_ROOT/dotfiles/zsh/.zshrc" ~/.zshrc
ln -sf "$REPO_ROOT/dotfiles/zsh/aliases.zsh" ~/.aliases
ln -sf "$REPO_ROOT/dotfiles/zsh/exports.zsh" ~/.exports
ln -sf "$REPO_ROOT/dotfiles/zsh/functions.zsh" ~/.functions

# Git
ln -sf "$REPO_ROOT/dotfiles/git/.gitconfig" ~/.gitconfig

# SSH
mkdir -p ~/.ssh
ln -sf "$REPO_ROOT/dotfiles/ssh/config" ~/.ssh/config

# Optional: Starship
mkdir -p ~/.config
ln -sf "$REPO_ROOT/dotfiles/config/starship.toml" ~/.config/starship.toml || true

# 5. Zsh Plugins
echo "🔌 Installing Zsh plugins..."

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions || true
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting || true

echo "✅ macOS bootstrap complete. Restart terminal."