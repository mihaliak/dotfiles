# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
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
brew install php@7.0
brew install php@7.1
brew install php@7.2
brew install brew-php-switcher
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

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."
echo "Use pecl install <package> to install additional PHP extensions. Example: pecl install imagick"

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
brew install --cask --appdir="/Applications" sequel-pro
brew install --cask --appdir="/Applications" filezilla
brew install --cask --appdir="/Applications" postman
brew install --cask --appdir="/Applications" teamviewer
brew install --cask --appdir="/Applications" spectacle
brew install --cask --appdir="/Applications" appcleaner
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" the-unarchiver
brew install --cask --appdir="/Applications" iterm2
brew install --cask --appdir="/Applications" apple-juice

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook qlvideo

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."
