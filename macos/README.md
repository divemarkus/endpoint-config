
# 🚀 Your Own Production-Ready Dotfiles

This is a **clean, modern setup** using:

* Homebrew
* Oh My Zsh
* Brewfile-driven installs
* Idempotent bootstrap script

---

## 📁 Repo Structure

```
dotfiles/
├── Brewfile
├── bootstrap.sh
├── shell/
│   ├── .zshrc
│   ├── .zprofile
│   └── aliases.zsh
├── git/
│   └── .gitconfig
├── macos/
│   └── defaults.sh
└── README.md
```

---

## 🧰 Brewfile (Core Apps + Dev + ML)

```bash
# CLI tools
brew "git"
brew "wget"
brew "curl"
brew "htop"
brew "jq"
brew "fzf"
brew "ripgrep"
brew "bat"
brew "eza"
brew "zoxide"
brew "tmux"

# Dev
brew "python"
brew "node"
brew "go"
brew "rust"
brew "docker"
brew "docker-compose"

# ML / AI
brew "cmake"
brew "llvm"

# Apps
cask "iterm2"
cask "visual-studio-code"
cask "docker"
cask "raycast"
cask "rectangle"
cask "obsidian"

# Optional
cask "google-chrome"
```

---

## ⚙️ bootstrap.sh (One-Command Setup)

```bash
#!/usr/bin/env bash

set -e

echo "🚀 Installing Homebrew..."
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "🔄 Updating brew..."
brew update

echo "📦 Installing packages..."
brew bundle --file=./Brewfile

echo "🐚 Setting up Zsh config..."
ln -sf $(pwd)/shell/.zshrc ~/.zshrc
ln -sf $(pwd)/shell/.zprofile ~/.zprofile

echo "🔧 Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "🎨 Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || true
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || true

echo "⚡ Done! Restart terminal."
```

---

## 🐚 .zshrc (Optimized for Engineering)

```bash
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  git
  docker
  kubectl
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# PATH
export PATH="/opt/homebrew/bin:$PATH"

# Aliases
alias ll="eza -la --icons"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias k="kubectl"
alias d="docker"

# Navigation
eval "$(zoxide init zsh)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Python
export PYTHONWARNINGS="ignore"

# Node
export NODE_OPTIONS="--max-old-space-size=8192"
```

---

## ⚡ macos/defaults.sh (Optional System Tweaks)

```bash
# Faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
```

---

## ▶️ Usage

After fresh macOS install:

```bash
git clone https://github.com/YOURNAME/dotfiles.git
cd dotfiles
chmod +x bootstrap.sh
./bootstrap.sh
```

---

# 🧠 Proven GitHub Dotfiles (Need to inspect code)

If you want something battle-tested:

---

### 🔥 1. mathiasbynens/dotfiles

* Extremely popular
* Strong macOS defaults tuning
* Less dev-focused, more OS tuning

---

### ⚙️ 2. holman/dotfiles

* Classic engineering setup
* Modular + clean
* Good inspiration

---

### 🧪 3. ThePrimeagen/dotfiles

* Dev-heavy
* Neovim + terminal optimized
* Great if you go keyboard-first workflow

---

