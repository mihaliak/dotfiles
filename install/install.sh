export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# Install brew with packages & casks
. "$DOTFILES_DIR/install/brew.sh"

# Install composer global packages
. "$DOTFILES_DIR/install/composer.sh"

# Install nvm, node, npm, yarn
. "$DOTFILES_DIR/install/node_setup.sh"

# Install npm global packages
. "$DOTFILES_DIR/install/yarn.sh"

# Install valet
. "$DOTFILES_DIR/install/valet.sh"

# Install oh my zsh
. "$DOTFILES_DIR/install/oh-my-zsh.sh"

# Bunch of symlinks
. "$DOTFILES_DIR/install/symlinks.sh"

# Setup macos defaults
. "$DOTFILES_DIR/macos/defaults.sh"

# Setup dock icons
. "$DOTFILES_DIR/macos/dock.sh"

# Clear cache
. "$DOTFILES_DIR/bin/dotfiles" clean

# Replace default hosts file
. "$DOTFILES_DIR/install/hosts.sh"

# Add keys from keychain to ssh agent
ssh-add -A 2>/dev/null;
