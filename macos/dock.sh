#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/ForkLift.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Tinkerwell.app"
dockutil --no-restart --add "/Applications/Hyper.app"
dockutil --no-restart --add "/Applications/Sublime Text.app"
dockutil --no-restart --add "/Applications/TablePlus.app"
dockutil --no-restart --add "/Applications/Postman.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/Lens.app"
dockutil --no-restart --add "/Applications/Skype.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/WhatsApp.app"
dockutil --no-restart --add "/Applications/FaceTime.app"
dockutil --no-restart --add "/Applications/Rocket.Chat.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Telegram.app"

killall Dock

echo "Success! Dock is set."
