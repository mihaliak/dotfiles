composer global require laravel/valet

valet install

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Valet installed trying if it works..."

ping foobar.dev -c 1

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "If ping is responding to 127.0.0.1 it works!"