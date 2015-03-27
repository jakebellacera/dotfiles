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

# Load general helper functions
source $HOME/.bash/.general-helpers.bash

# Load NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load hidden, local config -- if it exists
[[ -f $HOME/.local_conf ]] && source $HOME/.local_conf
