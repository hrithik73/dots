if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting ""
set -gx TERM xterm-256color

# theme
# set -g theme_color_scheme terminal-dark
# set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname no
# set -g theme_hostname always

# aliases
alias v nvim
alias g git


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

#starship init fish | source

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    # Do nothing
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
