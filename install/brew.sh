# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"

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
brew install shivammathur/php/php@8.1
brew install shivammathur/php/php@8.2
brew install shivammathur/php/php@8.3
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
brew install gnupg2
brew install pinentry-mac
brew install gh

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."

# setup GPG for GIT
mkdir ~/.gnupg
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent

# Cask
brew tap homebrew/cask

# Install cask packages

brew install --cask --appdir="/Applications" raycast
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" slack
brew install --cask --appdir="/Applications" spotify
brew install --cask --appdir="/Applications" sublime-text
brew install --cask --appdir="/Applications" tableplus
brew install --cask --appdir="/Applications" postman
brew install --cask --appdir="/Applications" forklift
brew install --cask --appdir="/Applications" spectacle
brew install --cask --appdir="/Applications" appcleaner
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" the-unarchiver
brew install --cask --appdir="/Applications" hyper
brew install --cask --appdir="/Applications" hiddenbar
brew install --cask --appdir="/Applications" lens
brew install --cask --appdir="/Applications" tinkerwell
brew install --cask --appdir="/Applications" orbstack
brew install --cask --appdir="/Applications" 1password
brew install --cask --appdir="/Applications" rocket-chat
brew install --cask --appdir="/Applications" whatsapp
brew install --cask --appdir="/Applications" monitorcontrol
brew install --cask --appdir="/Applications" jetbrains-toolbox
brew install --cask --appdir="/Applications" telegram
brew install --cask --appdir="/Applications" appcleaner
brew install --cask --appdir="/Applications" iina

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook qlvideo

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."
