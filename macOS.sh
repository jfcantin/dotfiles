#!/usr/bin/env zsh

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

# Set scroll as traditional instead of natural
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# killall Finder

# set keyrepeat for osx
# defaults write -g ApplePressAndHoldEnabled -bool false
# defaults delete -g ApplePressAndHoldEnabled # reset if necessary

# Set screenshot folder
mkdir -p "${HOME}/Pictures/Screenshots/"
defaults write com.apple.screencapture location ${HOME}/Pictures/Screenshots/
defaults write com.apple.screencapture type -string "png"
killall SystemUIServer

# Add Bluetooth to Menu Bar for battery percentages
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
killall ControlCenter

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
# Four-letter codes for all view modes: `icnv`, `clmv`, `Flwv`, `Nlsv`
# defaults write com.apple.finder FXPreferredViewStyle -string "clmv"