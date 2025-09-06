# Disable "press and hold" functionality
# See: https://apple.stackexchange.com/questions/332769/macos-disable-popup-showing-accented-characters-when-holding-down-a-key
defaults write -g ApplePressAndHoldEnabled -bool false

# Remind to log out to apply changes
echo "Make sure to log out and back in to apply macOS changes"