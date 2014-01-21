################################################################################
## BASE
################################################################################

# Set the editor to vim. See .vimrc for vim config
export EDITOR=vim
export VISUAL=vim

# Set bash's input mode to Vi
set -o vi

# Set the prompt
source $HOME/.bash_gitprompt

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

