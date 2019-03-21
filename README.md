# jakebellacera's dotfiles

These are my dotfiles.

## What's included

* My custom configuration of various settings in macOS
* My custom bash configuration.
* The latest version of vim, set to the default `EDITOR`, with my custom configuration, bundles, etc.
* The latest version of git with my `.gitignore_global` set.

## Installation

1. Clone this repo to `~/.dotfiles`.
2. Run `~/.dotfiles/script/install`.
3. Open a new terminal tab.

### Install options

* Use the `--skip-macos` flag to skip the macos/init.sh script
* Use the `--skip-homebrew` flag to skip installing homebrew & dependencies

## Uninstallation

1. Run `~/.dotfiles/script/uninstall`.
  * Note that this will not uninstall `brew`. Please [uninstall it manually][homebrew-uninstall].
2. Remove the `~/.dotfiles` folder.

[homebrew-uninstall]: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/FAQ.md#how-do-i-uninstall-homebrew
