echo "Downloading laravel/homestead vagrant box, this may take some time..."

vagrant box add laravel/homestead

git clone https://github.com/laravel/homestead.git ~/Homestead

cd ~/Homestead

git checkout $HOMESTEAD_VERSION

bash init.sh

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Homestead installed and initialized with version "$HOMESTEAD_VERSION"