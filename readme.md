# jakebellacera's dotfiles

These are my dotfiles. Feel free to use anything you'd like!

## Installation

Install [homesick](https://github.com/technicalpickles/homesick).

    gem install homesick

Then, add this repo.

    homesick clone jakebellacera/dotfiles
    homesick symlink dotfiles

But wait, there's more! You need to tell git to use `.gitignore_global`.

    git config --global core.excludesfile ~/.gitignore_global

### ~/.local_conf

My `.zshrc` will automatically look for `~/.local_conf`. If it exists, then it will load it into the ZSH configuration. This gets around the few instances where I'd need to have some configuration specific to a machine.

