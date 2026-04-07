# ~/.zshrc

# Load modules
source ~/dotfiles/zsh/aliases.zsh
source ~/dotfiles/zsh/exports.zsh
source ~/dotfiles/zsh/functions.zsh

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Added by user
neofetch