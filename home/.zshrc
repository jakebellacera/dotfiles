# GLOBAL .ZSHRC
# =============
# This is my attempt to keep my environment consistent between machines.

################################################################################
## Oh-My-ZSH
################################################################################

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Show dots when waiting for autocompletion
COMPLETION_WAITING_DOTS="true"

# Load oh-my-zsh plugins
plugins=(vi-mode)

# Command-completion (if applicable)
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

################################################################################
## CODE STUFF
################################################################################

# Set the editor to vim. See .vimrc for vim config
export EDITOR=vim
export VISUAL=vim

################################################################################
## Load System-specific config
################################################################################

if [[ "$(uname -s)" == Darwin ]]; then
  source $HOME/.osx_conf
else
  source $HOME/.linux_conf
fi

# Load hidden, local config -- if it exists
[[ -f $HOME/.local_conf ]] && source $HOME/.local_conf

################################################################################
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

