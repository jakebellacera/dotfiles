# jakebellacera's dotfiles

These are my dotfiles. Feel free to use anything you'd like! Just be warned,
I spend a majority of my development time in the terminal, so my dotfiles are
heavily focused around my specific workflow.

These dotfiles will work great for you if you meet all of the below requirements:

* You type in dvorak.
* You use OSX.
* You use the terminal primarily for development.
* You use vim for editing text files.
* You use git for version control.

## What's included

* vim configuration
* tmux configuration
* [Powerline][powerline] configuration
* bash configuration
* global gitignore

## Installation

Before you do anything, make sure you have these prerequisites installed:

* Developer tools.
    * If you're running OSX, install the [Command Line Tools for Xcode][xcode-cli] or [Xcode][xcode].
    * If you're running Ubuntu, run `apt-get install build-essential`.
* A package manager, such as [Homebrew][homebrew].
* Git
* Ruby (version `>= 1.9` is preferred, though `1.8` is fine).
* Python (version `2.7` or `3.3`)
* [Powerline][powerline]
* The following homebrew packages:
    * `brew install rbenv ruby-build nvm tmux reattach-to-user-namespace bash-git-prompt`
    * Optional, but recommended: `brew install vim git`

First, install homesick to sync this repo with your home folder:

    gem install homesick
    homesick clone jakebellacera/dotfiles
    homesick symlink dotfiles

Then, tell git to use the included global gitignore:

    git config --global core.excludesfile ~/.gitignore_global

Afterwards, run the following command to install all Vim bundles:

    vim +PluginInstall +qall

Then, install node.js with nvm:

    nvm install v0.10
    nvm alias default v0.10

Then, install ruby with rbenv:

    rbenv install 2.2
    rbenv global 2.2

Once everything else is installed, then run the following command in this folder:

    bash scripts/init

This will configure OSX to look and run the way I like it.

## Local configuration

The `.bash_profile` will automatically look for `~/.local_conf`. If it exists,
then it will load it into the bash configuration. This allows you to extend the
existing bash configuration set from the dotfiles. Do note that the local conf
is loaded _after_ the dotfiles.

[powerline]: https://github.com/Lokaltog/powerline
[homesick]: https://github.com/technicalpickles/homesick
[xcode]: http://itunes.apple.com/us/app/xcode/id497799835
[xcode-cli]: https://developer.apple.com/downloads
[homebrew]: http://brew.sh
