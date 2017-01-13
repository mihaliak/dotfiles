# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  htop
  iftop
  openssl
  tig
  composer
  httpie
  nmap
  php70
  youtube-dl
  git
  subversion
  node
  python3
  thefuck
  wget
  yarn
  zsh
  zsh-completions
  dark-mode
)

brew install "${apps[@]}"


# Cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install cask packages

casks=(
  alfred
  firefox
  flux
  google-chrome
  opera
  slack
  spotify
  sublime-text3
  virtualbox
  vagrant
  vlc
  phpstorm
  sequel-pro
  filezilla
  postman
  iterm2
  teamviewer
  lastpass
  spectacle
  appcleaner
  skype
)

brew cask install "${casks[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
