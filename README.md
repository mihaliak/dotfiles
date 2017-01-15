# Dotfiles
Dotfiles I use with MacOS Sierra mostly for Web Development.

![iTerm.app](https://raw.github.com/mihaliak/dotfiles/master/iterm/screenshot.png)

Contains:
  1. [System defaults](https://github.com/mihaliak/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/mihaliak/dotfiles/blob/master/macos/dock.sh) 
  2. [Git config with aliases](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitignore_global)
  3. [Global aliases](https://github.com/mihaliak/dotfiles/blob/master/dots/.aliases) 
  4. [Functions](https://github.com/mihaliak/dotfiles/blob/master/dots/.functions) for homestead, colored `man` page, `mk` for making folder and entering it
  5. Custom [/etc/hosts](https://github.com/mihaliak/dotfiles/blob/master/etc/hosts) file with blocked Ads, Trackers & 🔥 stuff on internet
  6. `Inconsolata` font used in iTerm, PhpStorm, Sublime
  7. iTerm profile, oh-my-zsh taybalt theme
  8. `ssh_list_aliases`, `ssh_new_alias`, `ssh_rm_alias` commands to manage ssh config hosts and creating / transfering pub key to server
  9. Packages / CLI (brew, brew cask, dockutil, htop, iftop, openssl, tig, composer, httpie, nmap, php70, git, subversion, node, python3, thefuck, wget, yarn, zsh, zsh-completions)
  10. Applications (alfred, flux, google-chrome, slack, spotify, sublime-text, virtualbox, vagrant, vlc, phpstorm, sequel-pro, filezilla, postman, iterm2, teamviewer, lastpass, spectacle, appcleaner, skype)

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