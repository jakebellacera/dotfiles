################################################################################
## BASE
################################################################################

# Set the shell output
export PS1="\e[1;36m\W \e[1;31m$\e[m "

# Set the editor to vim. See .vimrc for vim config
export EDITOR=vim
export VISUAL=vim

# Set the prompt
export PS1="\[\e[1;36m\]\W \[\e[1;31m\]\$\[\e[0m\] "

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

