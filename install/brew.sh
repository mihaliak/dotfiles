# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap shivammathur/php
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
brew install shivammathur/php/php@7.4
brew install shivammathur/php/php@8.0
brew install shivammathur/php/php@8.1
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
brew install potrace
brew install imagick
brew install autoconf
brew install pkg-config
pecl install imagick
brew install azure-cli
brew install helm
helm repo add stable https://charts.helm.sh/stable
brew install docker
brew install gnupg2
brew install pinentry-mac

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."

# setup GPG for GIT
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent

# Cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install cask packages

brew install --cask --appdir="/Applications" alfred
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" slack
brew install --cask --appdir="/Applications" spotify
brew install --cask --appdir="/Applications" sublime-text
brew install --cask --appdir="/Applications" phpstorm
brew install --cask --appdir="/Applications" tableplus
brew install --cask --appdir="/Applications" postman
brew install --cask --appdir="/Applications" forklift
brew install --cask --appdir="/Applications" spectacle
brew install --cask --appdir="/Applications" appcleaner
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" the-unarchiver
brew install --cask --appdir="/Applications" hyper
brew install --cask --appdir="/Applications" apple-juice
brew install --cask --appdir="/Applications" sourcetree
brew install --cask --appdir="/Applications" hiddenbar
brew install --cask --appdir="/Applications" docker

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook qlvideo

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."
