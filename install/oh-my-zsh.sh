# Install oh my zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

# Make zsh default shell
sudo chsh -s $(which zsh)