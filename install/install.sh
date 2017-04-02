# Install brew with packages & casks, composer and yarn global packages
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/composer.sh"
. "$DOTFILES_DIR/install/yarn.sh"

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

# Install oh my zsh
. "$DOTFILES_DIR/install/oh-my-zsh.sh"

# Bunch of symlinks
. "$DOTFILES_DIR/install/symlinks.sh"

# Setup macos defaults and add apps to dock
. "$DOTFILES_DIR/macos/defaults.sh"
. "$DOTFILES_DIR/macos/dock.sh"

# Clear cache
. "$DOTFILES_DIR/bin/dotfiles" clean

# Replace default hosts file
. "$DOTFILES_DIR/install/hosts.sh"

# Add keys from keychain to ssh agent
ssh-add -A 2>/dev/null;
