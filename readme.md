# jakebellacera's dotfiles

These are my dotfiles. Feel free to use anything you'd like!

## Installation

Install [homesick][homesick].

    gem install homesick

Then, add this repo.

    homesick clone jakebellacera/dotfiles
    homesick symlink dotfiles

But wait, there's more! You need to tell git to use `.gitignore_global`.

    git config --global core.excludesfile ~/.gitignore_global

### ~/.local_conf

My `.zshrc` will automatically look for `~/.local_conf`. If it exists, then it will load it into the ZSH configuration. This gets around the few instances where I'd need to have some configuration specific to a machine.

## Assumptions

What dotfiles repo wouldn't be complete without some assumptions? Here's a few:

* git
* ruby (for homesick) (bash version [here][homeshick])
* [oh-my-zsh][oh-my-zsh]

### OSX

* [Command Line Tools for Xcode][xcode-cli] or [Xcode][xcode]
* [brew][homebrew]

[homesick]: https://github.com/technicalpickles/homesick
[homeshick]: https://github.com/andsens/homeshick
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[xcode]: http://itunes.apple.com/us/app/xcode/id497799835
[xcode-cli]: https://developer.apple.com/downloads
[homebrew]: http://brew.sh
