#!/usr/bin/env bash
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "JF's Mini"
sudo scutil --set HostName "jf-mini"
sudo scutil --set LocalHostName "jf-mini"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "jf-mini"

# set keyrepeat for osx
defaults write -g ApplePressAndHoldEnabled -bool false
# defaults delete -g ApplePressAndHoldEnabled # reset if necessary

# Set screenshot folder
mkdir -p "$HOME/Pictures/Screenshots/"
defaults write com.apple.screencapture location ~/Pictures/Screenshots/
defaults write com.apple.screencapture type -string "png"

# Set Dropbox directory as the default location for new Finder windows
# More options here: https://github.com/mathiasbynens/dotfiles/blob/96edd4b57047f34ffbcbb708e1e4de3a2e469925/.macos#L233
#defaults write com.apple.finder NewWindowTarget -string "PfLo"
#defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Dropbox/"

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


# Use column view in all Finder windows by default
# Four-letter codes for all view modes: `icnv`, `clmv`, `Flwv`, `Nlsv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

