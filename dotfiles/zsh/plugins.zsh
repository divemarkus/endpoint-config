# plugins.zsh

# ----------------------------------------

# 🔌 OH MY ZSH PLUGINS

# ----------------------------------------

# Core plugins (loaded by Oh My Zsh)

plugins=(
git
docker
kubectl
sudo
zsh-autosuggestions
zsh-syntax-highlighting
)

# ----------------------------------------

# ⚡ PERFORMANCE SETTINGS

# ----------------------------------------

# Faster completion

ZSH_DISABLE_COMPFIX="true"
DISABLE_UPDATE_PROMPT="true"

# History optimization

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# ----------------------------------------

# 🧠 AUTOSUGGESTIONS CONFIG

# ----------------------------------------

# Highlight suggestion color (subtle gray)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7c7c7c"

# Faster suggestions

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ----------------------------------------

# 🎨 SYNTAX HIGHLIGHTING FIX (IMPORTANT)

# ----------------------------------------

# Must be LAST plugin loaded

# (Oh My Zsh handles this automatically if plugin order is correct)

# ----------------------------------------

# 🚀 OPTIONAL: FZF (if installed)

# ----------------------------------------

if command -v fzf >/dev/null 2>&1; then
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
fi

# ----------------------------------------

# ⚙️ OPTIONAL: STARSHIP PROMPT

# ----------------------------------------

if command -v starship >/dev/null 2>&1; then
eval "$(starship init zsh)"
fi

# ----------------------------------------

# 🐳 DOCKER SHORTCUT ENV

# ----------------------------------------

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

# ----------------------------------------

# ☸️ KUBECTL AUTOCOMPLETE

# ----------------------------------------

if command -v kubectl >/dev/null 2>&1; then
source <(kubectl completion zsh)
fi

# ----------------------------------------

# 🧪 DEV QUALITY OF LIFE

# ----------------------------------------

# Enable colored man pages

export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

# ----------------------------------------

# ✅ FINAL NOTE

# ----------------------------------------

# This file is sourced BEFORE Oh My Zsh is initialized.

# Make sure `.zshrc` includes:

#

# source $DOTFILES/plugins.zsh

# source $ZSH/oh-my-zsh.sh

#

# Plugin order matters for correct behavior.
