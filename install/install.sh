# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# Install brew & stuff
. "$DOTFILES_DIR/install/brew.sh"

echo "Select optional software to install:"

echo " [1] Valet"
echo " [2] Homestead"
read -r -p "Install:" softwareToInstall

softwareToInstall=${softwareToInstall:-3}

if [ "$softwareToInstall" -eq 1 ] ; then
	. "$DOTFILES_DIR/install/valet.sh"
else 
	if [ "$softwareToInstall" -eq 2 ] ; then
		read -p 'Homestead version to checkout (v5.1.0): ' HOMESTEAD_VERSION
		HOMESTEAD_VERSION=${HOMESTEAD_VERSION:-"v5.1.0"}

	    . "$DOTFILES_DIR/install/homestead.sh"
	fi
fi

# Make zsh default shell
sudo chsh -s $(which zsh)

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/dots/.hushlogin" ~
ln -sfv "$DOTFILES_DIR/dots/.exports" ~
ln -sfv "$DOTFILES_DIR/dots/.functions" ~
ln -sfv "$DOTFILES_DIR/dots/.extra" ~
ln -sfv "$DOTFILES_DIR/dots/.aliases" ~
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.inputrc" ~
ln -sfv "$DOTFILES_DIR/dots/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/editors/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
ln -sfv "$DOTFILES_DIR/editors/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -sfv "$DOTFILES_DIR/oh-my-zsh/themes/taybalt.zsh-theme" ~/.oh-my-zsh/themes/

# Setup macos defaults and add apps to dock
. "$DOTFILES_DIR/macos/defaults.sh"
. "$DOTFILES_DIR/macos/dock.sh"

# Clear cache
. "$DOTFILES_DIR/bin/dotfiles" clean

# Replace default hosts file
sudo cp "$DOTFILES_DIR/etc/hosts" /etc/hosts