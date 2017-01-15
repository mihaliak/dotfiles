# Dotfiles
Dotfiles I use with MacOS Sierra mostly for Web Development.

![iTerm.app](https://raw.github.com/mihaliak/dotfiles/master/iterm/screenshot.png)

Contains:
  1. Packages / CLI
    - brew & brew cask
    - dockutil
    - htop
    - iftop
    - openssl
    - tig
    - composer
    - httpie
    - nmap
    - php70
    - git
    - subversion
    - node
    - python3
    - thefuck
    - wget
    - yarn
    - zsh
    - zsh-completions

  2. Applications
    - alfred
    - flux
    - google-chrome
    - slack
    - spotify
    - sublime-text
    - virtualbox
    - vagrant
    - vlc
    - phpstorm
    - sequel-pro
    - filezilla
    - postman
    - iterm2
    - teamviewer
    - lastpass
    - spectacle
    - appcleaner
    - skype

## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:
	
	  git clone https://github.com/mihaliak/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    chmod +w install.sh
    ./install.sh

## Additional steps

1. Install fonts
2. In iterm `Preferences > General > Load preferences from a custom folder or URL` and set it to `~/dotfiles/iterm`
3. Import PhpStorm settings
4. `sudo reboot`
5. Enjoy

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, yarn, composer)

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.