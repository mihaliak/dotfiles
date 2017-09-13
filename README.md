# Dotfiles
Dotfiles I use with MacOS Sierra mostly for Web Development.

![iTerm2.app](https://raw.github.com/mihaliak/dotfiles/master/screenshot.png)

Contains:
  1. [System defaults](https://github.com/mihaliak/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/mihaliak/dotfiles/blob/master/macos/dock.sh) 
  2. [Git config with aliases](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitignore_global)
  3. [Global aliases](https://github.com/mihaliak/dotfiles/blob/master/dots/.aliases) 
  4. [Functions](https://github.com/mihaliak/dotfiles/blob/master/dots/.functions) for homestead, colored `man` page, `mk` for making folder and entering it, `extract` to extract any compressed file, `e` to read .env file variables in `pwd`
  5. Custom [/etc/hosts](https://github.com/mihaliak/dotfiles/blob/master/etc/hosts) file with blocked Ads, Trackers & 🔥 stuff on internet
  6. `Inconsolata` font used in PhpStorm, Sublime, `Fira Code` used in iTerm2
  7. iTerm2 profile, oh-my-zsh taybalt theme
  8. `ssh-manager` command to manage ssh config hosts and keys, including copy public keys to clipboard, transfer to server and more with autocomplete
  9. Packages / CLI (brew, brew cask, dockutil, htop, iftop, openssl, tig, composer, httpie, nmap, php71, git, subversion, node, python3, thefuck, wget, yarn, zsh, zsh-completions)
  10. Applications (alfred, google-chrome, slack, spotify, sublime-text, vlc, phpstorm, sequel-pro, filezilla, postman, iterm2, teamviewer, lastpass, spectacle, appcleaner, skype)
  11. Homestead or Valet (installation script will ask you, leave empty for nothing, if homestead is selected virtualbox and vagrant will be installed via brew, if valet mysql will be installed)
  12. `dotfiles` binary to manage dotfiles functions with autocomplete
## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Clone and install dotfiles:
	
    git clone https://github.com/mihaliak/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    git checkout v3.5
    cd ~/dotfiles/install
    chmod +wx install.sh
    chmod -R +wx ~/dotfiles/bin
    ./install.sh

## Additional steps

1. Install fonts
2. In iterm `Preferences > General > Load preferences from a custom folder or URL` and set it to `~/dotfiles/iterm`
3. Import PhpStorm settings
4. `sudo reboot`
5. Enjoy

## The `dotfiles` command

    $ dotfiles
    ￫ Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, yarn, composer)
       symlinks         Run symlinks script
       brew             Run brew script
       homestead        Run homestead script
       valet            Run valet script
       ohmyzsh          Run oh my zsh script
       hosts            Run hosts script
       defaults         Run MacOS defaults script
       dock             Run MacOS dock script

## The `ssh-manager` command

    $ ssh-manager
    ￫ Usage: ssh-manager <command>

    Commands:
       help             This help message
       list             List of all SSH keys and hosts in SSH config
       list-keys        List of all SSH keys
       copy             Copy public SSH key
       new              Generate new SSH key
       host             Add host to SSH config, use --key to generate new key
       remove           Remove host from SSH config
       list-host        List of all hosts in SSH config

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
