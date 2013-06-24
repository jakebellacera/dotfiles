################################################################################
## BASE
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

