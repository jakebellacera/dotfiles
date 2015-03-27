################################################################################
## BASE
################################################################################

# Set the editor to vim. See .vimrc for vim config
export EDITOR=vim
export VISUAL=vim

# Set bash's input mode to Vi
set -o vi

# Set the prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Add git completion
if [ -f $HOME/.bash/.git-completion.bash ]; then
  . $HOME/.bash/.git-completion.bash
fi

################################################################################
## Load System-specific config
################################################################################
# Load general helper functions
source $HOME/.bash/.general-helpers.bash

if [[ "$(uname -s)" == Darwin ]]; then
  source $HOME/.osx_conf
else
  source $HOME/.linux_conf
fi

# Load hidden, local config -- if it exists
[[ -f $HOME/.local_conf ]] && source $HOME/.local_conf

