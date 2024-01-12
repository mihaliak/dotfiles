# Dotfiles
Dotfiles I use with MacBook Pro mostly for Software Development and DevSecOps.

Contains:
  1. [System defaults](https://github.com/mihaliak/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/mihaliak/dotfiles/blob/master/macos/dock.sh) 
  2. [Git config with aliases](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitignore_global)
  3. [Global aliases](https://github.com/mihaliak/dotfiles/blob/master/dots/.aliases) 
  4. [Functions](https://github.com/mihaliak/dotfiles/blob/master/dots/.functions), colored `man` page, `mk` for making folder and entering it, `extract` to extract any compressed file, `e` to read .env file variables in `pwd`
  5. Custom [/etc/hosts](https://github.com/mihaliak/dotfiles/blob/master/etc/hosts) file with blocked Ads, Trackers & 🔥 stuff on internet
  6. `Source Code Pro` font used in Sublime and Hyper
  7. Hyper config, oh-my-zsh taybalt theme
  8. Packages / CLI (brew, brew cask, dockutil, htop, iftop, openssl, tig, composer, nmap, git, subversion, nvm - node version manager, python3, thefuck, wget, yarn, zsh, zsh-completions, sqlmap, aircrack-ng)
  9. Applications (raycast, google-chrome, slack, spotify, sublime-text, vlc, jetbrains-toolbox, sequel-pro, filezilla, postman, hyper, teamviewer, spectacle, appcleaner, skype, lens, tinkerwell, orbstack, 1password, rocket-chat, whatsapp)
  10. [Valet for web development](https://github.com/laravel/valet)
  11. `dotfiles` binary to manage dotfiles functions with autocomplete
## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:
	
    git clone https://github.com/mihaliak/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    git checkout v3.13
    cd ~/dotfiles/install
    chmod +wx install.sh
    chmod -R +wx ~/dotfiles/bin
    ./install.sh

## Additional steps

1. Install fonts
2. Install [Laravel Herd](https://herd.laravel.com/)
3. `sudo reboot`
4. Enjoy

## The `dotfiles` command

    $ dotfiles
    ￫ Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, yarn, composer)
       symlinks         Run symlinks script
       brew             Run brew script
       node             Run node setup script
       ohmyzsh          Run oh my zsh script
       hosts            Run hosts script
       defaults         Run MacOS defaults script
       dock             Run MacOS dock script

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
