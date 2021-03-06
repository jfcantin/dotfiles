#!/usr/bin/env bash

# require xcode-select --install
# once completed will need to do 

brew update
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers
brew tap homebrew/services

# Casks installation
brew cask install google-chrome
brew cask install iterm2
brew cask install spectacle

brew cask install dropbox
brew cask install onedrive
brew cask install google-backup-and-sync

brew cask install slack
brew cask install visual-studio-code
brew cask install font-fira-code
brew cask install docker
#brew cask install postman
brew cask install virtualbox-beta
brew cask install virtualbox-extension-pack-beta

brew cask install r-app
brew cask install rstudio-preview
brew cask install basictex

brew cask install zotero
brew cask install superduper
brew cask install garmin-express

brew services start postgresql
