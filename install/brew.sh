# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew tap homebrew/php
brew update
brew upgrade

# Install packages
brew install dockutil
brew install htop
brew install iftop
brew install openssl
brew install tig
brew install composer
brew install nmap
brew install php70
brew install php70-redis
brew install php70-mcrypt
brew install php70-yaml
brew install php70-mongodb
brew unlink php70
brew install php71
brew install php71-redis
brew install php71-mcrypt
brew install php71-yaml
brew install php71-mongodb
brew unlink php71
brew install php72
brew install php72-redis
brew install php72-yaml
brew install php72-mongodb
brew install git
brew install subversion
brew install python3
brew install thefuck
brew install wget
brew install zsh
brew install zsh-completions
brew install webkit2png
brew install sqlmap
brew install aircrack-ng
brew install unrar
brew install wifi-password
brew install mysql

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."

# Cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install cask packages

brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" phpstorm
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" iterm2

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook qlvideo

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."
