# Dotfiles - WIP
This dotfiles are WIP, use at your own risk.

## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Install dotfiles:

    cd ~/dotfiles && ./install.sh

Import PhpStorm settings in editor.

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, composer)

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.