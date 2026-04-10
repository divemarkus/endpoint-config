#!/usr/bin/env bash

echo "⚙️ Applying macOS defaults..."

# Key repeat speed
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Finder
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder || true

# Dock tweaks
defaults write com.apple.dock autohide -bool true
killall Dock || true