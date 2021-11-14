export EDITOR=nvim 

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/bin
export PATH="$HOME/.local/bin:$PATH"


ZSH_THEME="spaceship"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel10k/powerlevel10k"
plugins+=( history history-substring-search httpie sudo vagrant postgres )
plugins+=( osx lein node npm jump gulp mosh )
plugins+=( z   zsh-autosuggestions )
plugins+=( zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh
## ALIAS
#ls alternative with exa
alias ls="exa"
alias llt="exa --tree --level=2"
alias la="exa -lbhHigUmuSa --time-style=long-iso --git --color-scale"
alias lx="exa -lbhHigUmuSa@ --git --color-scale"
##Checking Size
alias s="du -sh"
alias sd="du -h --max-depth=1"

alias wifi="nmtui"
alias c="clear"
alias ez="nvim $HOME/.zshrc"
alias ev="nvim ~/.vimrc"
alias ei3="v ~/.config/i3/config" 
alias v="nvim"
alias rss="alsactl restore"
alias open="xdg-open"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk
# Zinit
#zinit light simnalamburt/shellder
#eval "$(starship init zsh)"
