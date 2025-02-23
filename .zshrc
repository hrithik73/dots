# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion



export PATH=/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
alias java8='export JAVA_HOME=$JAVA_8_HOME'

export JAVA_21_HOME=$(/usr/libexec/java_home -v21)
alias java21='export JAVA_HOME=$JAVA_21_HOME'



# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Custom Paths
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-z web-search)

source $ZSH/oh-my-zsh.sh


alias c="clear"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias vim="nvim"
alias vi ="nvim"
# eval "$(starship init zsh)"source /Users/hritik-personal/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
# bun completions
[ -s "/Users/hritik-personal/.bun/_bun" ] && source "/Users/hritik-personal/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# flashlight
export PATH="/Users/hritik-personal/.flashlight/bin:$PATH"

# flashlight
export PATH="/Users/hritik-personal/.flashlight/bin:$PATH"
