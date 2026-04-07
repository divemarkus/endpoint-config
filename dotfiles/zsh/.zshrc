# ~/.zshrc

DOTFILES="$HOME/repos/endpoint-config/dotfiles/zsh"

# Load modules
source $DOTFILES/aliases.zsh
source $DOTFILES/exports.zsh
source $DOTFILES/functions.zsh
source $DOTFILES/plugins.zsh

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# Added by user
neofetch