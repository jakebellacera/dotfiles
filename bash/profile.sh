# Set the editor to vim. See .vimrc for vim config
export EDITOR=vim
export VISUAL=vim

# Update path for homebrew
export PATH="/usr/local/sbin:$PATH"

# Set env to dotfiles folder if it does not exist
if [ -z ${DOTFILES_FOLDER+x} ]; then
  export DOTFILES_FOLDER=$HOME/.dotfiles
fi

# Set bash's input mode to Vi
set -o vi

# Set the prompt
if [ -x /usr/local/bin/brew ]; then
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Add git completion
if [ -f $DOTFILES_FOLDER/bash/git-completion.sh ]; then
  . $DOTFILES_FOLDER/bash/git-completion.sh
fi

# Load hidden, local config if it exists
[[ -f $HOME/.local_conf ]] && source $HOME/.local_conf
