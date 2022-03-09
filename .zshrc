
# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Custom Paths
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

plugins=(git zsh-autosuggestions fast-syntax-highlighting zsh-z web-search)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias vim="nvim"
alias vi ="nvim"
eval "$(starship init zsh)"

