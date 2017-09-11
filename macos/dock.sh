#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/PhpStorm.app"
dockutil --no-restart --add "/Applications/Sublime Text.app"
dockutil --no-restart --add "/Applications/Sequel Pro.app"
dockutil --no-restart --add "/Applications/Fork.app"
dockutil --no-restart --add "/Applications/Postman.app"
dockutil --no-restart --add "/Applications/TeamViewer.app"
dockutil --no-restart --add "/Applications/FileZilla.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Skype.app"
dockutil --no-restart --add "/Applications/FaceTime.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/LastPass.app"
dockutil --no-restart --add "/Applications/Utilities/Activity Monitor.app"

killall Dock

echo "Success! Dock is set."
