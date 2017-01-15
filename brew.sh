# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages
brew install dockutil
brew install htop
brew install iftop
brew install openssl
brew install tig
brew install composer
brew install httpie
brew install nmap
brew install php70
brew install git
brew install subversion
brew install node
brew install python3
brew install thefuck
brew install wget
brew install yarn
brew install zsh
brew install zsh-completions

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
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" phpstorm
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" lastpass
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" skype

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Applications are installed."