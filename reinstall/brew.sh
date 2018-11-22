#!/usr/bin/env bash

# require xcode-select --install
# once completed will need to do 
# sudo chsh -s /usr/local/bin/fish username

brew update
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/services

#brew install openssl
brew install git
brew install fish
brew install autojump
brew install neovim
brew install rsync
brew install tree

brew install pandoc
brew install the_platinum_searcher

brew install node
brew install yarn
brew install postgresql
brew install sqlite
brew install go
brew install hugo
brew install doctl

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

brew services start postgresql
