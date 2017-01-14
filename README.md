# Dotfiles
Dotfiles I use with my Mac OS Sierra

## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:
	
	git clone https://github.com/mihaliak/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    chmod +w install.sh
    ./install.sh

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