#!/usr/bin/env bash
set -e

echo "📦 Installing Brew packages..."
brew bundle --file="$(dirname "$0")/Brewfile"